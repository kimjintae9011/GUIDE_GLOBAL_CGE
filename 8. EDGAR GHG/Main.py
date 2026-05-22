import pandas as pd
import os

# 1. 폴더 경로 설정 (코드 실행 위치 기준)
input_dir = 'INPUT'
output_dir = 'OUTPUT'

# OUTPUT 폴더가 없으면 자동 생성
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# 2. 지역 분류 딕셔너리
region_mapping = {
    '01_KOR': ['KOR'], '02_CHN': ['CHN', 'HKG'], '03_JPN': ['JPN'], '04_RUS': ['RUS'],
    '05_MNG': ['MNG'], '06_PRK': ['PRK'], '07_NAM': ['CAN', 'GUM', 'PRI', 'SPM', 'USA', 'VIR'],
    '08_LAM': ['ABW', 'AIA', 'ANT', 'ARG', 'ATG', 'BES', 'BHS', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'CHL', 'COL',
               'CRI', 'CUB', 'CUW', 'CYM', 'DMA', 'DOM', 'ECU', 'FLK', 'GLP', 'GRD', 'GTM', 'GUF', 'GUY', 'HND', 
               'HTI', 'JAM', 'KNA', 'LCA', 'MEX', 'MSR', 'MTQ', 'NIC', 'PAN', 'PER', 'PRY', 'SLV', 'SUR', 'SXM', 
               'TCA', 'TTO', 'URY', 'VCT', 'VEN', 'VGB'],
    '09_WEU': ['AND', 'AUT', 'BEL', 'CHE', 'CYP', 'DEU', 'DNK', 'ESP', 'FIN', 'FRA', 'FRO', 'GBR', 'GIB', 'GRC',
               'GRL', 'IMN', 'IRL', 'ISL', 'ITA', 'LIE', 'LUX', 'MCO', 'MLT', 'NLD', 'NOR', 'PRT', 'SJM', 'SMR', 
               'SWE', 'TUR', 'VAT'],
    '10_EEU': ['ALB', 'BGR', 'BIH', 'CZE', 'EST', 'HRV', 'HUN', 'LTU', 'LVA', 'MKD', 'MNE', 'POL', 'ROU', 'SCG', 
               'SRB', 'SVK', 'SVN', 'YUG'],
    '11_CAS': ['ARM', 'AZE', 'BLR', 'GEO', 'KAZ', 'KGZ', 'MDA', 'TJK', 'TKM', 'UKR', 'UZB'],
    '12_MEA': ['ARE', 'BHR', 'DZA', 'EGY', 'ESH', 'IRN', 'IRQ', 'ISR', 'JOR', 'KWT', 'LBN', 'LBY', 'MAR', 'OMN', 'PSE',
               'QAT', 'SAU', 'SDN', 'SSD', 'SYR', 'TUN', 'YEM'],
    '13_AFR': ['AGO', 'BDI', 'BEN', 'BFA', 'BWA', 'CAF', 'CIV', 'CMR', 'COD', 'COG', 'COM', 'CPV', 'DJI', 'ERI', 
               'ETH', 'GAB', 'GHA', 'GIN', 'GMB', 'GNB', 'GNQ', 'KEN', 'LBR', 'LSO', 'MDG', 'MLI', 'MOZ', 'MRT', 
               'MUS', 'MWI', 'MYT', 'NAM', 'NER', 'NGA', 'REU', 'RWA', 'SEN', 'SHN', 'SLE', 'SOM', 'STP', 'SWZ',
               'SYC', 'TCD', 'TGO', 'TZA', 'UGA', 'ZAF', 'ZMB', 'ZWE'],
    '14_CLV': ['KHM', 'LAO', 'VNM'],
    '15_SAS': ['AFG', 'BGD', 'BTN', 'IND', 'LKA', 'MDV', 'NPL', 'PAK'],
    '16_APC': ['ASM', 'BRN', 'CCK', 'COK', 'CXR', 'FJI', 'FSM', 'IDN', 'KIR', 'MAC', 'MHL', 'MMR', 'MNP', 'MYS', 'NCL', 'NFK',
               'NIU', 'NRU', 'PCI', 'PCN', 'PHL', 'PLW', 'PNG', 'PYF', 'SGP', 'SLB', 'THA', 'TKL', 'TLS', 'TON', 'TUV', 'TWN',
               'VUT', 'WLF', 'WSM'],
    '17_ANZ': ['AUS', 'NZL']
}
country_to_region = {c: r for r, cs in region_mapping.items() for c in cs}

