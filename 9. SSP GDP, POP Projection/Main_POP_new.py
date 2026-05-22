#%% 0. 라이브러리 임포트
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np   
import math
import scipy 

#%% 1. 데이터 불러오기
df = pd.read_csv('./Input/iamc_data-POP.csv')

#%% 2. 17개 권역 매핑 딕셔너리
region_dict = {
    '01_KOR': ['South Korea'],
    '02_CHN': ['China', 'Hong Kong'],
    '03_JPN': ['Japan'],
    '04_RUS': ['Russian Federation'],
    '05_MNG': ['Mongolia'],
    '06_PRK': ['North Korea'],
    '07_NAM': ['Canada', 'Guam', 'Puerto Rico', 'United States', 'United States Virgin Islands',
               'American Samoa', 'Bermuda', 'Greenland', 'Northern Mariana Islands', 'Saint Pierre and Miquelon'],
    '08_LAM': ['Aruba', 'Argentina', 'Antigua and Barbuda','Bahamas', 'Belize', 'Bolivia', 'Brazil', 'Barbados', 
               'Chile', 'Colombia', 'Costa Rica', 'Cuba', 'Dominican Republic','Ecuador','Grenada', 'Guatemala', 
               'French Guiana', 'Guyana', 'Haiti', 'Honduras', 'Jamaica',  'Saint Lucia', 'Mexico', 'Nicaragua', 
               'Panama', 'Peru', 'Paraguay', 'El Salvador', 'Suriname', 'Trinidad and Tobago', 'Uruguay', 
               'Saint Vincent and the Grenadines', 'Cura??ao', 'Venezuela',
               'Anguilla', 'Bonaire, Sint Eustatius and Saba', 'Saint Barth??lemy', 'Cayman Islands', 'Dominica', 
               'Falkland Islands (Malvinas)', 'Guadeloupe', 'Saint Kitts and Nevis', 'Saint Martin (French part)', 
               'Montserrat', 'Martinique', 'Sint Maarten (Dutch part)', 'Turks and Caicos Islands', 'British Virgin Islands'],
    '09_WEU': ['Austria', 'Belgium', 'Greece', 'Switzerland', 'Cyprus', 'Germany', 'Denmark', 'Spain', 'Finland', 'France', 
               'United Kingdom', 'Ireland', 'Iceland', 'Italy', 'Luxembourg', 'Malta', 'Netherlands', 'Norway', 
               'Portugal', 'Sweden', 'Turkey',
               'Andorra', 'Faroe Islands', 'Guernsey', 'Gibraltar', 'Isle of Man', 'Jersey', 'Liechtenstein', 'Monaco', 'San Marino'],
    '10_EEU': ['Albania', 'Bulgaria', 'Bosnia and Herzegovina', 'Czechia', 'Estonia', 'Croatia', 'Hungary', 
               'Lithuania', 'Latvia', 'North Macedonia', 'Montenegro', 'Romania', 'Poland', 
               'Serbia', 'Slovak Republic', 'Slovenia', 'Kosovo', 'Slovakia'],
    '11_CAS': ['Afghanistan','Armenia', 'Azerbaijan', 'Belarus', 'Georgia', 'Kazakhstan', 'Kyrgyzstan', 'Moldova', 
               'Tajikistan', 'Turkmenistan', 'Ukraine', 'Uzbekistan'],
    '12_MEA': ['United Arab Emirates', 'Bahrain', 'Algeria', 'Egypt', 'Western Sahara', 'Iran', 'Iraq', 'Israel', 
               'Jordan', 'Kuwait', 'Lebanon', 'Libya', 'Morocco', 'Oman', 'Qatar', 'Saudi Arabia', 'Sudan', 
               'South Sudan', 'Tunisia', 'Yemen', 'Palestine', 'Syria'],
    '13_AFR': ['Angola', 'Burundi', 'Benin', 'Burkina Faso', 'Botswana', 'Central African Republic', 'Cote dIvoire', "C??te d'Ivoire",
               'Cameroon', 'Democratic Republic of the Congo', 'Congo', 'Comoros', 'Cabo Verde', 
               'Djibouti', 'Eritrea', 'Ethiopia','Gabon', 'Ghana', 'Guinea', 'Gambia', 'Guinea-Bissau', 'Equatorial Guinea', 
               'Kenya', 'Liberia', 'Lesotho', 'Madagascar', 'Mali', 'Mozambique', 'Mauritania', 'Mauritius', 'Malawi', 
               'Mayotte', 'Namibia', 'Niger', 'Nigeria', 'Rwanda', 'Senegal', 'Sierra Leone', 'Somalia', 
               'Sao Tome and Principe', 'Eswatini', 'Seychelles', 'Chad', 'Togo', 'Tanzania', 'Uganda', 'South Africa', 
               'Zambia', 'Zimbabwe','lvory Coast', 'R??union', 'Saint Helena, Ascension and Tristan da Cunha'],
    '14_CLV': ['Cambodia', 'Laos', 'Viet Nam'],
    '15_SAS': ['Bangladesh', 'Bhutan', 'India', 'Sri Lanka', 'Maldives', 'Nepal', 'Pakistan'],
    '16_APC': ['Samoa', 'Brunei Darussalam', 'Fiji', 'Micronesia', 'Indonesia', 'Kiribati', 'Macao', 'Myanmar','Malaysia', 
               'New Caledonia', 'Philippines','Papua New Guinea', 'French Polynesia', 'Singapore', 'Solomon Islands', 
               'Thailand', 'Timor-Leste', 'Tonga', 'Taiwan', 'Vanuatu',
               'Cook Islands', 'Marshall Islands', 'Niue', 'Nauru', 'Palau', 'Tokelau', 'Tuvalu', 'Wallis and Futuna'],
    '17_ANZ': ['Australia', 'New Zealand']
}

