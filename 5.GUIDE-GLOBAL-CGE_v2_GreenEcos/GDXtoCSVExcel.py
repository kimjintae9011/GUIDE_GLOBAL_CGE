import gams.transfer as gt
import pandas as pd
import os

# 1. 처리할 GDX 파일 리스트 및 출력 폴더 설정
gdx_files = ["Output_CGE/IAMC_NZ.gdx", "Output_CGE/IPCC_NZ.gdx", "Output_CGE/db_CGE_NZ.gdx"]
csv_output_dir = "Output_CGE/CSV_Results"
excel_output_dir = "Output_CGE/Excel_Results" # 엑셀 파일 전용 폴더

# [추가] 파일명 변환 딕셔너리 (원본 GDX 이름: 원하는 결과물 이름)
filename_mapping = {
    "db_CGE_NZ": "03-1. db_CGE_output",
    "IAMC_NZ": "GreenEcos_GUIDE-GLOBAL-CGE_IAMC",
    "IPCC_NZ": "GreenEcos_GUIDE-GLOBAL-CGE_GHG_Inventory"
}

# 출력 폴더 생성
for directory in [csv_output_dir, excel_output_dir]:
    if not os.path.exists(directory):
        os.makedirs(directory)

# 2. 파일 리스트를 순회하며 처리
total_csv_count = 0

for gdx_file in gdx_files:
    print(f"--- '{gdx_file}' 파일을 읽는 중 ---")
    
    # GDX 파일 로드
    m = gt.Container(load_from=gdx_file)
    
    # 원본 파일명 추출 (예: 'IAMC_NZ.gdx' -> 'IAMC_NZ')
    original_filename = os.path.basename(gdx_file).replace('.gdx', '')
    
    # 맵핑된 새 파일명 가져오기 (만약 맵핑 목록에 없으면 기존 원본 이름 사용)
    new_filename = filename_mapping.get(original_filename, original_filename)
    
    # 엑셀 저장을 위한 ExcelWriter 객체 생성 (새로운 파일명 적용)
    excel_path = os.path.join(excel_output_dir, f"{new_filename}.xlsx")
    
    # with문을 사용하여 엑셀 파일 열기 (자동으로 닫힘)
    with pd.ExcelWriter(excel_path, engine='openpyxl') as writer:
        
        # 3. 변수 순회 및 저장
        for name, symbol in m.data.items():
            if isinstance(symbol, (gt.Parameter, gt.Variable)):
                df = symbol.records.copy() if symbol.records is not None else None
                
                if df is not None and not df.empty:
                    
                    # ==========================================
                    # [열 이름 변경 로직]
                    # ==========================================
                    if original_filename == "db_CGE_NZ" and len(df.columns) == 7:
                        df.columns = ['CGE_variable', 'CGE_commodity', 'CGE_industry', 'Country', 'Year', 'Scenario', 'Value']
                        
                    if original_filename == "IAMC_NZ" and len(df.columns) == 7:
                        df.columns = ['Model', 'Scenario', 'Region', 'Results', 'Unit', 'Time', 'Value']

                    if original_filename == "IPCC_NZ" and len(df.columns) == 10:
                        df.columns = ['Model','Scenario','Region','IPCC06_Sector','IPCC06_Code','IPCC06_Category','Substance','Unit','Time','Value']
                    # ==========================================
                    
                    # [CSV 저장] 변수명(_name) 생략하고 지정한 파일명으로만 깔끔하게 저장
                    csv_path = os.path.join(csv_output_dir, f"{new_filename}.csv")
                    df.to_csv(csv_path, index=False)
                    total_csv_count += 1
                    
                    # [엑셀 저장] 시트명으로 변수명 사용 (31자 제한)
                    sheet_name = name[:31]
                    df.to_excel(writer, sheet_name=sheet_name, index=False)
                    
    print(f"✅ '{new_filename}' 파일 세트(CSV/Excel) 생성 완료!")

print(f"\n🎉 작업 완료! 총 {total_csv_count}개의 CSV와 {len(gdx_files)}개의 엑셀 파일이 저장되었습니다.")