# 3. IPCC AR5 GWP100 계수
ar5_gwp = {
    'CO2': 1, 'CO2bio': 1, 'CH4': 28, 'N2O': 265, 
    'HFC-23': 14800, 'SF6': 23500, 'CF4': 6630, 'C2F6': 11100, 'C3F8': 8900, 'c-C4F8': 9540, 
    'HFC-32': 677, 'HFC-134a': 1300, 'HFC-152a': 138, 'C4F10': 9200, 'NF3': 16100, 'HFC-125': 3170,
    'HFC-143a': 4800, 'HFC-227ea': 3350, 'HFC-236fa': 8060, 'HFC-245fa': 858, 'C6F14': 7910, 
    'HFC-365mfc': 804, 'HCFC-141b': 782, 'HCFC-142b': 1980, 'HFC-134': 1120, 'HFC-143': 328, 
    'HFC-41': 92, 'HFC-43-10-mee': 1640, 'C5F12': 8550
}

# 4. 분석할 원본 파일 목록
raw_files = {
    'CO2': 'IEA_EDGAR_CO2_1970_2024.csv',
    'CH4': 'EDGAR_CH4_1970_2024.csv',
    'N2O': 'EDGAR_N2O_1970_2024.csv',
    'F-gas': 'EDGAR_F-gases_1990_2024.csv',
    'CO2bio': 'EDGAR_CO2bio_1970_2024.csv'
}

all_detailed_data = []

# 5. 순차적 데이터 처리 (집계 -> 파일 생성 -> GWP 적용 -> 병합 리스트 추가)
print("데이터 처리를 시작합니다...\n")

for gas_type, filename in raw_files.items():
    file_path = os.path.join(input_dir, filename)
    
    if not os.path.exists(file_path):
        print(f"[경고] 원본 파일을 찾을 수 없습니다: {file_path}")
        continue
        
    print(f"[{gas_type}] 원본 데이터 집계 중...")
    df = pd.read_csv(file_path)
    
    # 지역 맵핑 적용
    df['Region'] = df['Country_code_A3'].map(country_to_region)
    
    # 집계 기준 컬럼 (지역, 섹터코드, 섹터명, 물질)
    groupby_cols = ['Region', 'ipcc_code_2006_for_standard_report', 'ipcc_code_2006_for_standard_report_name', 'Substance']
    year_cols = [c for c in df.columns if c.startswith('Y_')]
    
    # 그룹화 및 연도별 수치 합산
    df_agg = df.groupby(groupby_cols)[year_cols].sum().reset_index()
    
    # [Step A] 중간 집계 파일 저장 (오류가 났던 파일들 생성)
    agg_out_path = os.path.join(output_dir, f'Aggregated_{filename}')
    df_agg.to_csv(agg_out_path, index=False)
    
    # [Step B] GWP 적용 (CO2 환산 수치로 변경)
    for sub in df_agg['Substance'].unique():
        gwp = ar5_gwp.get(sub, 1)
        mask = df_agg['Substance'] == sub
        df_agg.loc[mask, year_cols] = df_agg.loc[mask, year_cols] * gwp
        
    # 가스 분류명 추가 후 리스트에 담기
    df_agg.insert(1, 'Gas_Type', gas_type)
    all_detailed_data.append(df_agg)

# 6. 최종 파일 하나로 병합
if len(all_detailed_data) == 0:
    print("\n[오류] 처리된 데이터가 없습니다. INPUT 폴더 안에 원본 파일들이 정상적으로 들어있는지 확인해주세요.")
else:
    df_detailed = pd.concat(all_detailed_data, ignore_index=True)
    
    # 보기 좋게 컬럼 순서 재배치
    base_cols = ['Region', 'Gas_Type', 'ipcc_code_2006_for_standard_report', 'ipcc_code_2006_for_standard_report_name', 'Substance']
    year_cols = sorted([c for c in df_detailed.columns if c.startswith('Y_')])
    df_detailed = df_detailed[base_cols + year_cols]
    
    # [Step C] 최종 상세(Detailed) 파일 저장
    final_out_path = os.path.join(output_dir, 'Detailed_Emissions_by_Sector_Substance_CO2eq.csv')
    df_detailed.to_csv(final_out_path, index=False)
    
    print("\n==============================================")
    print("✨ 모든 작업이 완료되었습니다!")
    print("1. 개별 집계 파일 생성 완료 (OUTPUT 폴더 내)")
    print(f"2. 최종 통합 상세 파일 생성 완료: {final_out_path}")
    print("==============================================")