country_to_region = {}
for r, countries in region_dict.items():
    for c in countries:
        country_to_region[c] = r
        
#%% 3. 데이터에 Region 매핑 적용
df['Region_Group'] = df['region'].map(country_to_region)
year_cols = [col for col in df.columns if str(col).isdigit()]

#%% 4. 과거 데이터 (Historical Reference) 처리
hist_df = df[(df['unit'] == 'million') & (df['scenario'] == 'Historical Reference')].dropna(subset=['Region_Group'])
grouped_hist = hist_df.groupby('Region_Group')[year_cols].sum(min_count=1).reset_index()

base_2020_dict = grouped_hist.set_index('Region_Group')['2020'].to_dict()

hist_melted = grouped_hist.melt(id_vars=['Region_Group'], value_vars=year_cols, var_name='Year', value_name='POP_Absolute')
hist_melted['Year'] = hist_melted['Year'].astype(int)
hist_melted = hist_melted[hist_melted['Year'] >= 1980]

hist_indexed = grouped_hist.copy()
for i, row in hist_indexed.iterrows():
    region = row['Region_Group']
    base_val = base_2020_dict.get(region, np.nan)
    if pd.notna(base_val) and base_val != 0:
        for y in year_cols:
            hist_indexed.at[i, y] = (row[y] / base_val) * 100
    else:
        for y in year_cols:
            hist_indexed.at[i, y] = np.nan

hist_idx_melted = hist_indexed.melt(id_vars=['Region_Group'], value_vars=year_cols, var_name='Year', value_name='POP_Indexed')
hist_idx_melted['Year'] = hist_idx_melted['Year'].astype(int)
hist_idx_melted = hist_idx_melted[hist_idx_melted['Year'] >= 1980]

#%% 5. 미래 시나리오 데이터 (SSP) 처리
ssp_scenarios = ['SSP1', 'SSP2', 'SSP3', 'SSP4', 'SSP5']
ssp_df = df[(df['unit'] == 'million') & (df['scenario'].isin(ssp_scenarios))].dropna(subset=['Region_Group'])
grouped_ssp = ssp_df.groupby(['scenario', 'Region_Group'])[year_cols].sum(min_count=1).reset_index()

melted_abs = grouped_ssp.melt(id_vars=['scenario', 'Region_Group'], value_vars=year_cols, var_name='Year', value_name='POP_Absolute')
melted_abs['Year'] = melted_abs['Year'].astype(int)
melted_abs = melted_abs[melted_abs['Year'] >= 1980]

indexed_df = grouped_ssp.copy()
for i, row in indexed_df.iterrows():
    region = row['Region_Group']
    base_val = base_2020_dict.get(region, np.nan)
    if pd.notna(base_val) and base_val != 0:
        for y in year_cols:
            indexed_df.at[i, y] = (row[y] / base_val) * 100
    else:
        for y in year_cols:
            indexed_df.at[i, y] = np.nan

melted_idx = indexed_df.melt(id_vars=['scenario', 'Region_Group'], value_vars=year_cols, var_name='Year', value_name='POP_Indexed')
melted_idx['Year'] = melted_idx['Year'].astype(int)
melted_idx = melted_idx[melted_idx['Year'] >= 1980]

#%% 6. 데이터 병합 및 2050년 자르기
final_abs_list = []
final_idx_list = []

for scen in ssp_scenarios:
    temp_abs = hist_melted.copy()
    temp_abs['scenario'] = scen
    final_abs_list.append(temp_abs)
    
    temp_idx = hist_idx_melted.copy()
    temp_idx['scenario'] = scen
    final_idx_list.append(temp_idx)

