import pandas as pd
import os

# 1. 지역 분류 딕셔너리 (원본 AR5 맵핑용)
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

# 2. 이전에 만든 통합 상세 데이터 로드
detailed_path = 'OUTPUT/Detailed_Emissions_by_Sector_Substance_CO2eq.csv'
if not os.path.exists(detailed_path):
    print(f"[오류] {detailed_path} 파일을 찾을 수 없습니다. 이전 단계를 먼저 실행해주세요.")
else:
    df_calc = pd.read_csv(detailed_path)

    # 3. 물질(Substance) 대신 가스 대분류(Gas_Type)로 2019년 데이터 그룹화
    groupby_cols = ['Region', 'ipcc_code_2006_for_standard_report', 'ipcc_code_2006_for_standard_report_name']
    
    # 피벗 테이블 생성: F-gas의 세부 물질들이 모두 'F-gas' 열 하나로 합산됨
    pivot_calc = df_calc.pivot_table(
        index=groupby_cols,
        columns='Gas_Type',
        values='Y_2019',
        aggfunc='sum'
    ).fillna(0)

    # 누락된 가스 컬럼이 있을 경우 방지용 강제 생성
    for gas in ['CO2', 'CH4', 'N2O', 'F-gas', 'CO2bio']:
        if gas not in pivot_calc.columns:
            pivot_calc[gas] = 0.0

    # [핵심] CO2bio를 제외한 우리가 계산한 온실가스 총합
    pivot_calc['Calculated_Total_GHG'] = pivot_calc['CO2'] + pivot_calc['CH4'] + pivot_calc['N2O'] + pivot_calc['F-gas']
    pivot_calc = pivot_calc.reset_index()

    # 4. 공식 AR5 원본 파일 로드 및 2019년 맵핑
    ar5_path = 'INPUT/EDGAR_AR5_GHG_1970_2024.csv'
    if not os.path.exists(ar5_path):
        print(f"[오류] {ar5_path} 파일을 찾을 수 없습니다.")
    else:
        df_ar5 = pd.read_csv(ar5_path)
        df_ar5['Region'] = df_ar5['Country_code_A3'].map(country_to_region)
        
        # 공식 파일의 2019년도 지역/섹터별 합계
        ar5_2019 = df_ar5.groupby(groupby_cols)['Y_2019'].sum().reset_index()
        ar5_2019.rename(columns={'Y_2019': 'Official_AR5_Total'}, inplace=True)

        # 5. 우리가 계산한 데이터와 공식 데이터 병합 (Merge)
        # outer 병합으로 어느 한쪽에만 있는 섹터도 유실 없이 모두 포함
        merged_df = pd.merge(pivot_calc, ar5_2019, on=groupby_cols, how='outer').fillna(0)

        # 6. 오차(Difference) 계산
        merged_df['Difference'] = merged_df['Official_AR5_Total'] - merged_df['Calculated_Total_GHG']

        # 7. 컬럼 순서 직관적으로 재배치 및 정렬
        final_cols = groupby_cols + ['CO2', 'CH4', 'N2O', 'F-gas', 'CO2bio', 'Calculated_Total_GHG', 'Official_AR5_Total', 'Difference']
        merged_df = merged_df[final_cols].sort_values(by=['Region', 'ipcc_code_2006_for_standard_report'])

        # 8. CSV 최종 저장
        out_path = 'OUTPUT/Emissions_2019_Comparison_by_Sector.csv'
        merged_df.to_csv(out_path, index=False)
        print(f"✅ 변환 완료! 결과 파일이 저장되었습니다: {out_path}")
        
        # 콘솔에서 앞부분 미리보기 출력
        print("\n[ 2019년 데이터 미리보기 (일부) ]")
        print(merged_df.head(5).to_string(index=False))