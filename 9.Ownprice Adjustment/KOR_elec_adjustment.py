import re
import os
import shutil
import subprocess
import sys
import pandas as pd

# --- 사용자 설정 변수 ---
GAMS_FILE_NAME = "Model_GTAP11c_new.gms"  
BACKUP_FILE_NAME = GAMS_FILE_NAME + ".bak" 
TARGET_ELASTICITY = -0.275
TOLERANCE = 1e-4
MAX_ITERATIONS = 50

# --- 반복 알고리즘을 위한 초기값 설정 (이분법) ---
ALPHA_LOW = 0.01  
ALPHA_HIGH = 2.0   

EXCEL_OUTPUT_FILE_NAME = 'valelec_elas.xlsx' 
EXCEL_SHEET_NAME = 'Sheet1' 


# --- 절대 경로 설정 ---
if getattr(sys, 'frozen', False):
    BASE_DIR = os.path.dirname(sys.executable)
elif '__file__' in locals():
    BASE_DIR = os.path.dirname(os.path.abspath(__file__))
else:
    BASE_DIR = os.getcwd()

OUTPUT_CGE_DIR = os.path.join(BASE_DIR, 'Output_CGE')
if not os.path.exists(OUTPUT_CGE_DIR):
    try:
        os.makedirs(OUTPUT_CGE_DIR)
        print(f"Output 폴더 생성: {OUTPUT_CGE_DIR}")
    except Exception as e:
        print(f"오류: Output 폴더를 생성할 수 없습니다. 권한 확인: {e}")

EXCEL_FULL_PATH = os.path.join(BASE_DIR, EXCEL_OUTPUT_FILE_NAME)


# --------------------------------------------------------------------------------
# 1. GAMS 파일 수정 함수 (동일)
# --------------------------------------------------------------------------------
def modify_gams_file(gams_file_path, alpha_value):
    """
    주어진 alpha 값으로 GAMS 파일을 수정합니다.
    """
    pattern = re.compile(
        r"^\s*sigma_Y\('18_ELEC','01_KOR'\)\s*=\s*[0-9\.]+\s*\* sigma_Y\('18_ELEC','01_KOR'\);", 
        re.MULTILINE | re.IGNORECASE
    )
    
    new_line = f" sigma_Y('18_ELEC','01_KOR') = {alpha_value}* sigma_Y('18_ELEC','01_KOR');"

    try:
        gams_file_abs_path = os.path.join(BASE_DIR, gams_file_path)
        with open(gams_file_abs_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except FileNotFoundError:
        raise ValueError(f"GAMS 파일 '{gams_file_path}'을(를) 찾을 수 없습니다. 경로를 확인하십시오.")
    
    new_content, count = re.subn(pattern, new_line, content)

    if count == 0:
        raise ValueError("GAMS 파일에서 sigma_Y('18_ELEC','01_KOR')를 수정하는 줄을 찾을 수 없습니다. 파일 내용을 확인하십시오.")
    
    with open(gams_file_abs_path, 'w', encoding='utf-8') as f:
        f.write(new_content)


# --------------------------------------------------------------------------------
# 2. GAMS 실행 및 결과 읽기 함수 (위치 기반 - A2 셀)
# --------------------------------------------------------------------------------
def run_gams_and_get_elasticity(alpha_value):
    """
    GAMS 모델을 실행하고, 생성된 엑셀 파일의 A2 셀 값(01_KOR의 탄력성)을 읽어옵니다.
    """
    
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
    # 2. 엑셀 파일 읽기 (pandas 사용 - A2 위치)
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
            header=None, # 헤더 없음
            skiprows=0   
        )
        
        # 2. '01_KOR' 값 추출 (위치 기반: A2 셀 = [행 인덱스 1, 열 인덱스 0])
        calculated_elasticity = df_raw.iloc[1, 0] # <<-- A2 셀 접근으로 수정
            
    except Exception as e:
        # 오류 발생 시 GAMS 로그 확인 필요
        print(f"엑셀 파일 읽기 중 오류 발생: {e}. (데이터 추출 위치 확인 필요)")
        calculated_elasticity = 9999.0
        
    finally:
        # 엑셀 파일 삭제 코드는 주석 처리되어 있습니다.
        pass
            
    # 데이터 타입이 숫자형이 아닐 수 있으므로 float으로 강제 변환합니다.
    try:
        return float(calculated_elasticity)
    except:
        return 9999.0