full_abs = pd.concat([pd.concat(final_abs_list), melted_abs]).dropna(subset=['POP_Absolute']).sort_values(['scenario', 'Region_Group', 'Year'])
full_idx = pd.concat([pd.concat(final_idx_list), melted_idx]).dropna(subset=['POP_Indexed']).sort_values(['scenario', 'Region_Group', 'Year'])

full_abs = full_abs[full_abs['Year'] <= 2050]
full_idx = full_idx[full_idx['Year'] <= 2050]

#%% 8. CGE 모형용 연간 데이터 보간 (SSP PCHIP 스무딩)
print("SSP 시나리오 연간 보간 및 성장률 계산 시작...")

calc_df = full_abs[full_abs['Year'] >= 2015].copy()

# 중복 연도 제거 (미래 전망치 유지)
calc_df = calc_df.drop_duplicates(subset=['scenario', 'Region_Group', 'Year'], keep='last')

annual_growth_list = []

for (scen, region), group in calc_df.groupby(['scenario', 'Region_Group']):
    group = group.sort_values('Year').set_index('Year')
    full_years = np.arange(group.index.min(), group.index.max() + 1)
    
    group_reindexed = group.reindex(full_years)
    group_reindexed['scenario'] = scen
    group_reindexed['Region_Group'] = region
    
    # PCHIP 보간
    group_reindexed['POP_Absolute'] = group_reindexed['POP_Absolute'].interpolate(method='pchip')
    
    # 성장률 계산
    group_reindexed['SSP_Growth_Rate'] = group_reindexed['POP_Absolute'].pct_change(fill_method=None)
    
    final_group = group_reindexed.loc[2019:2050].reset_index().rename(columns={'index': 'Year'})
    annual_growth_list.append(final_group)

annual_ssp_df = pd.concat(annual_growth_list, ignore_index=True)

#%% 9. 실측 데이터(World Bank, 2019~2024) 계산 및 모든 시나리오 덮어씌우기
print("World Bank 인구 실측 데이터 결합 및 전체 시나리오 반영 중...")

wb_df = pd.read_csv('./Input/API_SP.POP.TOTL_DS2_en_csv_v2_127039.csv', skiprows=4)

wb_region_dict = {
    '01_KOR': ['Korea, Rep.'],
    '02_CHN': ['China', 'Hong Kong SAR, China'],
    '03_JPN': ['Japan'],
    '04_RUS': ['Russian Federation'],
    '05_MNG': ['Mongolia'],
    '06_PRK': ["Korea, Dem. People's Rep."], 
    '07_NAM': ['Canada', 'Guam', 'Puerto Rico', 'United States', 'Virgin Islands (U.S.)', 'American Samoa', 'Bermuda', 'Greenland', 'Northern Mariana Islands'],
    '08_LAM': ['Aruba', 'Argentina', 'Antigua and Barbuda', 'Bahamas, The', 'Belize', 'Bolivia', 'Brazil', 'Barbados', 
               'Chile', 'Colombia', 'Costa Rica', 'Cuba', 'Dominican Republic','Ecuador','Grenada', 'Guatemala', 
               'Guyana', 'Haiti', 'Honduras', 'Jamaica', 'St. Lucia', 'Mexico', 'Nicaragua', 
               'Panama', 'Peru', 'Paraguay', 'El Salvador', 'Suriname', 'Trinidad and Tobago', 'Uruguay', 
               'St. Vincent and the Grenadines', 'Venezuela, RB', 'Curacao',
               'Cayman Islands', 'Dominica', 'Sint Maarten (Dutch part)', 'Turks and Caicos Islands', 'British Virgin Islands'],
    '09_WEU': ['Austria', 'Belgium', 'Greece', 'Switzerland', 'Cyprus', 'Germany', 'Denmark', 'Spain', 'Finland', 'France', 
               'United Kingdom', 'Ireland', 'Iceland', 'Italy', 'Luxembourg', 'Malta', 'Netherlands', 'Norway', 
               'Portugal', 'Sweden', 'Turkiye', 'Andorra', 'Faroe Islands', 'Isle of Man', 'Liechtenstein', 'Monaco', 'San Marino'],
    '10_EEU': ['Albania', 'Bulgaria', 'Bosnia and Herzegovina', 'Czechia', 'Estonia', 'Croatia', 'Hungary', 
               'Lithuania', 'Latvia', 'North Macedonia', 'Montenegro', 'Romania', 'Poland', 
               'Serbia', 'Slovak Republic', 'Slovenia', 'Kosovo'],
    '11_CAS': ['Afghanistan','Armenia', 'Azerbaijan', 'Belarus', 'Georgia', 'Kazakhstan', 'Kyrgyz Republic', 'Moldova', 
               'Tajikistan', 'Turkmenistan', 'Ukraine', 'Uzbekistan'],
    '12_MEA': ['United Arab Emirates', 'Bahrain', 'Algeria', 'Egypt, Arab Rep.', 'Iran, Islamic Rep.', 'Iraq', 'Israel', 
               'Jordan', 'Kuwait', 'Lebanon', 'Libya', 'Morocco', 'Oman', 'Qatar', 'Saudi Arabia', 'Sudan', 
               'South Sudan', 'Tunisia', 'Yemen, Rep.', 'West Bank and Gaza', 'Syrian Arab Republic'],
    '13_AFR': ['Angola', 'Burundi', 'Benin', 'Burkina Faso', 'Botswana', 'Central African Republic', "Cote d'Ivoire",
               'Cameroon', 'Congo, Dem. Rep.', 'Congo, Rep.', 'Comoros', 'Cabo Verde', 
               'Djibouti', 'Eritrea', 'Ethiopia','Gabon', 'Ghana', 'Guinea', 'Gambia, The', 'Guinea-Bissau', 'Equatorial Guinea', 
               'Kenya', 'Liberia', 'Lesotho', 'Madagascar', 'Mali', 'Mozambique', 'Mauritania', 'Mauritius', 'Malawi', 
               'Namibia', 'Niger', 'Nigeria', 'Rwanda', 'Senegal', 'Sierra Leone', 'Somalia', 
               'Sao Tome and Principe', 'Eswatini', 'Seychelles', 'Chad', 'Togo', 'Tanzania', 'Uganda', 'South Africa', 
               'Zambia', 'Zimbabwe'],
    '14_CLV': ['Cambodia', 'Lao PDR', 'Vietnam'],
    '15_SAS': ['Bangladesh', 'Bhutan', 'India', 'Sri Lanka', 'Maldives', 'Nepal', 'Pakistan'],
    '16_APC': ['Samoa', 'Brunei Darussalam', 'Fiji', 'Micronesia, Fed. Sts.', 'Indonesia', 'Kiribati', 'Macao SAR, China', 'Myanmar','Malaysia', 
               'New Caledonia', 'Philippines','Papua New Guinea', 'French Polynesia', 'Singapore', 'Solomon Islands', 
               'Thailand', 'Timor-Leste', 'Tonga', 'Vanuatu', 'Marshall Islands', 'Nauru', 'Palau', 'Tuvalu'],
    '17_ANZ': ['Australia', 'New Zealand']
}

