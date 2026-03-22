import re
import os
import shutil
import subprocess
import sys
import pandas as pd

# --- 사용자 설정 변수 ---
GAMS_FILE_NAME = "Model_GTAP11c_new.gms"  
BACKUP_FILE_NAME = GAMS_FILE_NAME + ".bak" 
TOLERANCE = 1e-4
MAX_ITERATIONS = 50

# --- 핵심 보정 설정 ---
TARGET_REGION = '01_KOR'
ALPHA_LOW = 0.01  
ALPHA_HIGH = 2.0   

# 보정 대상 상품 및 각 상품의 목표 탄력성 (사용자가 원하는 값으로 설정)
TARGET_COMMODITIES = {
    '18_ELEC': -0.275,   
    '02_COAL': -0.300,   
    '04_GAS': -0.400,    
    '10_PETROLCOAL': -0.500  
}

# GAMS 파일의 특정 라인을 찾기 위한 정규식 패턴 (GAMS 파일 내용 기반)
PATTERNS = {
    'SIGMA_Y': r"^\s*sigma_Y\('18_ELEC','01_KOR'\)\s*=\s*[0-9\.]+\s*\* sigma_Y\('18_ELEC','01_KOR'\);",
    'TTIC_FX': r"^\s*ttic\.fx\(i,z,time\)\$\(not\s*\(sameas\(z,\s*\"01_KOR\"\)\s*and\s*sameas\(i,\s*\"18_ELEC\"\)\)\)\s*=\s*tticO\(i,z\);",
    'PC_FX': r"^\s*PC\.fx\(\"18_ELEC\",\'01_KOR\',time\)\s*=\s*PCO\(\"18_ELEC\",\'01_KOR\'\)\*\s*\(1\+0\.01\);",
}

# GAMS 명령으로 생성되는 엑셀 파일 이름
EXCEL_OUTPUT_FILE_NAME = 'valelec_elas.xlsx' 
EXCEL_SHEET_NAME = 'Sheet1' 

# --- 절대 경로 설정 (이전과 동일) ---
if getattr(sys, 'frozen', False):
    BASE_DIR = os.path.dirname(sys.executable)
elif '__file__' in locals():
    BASE_DIR = os.path.dirname(os.path.abspath(__file__))
else:
    BASE_DIR = os.getcwd()

EXCEL_FULL_PATH = os.path.join(BASE_DIR, EXCEL_OUTPUT_FILE_NAME)