# --------------------------------------------------------------------------------
# 3. 메인 반복 루프 (이분법)
# --------------------------------------------------------------------------------
def calibrate_sigma_y_multiplier():
    """
    이분법을 사용하여 sigma_Y 승수(alpha)를 목표 탄력성에 맞게 조정합니다.
    """
    print(f"*** sigma_Y 승수(Alpha) 기반 탄력성 교정 시작 ***")
    
    if not os.path.exists(os.path.join(BASE_DIR, GAMS_FILE_NAME)):
        print(f"[오류] GAMS 파일 '{GAMS_FILE_NAME}'을(를) 찾을 수 없습니다. 경로를 확인하십시오.")
        return

    # 원본 파일 백업
    backup_file_abs_path = os.path.join(BASE_DIR, BACKUP_FILE_NAME)
    if not os.path.exists(backup_file_abs_path):
        shutil.copyfile(os.path.join(BASE_DIR, GAMS_FILE_NAME), backup_file_abs_path)
        print(f"원본 파일 백업 완료: {BACKUP_FILE_NAME}")

    try:
        # 초기 경계 값의 탄력성 계산 (GAMS 실행 필요)
        print("\n[단계 1/3] 초기 Alpha 경계 값 검증 시작.")
        modify_gams_file(GAMS_FILE_NAME, ALPHA_LOW)
        elasticity_low = run_gams_and_get_elasticity(ALPHA_LOW)
        
        modify_gams_file(GAMS_FILE_NAME, ALPHA_HIGH)
        elasticity_high = run_gams_and_get_elasticity(ALPHA_HIGH)
        
        # 목표 함수: f(alpha) = calculated_elasticity - TARGET_ELASTICITY
        f_low = elasticity_low - TARGET_ELASTICITY
        f_high = elasticity_high - TARGET_ELASTICITY

        print(f"\n초기 설정:")
        print(f"  Alpha={ALPHA_LOW:.2f} -> f(Alpha) = {f_low:.4f}")
        print(f"  Alpha={ALPHA_HIGH:.2f} -> f(Alpha) = {f_high:.4f}")

        if f_low * f_high > 0:
            print("\n[오류] 초기 alpha 경계 값에서 목표 함수(f)의 부호가 다릅니다.")
            print("알파 값(ALPHA_LOW, ALPHA_HIGH)을 조정하여 목표 탄력성(-0.275)의 양쪽 경계를 포함하도록 설정해야 합니다.")
            return

        alpha_low = ALPHA_LOW
        alpha_high = ALPHA_HIGH
        
        print("\n[단계 2/3] 이분법 반복 계산 시작.")
        
        final_alpha = None
        
        for iteration in range(1, MAX_ITERATIONS + 1):
            alpha_mid = (alpha_low + alpha_high) / 2
            
            # GAMS 파일 수정 및 실행
            modify_gams_file(GAMS_FILE_NAME, alpha_mid)
            elasticity_mid = run_gams_and_get_elasticity(alpha_mid)
            
            f_mid = elasticity_mid - TARGET_ELASTICITY
            
            print(f"\n--- 반복 {iteration} ---")
            print(f"  현재 alpha: {alpha_mid:.6f}")
            print(f"  계산된 탄력성: {elasticity_mid:.6f}")
            print(f"  목표 탄력성: {TARGET_ELASTICITY}")
            print(f"  오차: {f_mid:.6f}")
            
            if abs(f_mid) < TOLERANCE:
                print("\n[성공] 목표 탄력성에 수렴했습니다.")
                final_alpha = alpha_mid
                break
            
            # 이분법 업데이트
            if f_low * f_mid < 0:
                alpha_high = alpha_mid
                f_high = f_mid
            else:
                alpha_low = alpha_mid
                f_low = f_mid
                
            if abs(alpha_high - alpha_low) < TOLERANCE: 
                print(f"\n[실패] alpha 범위가 너무 좁아 더 이상 정밀하게 찾기 어렵습니다.")
                final_alpha = alpha_mid
                break
                
        if final_alpha:
            print(f"\n[최종 결과] 최종 alpha 승수: {final_alpha:.6f}")
            print(f"            최종 탄력성: {elasticity_mid:.6f}")
            # 최종 alpha를 GAMS 파일에 반영
            modify_gams_file(GAMS_FILE_NAME, final_alpha) 
        else:
             print(f"\n[실패] 최대 반복 횟수({MAX_ITERATIONS}) 초과. 최종 alpha 승수: {alpha_mid:.6f}")

    except ValueError as e:
        print(f"\n스크립트 오류: {e}")
    finally:
        # [단계 3/3] 작업 완료 후 원본 파일 복원
        print("\n[단계 3/3] 원본 파일 복원.")
        if os.path.exists(backup_file_abs_path):
            shutil.move(backup_file_abs_path, os.path.join(BASE_DIR, GAMS_FILE_NAME))
            print(f"원본 파일 복원 완료: {GAMS_FILE_NAME}")


if __name__ == "__main__":
    # pandas 라이브러리가 설치되어 있어야 합니다.
    try:
        import pandas as pd
        import openpyxl 
        calibrate_sigma_y_multiplier()
    except ImportError as e:
        print(f"\n[필수] 엑셀 파일 처리를 위해 'pandas'와 'openpyxl' 라이브러리가 필요합니다. 다음 명령으로 설치하십시오:")
        print("pip install pandas openpyxl")