wb_country_to_region = {c: r for r, countries in wb_region_dict.items() for c in countries}
wb_df['Region_Group'] = wb_df['Country Name'].map(wb_country_to_region)

years_wb = [str(y) for y in range(2018, 2025)]
wb_grouped = wb_df.dropna(subset=['Region_Group']).groupby('Region_Group')[years_wb].sum(min_count=1)

wb_growth = wb_grouped.pct_change(axis=1, fill_method=None).drop(columns=['2018'])

wb_actual_df = wb_growth.reset_index().melt(id_vars='Region_Group', var_name='Year', value_name='Actual_Growth_Rate')
wb_actual_df['Year'] = wb_actual_df['Year'].astype(int)

# ★ 변경점: ssp2_df만 필터링하지 않고 annual_ssp_df 전체 시나리오를 사용
# annual_ssp_df는 이미 2015~2050년 데이터가 차 있으므로 Left Join을 사용하면 모든 시나리오에 실측치가 Broadcast 됩니다.
merged_df = pd.merge(annual_ssp_df, wb_actual_df, on=['Region_Group', 'Year'], how='left')

# 겹침 해결: 실측치(2019~2024)가 있으면 우선 적용, 없으면(2025~) SSP 전망치 적용
merged_df['Final_Growth_Rate'] = merged_df['Actual_Growth_Rate'].fillna(merged_df['SSP_Growth_Rate'])

# 연도 자르기 및 정렬 (모든 시나리오별로 보기 좋게 정렬)
merged_df = merged_df[(merged_df['Year'] >= 2019) & (merged_df['Year'] <= 2050)]
merged_df = merged_df.sort_values(['scenario', 'Region_Group', 'Year'])

# 결과물 정리
final_cge_data = merged_df[['scenario', 'Region_Group', 'Year', 'Final_Growth_Rate']].copy()
final_cge_data['Final_Growth_Rate_Pct'] = final_cge_data['Final_Growth_Rate'] * 100

# 결과 CSV 저장
final_cge_data.to_csv('CGE_POP_Growth_Rate_All_SSP_2019_2050.csv', index=False)

print("작업 완료! 인구(POP) 자료에 대해 SSP1~5 전체 시나리오의 2019~2050년 통합 데이터(All_SSP)가 추출되었습니다.")