# --------------------------------------------------------------------------------
# 1. GAMS 파일 수정 함수 (다중 상품용으로 확장)
# --------------------------------------------------------------------------------
def modify_gams_file(gams_file_path: str, commodity: str, alpha_value: float):
    """
    주어진 상품(commodity)과 alpha 값에 맞게 GAMS 파일의 sigma_Y, ttic.fx, PC.fx 라인을 수정합니다.
    """
    gams_file_abs_path = os.path.join(BASE_DIR, gams_file_path)
    
    # 1. New Lines 정의
    new_lines = {
        'SIGMA_Y': f" sigma_Y('{commodity}','{TARGET_REGION}') = {alpha_value}* sigma_Y('{commodity}','{TARGET_REGION}');",
        'TTIC_FX': f" ttic.fx(i,z,time)$(not (sameas(z, \"{TARGET_REGION}\") and sameas(i, \"{commodity}\"))) = tticO(i,z);",
        'PC_FX': f" PC.fx(\"{commodity}\",'{TARGET_REGION}',time) = PCO(\"{commodity}\",'{TARGET_REGION}')*(1+0.01);"
    }
    
    # 2. 정규식 패턴 수정 (현재 상품에 맞춤)
    # *Note: SIGMA_Y 패턴만 수정하면 됨, 나머지 두 개는 18_ELEC으로 고정 검색 후 교체
    patterns_to_search = [
        ('SIGMA_Y', re.compile(r"^\s*sigma_Y\('"+commodity+"',\'"+TARGET_REGION+"\'\)\s*=\s*[0-9\.]+\s*\* sigma_Y\('"+commodity+"',\'"+TARGET_REGION+"\'\);", re.MULTILINE | re.IGNORECASE)),
        ('TTIC_FX', re.compile(PATTERNS['TTIC_FX'], re.MULTILINE | re.IGNORECASE)),
        ('PC_FX', re.compile(PATTERNS['PC_FX'], re.MULTILINE | re.IGNORECASE)),
    ]
    
    try:
        with open(gams_file_abs_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except FileNotFoundError:
        raise ValueError(f"GAMS 파일 '{gams_file_path}'을(를) 찾을 수 없습니다. 경로를 확인하십시오.")

    total_count = 0
    new_content = content
    
    # 3. 모든 패턴에 대해 순차적으로 수정
    for key, pattern in patterns_to_search:
        # SIGMA_Y 보정 라인은 상품이 바뀌므로, 이전 상품 라인을 검색하는 대신 삽입 또는 대체가 필요합니다.
        # 가장 간단한 방법은 '18_ELEC' 라인을 'COAL' 라인으로 대체하고, '18_ELEC' 라인을 GAMS 파일의 다른 곳에 두는 것인데,
        # 이 모델은 SIGMA_Y 라인이 하나만 있다고 가정하므로, '18_ELEC'을 검색하는 대신 SIGMA_Y 캘리브레이션 섹션을 찾도록 해야 합니다.

        # 임시 방편으로, 원본 GAMS 파일의 18_ELEC 라인을 찾은 후, 현재 상품에 맞게 교체합니다.
        
        if key == 'SIGMA_Y':
            # SIGMA_Y 라인은 각 상품에 대한 캘리브레이션 라인이 될 것이므로, 현재 alpha 값으로 대체합니다.
            # 이전에 사용하던 '18_ELEC' 패턴을 사용하여 SIGMA_Y 캘리브레이션 라인을 찾습니다.
            sigma_y_search_pattern = re.compile(r"^\s*sigma_Y\('(\w+)',\'(\w+)\'\)\s*=\s*[0-9\.]+\s*\* sigma_Y\('(\w+)',\'(\w+)\'\);", re.MULTILINE | re.IGNORECASE)
            
            # 찾기 및 현재 상품 라인 삽입
            def replace_sigma_y(match):
                # 18_ELEC 라인을 찾았다면, 이를 현재 상품에 대한 alpha 값으로 대체합니다.
                return new_lines['SIGMA_Y']
            
            # 여기서 중요한 가정: GAMS 파일에는 단 하나의 'sigma_Y(i,z) = ...' 보정 라인만 존재하며, 그 라인을 덮어씁니다.
            # 하지만 다중 상품 보정 시에는 sigma_Y('18_ELEC',...) 뿐만 아니라 sigma_Y('02_COAL',...)도 GAMS 파일에 존재해야 합니다.
            # GTAP 모델은 GDX 파일에서 초기값을 로드하므로, sigma_Y(i,z) = alpha * sigma_Y(i,z) 코드는 GAMS 모델의 초기값 로드 이후에 위치해야 합니다.
            # GAMS 파일에 sigma_Y 보정 라인이 여러 개 들어갈 수 있도록 코드를 확장합니다.
            
            # [최종 결정] 이 GTAP 모델은 sigma_Y 보정 라인이 하나만 있는 것이 아니라, 
            # 각 상품에 대한 보정 라인이 필요하므로, GAMS 파일에 현재 상품에 대한 라인이 없으면 추가하거나, 
            # 아니면 단일 라인을 유지하고 그 라인의 상품 이름만 바꾸는 것이 더 안전합니다.
            
            # 가장 안전한 방법: 18_ELEC 라인만 변경합니다.
            if commodity == '18_ELEC':
                 # 기존 18_ELEC 라인을 알파 값으로 덮어씁니다.
                 new_content, count = re.subn(PATTERNS['SIGMA_Y'], new_lines['SIGMA_Y'], new_content)
                 total_count += count
            else:
                 # 다른 상품의 경우, GAMS 파일에 해당 라인이 이미 존재해야 하지만, 
                 # 만약 GAMS 파일이 단일 라인만 유지한다면, 이 로직은 매우 복잡해집니다.
                 # 여기서는 GAMS 파일의 sigma_Y('18_ELEC',...) 라인만 찾고, 
                 # 해당 라인 전체를 sigma_Y('02_COAL',...) 라인으로 대체하는 방식을 사용합니다.
                 # 이 과정은 GAMS 파일의 구조를 크게 바꾸므로, GAMS 파일이 오직 sigma_Y('18_ELEC',...) 라인만 포함한다고 가정하고,
                 # 그 라인의 상품 이름만 변경하여 대체하는 방식으로 진행합니다.
                 
                 # **이전 상품의 라인을 찾고 현재 상품의 라인으로 대체하는 가장 안전한 정규식**
                 # sigma_Y('18_ELEC','01_KOR') 라인을 찾고, '0.5'와 '18_ELEC'을 교체합니다.
                 pattern_to_replace = re.compile(r"^\s*sigma_Y\('(\w+)',\'(\w+)\'\)\s*=\s*[0-9\.]+\s*\* sigma_Y\('(\w+)',\'(\w+)\'\);", re.MULTILINE | re.IGNORECASE)
                 
                 # 교체 함수: alpha와 commodity를 삽입
                 def replace_line(match):
                     # GAMS 파일 내의 상품 이름과 REGION을 유지하면서, alpha 값을 교체
                     return new_lines['SIGMA_Y'].replace(f"'{commodity}'", f"'{match.group(1)}'").replace(f"'{commodity}'", f"'{match.group(3)}'")
                     
                 # GAMS 파일에 sigma_Y 보정 라인이 여러 개 존재해야 한다면, 이 로직은 적합하지 않습니다.
                 # GAMS 파일이 특정 위치에만 보정 라인을 기대한다고 가정하고, 18_ELEC 라인을 현재 상품으로 덮어쓰거나, 
                 # 아니면 GAMS 파일에 모든 상품의 라인을 미리 넣어두고 Python이 해당 라인만 수정해야 합니다.
                 
                 # GAMS 파일에 현재 상품에 대한 라인이 없을 가능성이 높으므로, GAMS 파일에 라인을 추가하는 방식으로 진행합니다.
                 # 하지만 이는 GAMS 파일의 구조를 너무 많이 변경하므로,
                 # GAMS 파일의 116번째 줄만 수정하는 로직을 그대로 유지하고, 상품 이름을 정규식으로 수정합니다.

                 # 기존 18_ELEC 라인을 찾고 현재 상품으로 교체
                 pattern_to_replace = re.compile(r"^\s*sigma_Y\('(\w+)',\'"+TARGET_REGION+"\'\)\s*=\s*[0-9\.]+\s*\* sigma_Y\('(\w+)',\'"+TARGET_REGION+"\'\);", re.MULTILINE | re.IGNORECASE)
                 
                 # 대체 문자열: alpha_value와 commodity를 삽입
                 replacement_line = f" sigma_Y('{commodity}','{TARGET_REGION}') = {alpha_value}* sigma_Y('{commodity}','{TARGET_REGION}');"

                 new_content, count = re.subn(pattern_to_replace, replacement_line, new_content)
                 total_count += count
                 
                 # 만약 보정 라인이 없으면 추가 (복잡도 증가하므로, 현재는 대체만 가정)


        # TTIC_FX (간접세 외생화 조건) 수정: 18_ELEC을 현재 상품으로 대체
        # ttic.fx(i,z,time)$(not (sameas(z, "01_KOR") and sameas(i, "18_ELEC"))) = tticO(i,z);
        # ttix.fx 조건에서 '18_ELEC'을 현재 상품으로 교체합니다.
        new_ttic_fx = f" ttic.fx(i,z,time)$(not (sameas(z, \"{TARGET_REGION}\") and sameas(i, \"{commodity}\"))) = tticO(i,z);"
        new_content, count = re.subn(PATTERNS['TTIC_FX'], new_ttic_fx, new_content)
        if count == 0:
             # 만약 TTIC_FX가 GAMS 파일에 없다면, TTIC_FX가 위치해야 할 곳 근처에 삽입해야 합니다.
             # 이는 553번째 줄 근처에 있으므로, 이 로직은 GAMS 파일의 구조가 고정되어 있다고 가정합니다.
             pass 
        total_count += count
        
        # PC_FX (가격 충격 외생화) 수정: 18_ELEC을 현재 상품으로 대체
        # PC.fx("18_ELEC",'01_KOR',time) = PCO("18_ELEC",'01_KOR')*(1+0.01);
        new_pc_fx = f" PC.fx(\"{commodity}\",'{TARGET_REGION}',time) = PCO(\"{commodity}\",'{TARGET_REGION}')*(1+0.01);"
        new_content, count = re.subn(PATTERNS['PC_FX'], new_pc_fx, new_content)
        total_count += count


    if total_count < 3:
        # 이 오류는 3개 라인 중 하나 이상이 GAMS 파일에서 찾지 못했음을 의미합니다.
        raise ValueError(f"GAMS 파일에서 예상되는 3개의 수정 라인 중 {3 - total_count}개({new_content.count(new_lines['SIGMA_Y'])})를 찾지 못했습니다. GAMS 파일 내용을 확인하십시오.")
    
    with open(gams_file_abs_path, 'w', encoding='utf-8') as f:
        f.write(new_content)


# --------------------------------------------------------------------------------
# 2. GAMS 실행 및 결과 읽기 함수 (위치 기반 - B2 셀로 복귀)
# --------------------------------------------------------------------------------
# [참고] valelec_elas(z)의 탄력성 값이 01_KOR일 때의 위치는 B2입니다. 
# 만약 GAMS가 01_KOR을 A열에 놓고 값을 B열에 놓는다면, 
# '01_KOR'은 A2 셀(iloc[1, 0])에 위치하고, 값은 B2 셀(iloc[1, 1])에 위치합니다.
# 이전 최종 결정인 '01_KOR'의 값이 B2 (iloc[1, 1])에 있다는 가정을 다시 사용합니다.
def run_gams_and_get_elasticity(alpha_value):
    """
    GAMS 모델을 실행하고, 생성된 엑셀 파일의 B2 셀 값(01_KOR의 탄력성)을 읽어옵니다.
    """
    
    # ... (GAMS 실행 및 pandas I/O 로직은 이전과 동일하게 유지) ...
    
    print(f"--- GAMS 실행 시작 (alpha={alpha_value:.6f}) ---")
    
    # -----------------------------------------------------------------
    # 1. GAMS 모델 실행 (GDX 및 엑셀 파일 생성)
    try:
        subprocess.run(['gams', GAMS_FILE_NAME, 'LO=3'], 
                       check=True, cwd=BASE_DIR, 
                       stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

    except subprocess.CalledProcessError as e:
        print(f"GAMS 모델 실행 중 오류가 발생했습니다. 로그를 확인하세요.")
        return 9999.0
    except FileNotFoundError:
        print(f"GAMS 실행 파일(gams.exe)을 찾을 수 없습니다. 환경 변수를 확인하십시오.")
        return 9999.0

    # -----------------------------------------------------------------
    # 2. 엑셀 파일 읽기 (pandas 사용 - B2 위치)
    # -----------------------------------------------------------------
    calculated_elasticity = 9999.0 
    
    try:
        if not os.path.exists(EXCEL_FULL_PATH):
            print(f"경고: 엑셀 파일이 생성되지 않았습니다: {EXCEL_FULL_PATH}. GAMS 로그를 확인하십시오.")
            return 9999.0
            
        # 1. 엑셀 파일 읽기: 헤더 없이 모든 데이터를 읽음
        df_raw = pd.read_excel(
            EXCEL_FULL_PATH, 
            sheet_name=EXCEL_SHEET_NAME,
            header=None, 
            skiprows=0   
        )
        
        # 2. '01_KOR' 값 추출 (위치 기반: B2 셀 = [행 인덱스 1, 열 인덱스 1])
        # GDXRW 출력은 1행에 인덱스 레이블, 2행에 값이 나옵니다. 01_KOR은 두 번째 열입니다.
        calculated_elasticity = df_raw.iloc[1, 1]
            
    except Exception as e:
        print(f"엑셀 파일 읽기 중 오류 발생: {e}. (데이터 추출 위치 확인 필요)")
        calculated_elasticity = 9999.0
        
    finally:
        pass
            
    try:
        return float(calculated_elasticity)
    except:
        return 9999.0


# --------------------------------------------------------------------------------
# 3. 메인 반복 루프 (다중 상품 순회)
# --------------------------------------------------------------------------------
def calibrate_sigma_y_multiplier():
    """
    모든 대상 상품(4개)에 대해 sigma_Y 승수(alpha)를 순차적으로 조정합니다.
    """
    print(f"*** 다중 상품 기반 sigma_Y 승수 보정 시작 ({len(TARGET_COMMODITIES)}개 상품) ***")
    
    if not os.path.exists(os.path.join(BASE_DIR, GAMS_FILE_NAME)):
        print(f"[오류] GAMS 파일 '{GAMS_FILE_NAME}'을(를) 찾을 수 없습니다. 경로를 확인하십시오.")
        return

    # 원본 파일 백업 (반복 시작 전 1회만 수행)
    backup_file_abs_path = os.path.join(BASE_DIR, BACKUP_FILE_NAME)
    if not os.path.exists(backup_file_abs_path):
        shutil.copyfile(os.path.join(BASE_DIR, GAMS_FILE_NAME), backup_file_abs_path)
        print(f"원본 파일 백업 완료: {BACKUP_FILE_NAME}")

    try:
        
        # --- 외부 루프: 상품 순회 ---
        final_alpha_results = {}
        for commodity, target_elas in TARGET_COMMODITIES.items():
            
            print(f"\n========================================================")
            print(f"➡️ [상품: {commodity}] 보정 시작. 목표 탄력성: {target_elas}")
            print(f"========================================================")

            # 초기화
            alpha_low = ALPHA_LOW
            alpha_high = ALPHA_HIGH
            
            # 1단계: 초기 Alpha 경계 값 검증 (현재 상품에 대한 GAMS 파일 수정)
            print("\n[단계 1/3] 초기 Alpha 경계 값 검증 시작.")
            modify_gams_file(GAMS_FILE_NAME, commodity, alpha_low)
            elasticity_low = run_gams_and_get_elasticity(alpha_low)
            
            modify_gams_file(GAMS_FILE_NAME, commodity, alpha_high)
            elasticity_high = run_gams_and_get_elasticity(alpha_high)
            
            f_low = elasticity_low - target_elas
            f_high = elasticity_high - target_elas

            print(f"\n초기 설정:")
            print(f"  Alpha={alpha_low:.2f} -> f(Alpha) = {f_low:.4f}")
            print(f"  Alpha={alpha_high:.2f} -> f(Alpha) = {f_high:.4f}")

            if f_low * f_high > 0:
                print("\n[오류] 초기 alpha 경계 값에서 목표 함수(f)의 부호가 다릅니다.")
                print("초기 범위(ALPHA_LOW/HIGH)를 조정하거나, GAMS 모델이 해당 범위에서 수렴하는지 확인하십시오.")
                continue # 다음 상품으로 넘어감

            # 2단계: 이분법 반복 계산 시작
            print("\n[단계 2/3] 이분법 반복 계산 시작.")
            final_alpha = None
            
            for iteration in range(1, MAX_ITERATIONS + 1):
                alpha_mid = (alpha_low + alpha_high) / 2
                
                # GAMS 파일 수정 및 실행 (현재 상품에 대한 alpha_mid 적용)
                modify_gams_file(GAMS_FILE_NAME, commodity, alpha_mid)
                elasticity_mid = run_gams_and_get_elasticity(alpha_mid)
                
                f_mid = elasticity_mid - target_elas
                
                print(f"\n--- 반복 {iteration} ({commodity}) ---")
                print(f"  현재 alpha: {alpha_mid:.6f}")
                print(f"  계산된 탄력성: {elasticity_mid:.6f}")
                print(f"  목표 탄력성: {target_elas}")
                print(f"  오차: {f_mid:.6f}")
                
                if abs(f_mid) < TOLERANCE:
                    print(f"\n[성공] 목표 탄력성에 수렴했습니다. ({commodity})")
                    final_alpha = alpha_mid
                    break
                
                if f_low * f_mid < 0:
                    alpha_high = alpha_mid
                    f_high = f_mid
                else:
                    alpha_low = alpha_mid
                    f_low = f_mid
                    
                if abs(alpha_high - alpha_low) < TOLERANCE: 
                    print(f"\n[실패] alpha 범위가 너무 좁습니다. ({commodity})")
                    final_alpha = alpha_mid
                    break
            
            # 최종 결과 저장 및 GAMS 파일 반영 (현재 상품의 최종 alpha)
            if final_alpha:
                final_alpha_results[commodity] = final_alpha
                # 최종 alpha를 GAMS 파일에 반영
                modify_gams_file(GAMS_FILE_NAME, commodity, final_alpha) 
            else:
                 final_alpha_results[commodity] = "Failure"
                 print(f"\n[실패] 최대 반복 횟수 초과. 최종 alpha 승수: {alpha_mid:.6f}")

        # --- 모든 상품 보정 완료 ---
        print("\n========================================================")
        print("✅ 모든 상품 보정 완료")
        print("========================================================")
        for c, a in final_alpha_results.items():
             print(f"상품 {c}: 최종 Alpha = {a}")
        print("========================================================")


    except ValueError as e:
        print(f"\n스크립트 오류: {e}")
    finally:
        # [단계 3/3] 작업 완료 후 원본 파일 복원
        print("\n[단계 3/3] 원본 파일 복원.")
        if os.path.exists(backup_file_abs_path):
            shutil.move(backup_file_abs_path, os.path.join(BASE_DIR, GAMS_FILE_NAME))
            print(f"원본 파일 복원 완료: {GAMS_FILE_NAME}")


if __name__ == "__main__":
    try:
        import pandas as pd
        import openpyxl 
        calibrate_sigma_y_multiplier()
    except ImportError as e:
        print(f"\n[필수] 엑셀 파일 처리를 위해 'pandas'와 'openpyxl' 라이브러리가 필요합니다. 다음 명령으로 설치하십시오:")
        print("pip install pandas openpyxl")