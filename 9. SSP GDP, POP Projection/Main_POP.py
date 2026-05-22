#%%
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np    # <--- 이 줄이 반드시 필요합니다!
import math

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
# 국가명을 권역으로 변환하기 위한 역방향 딕셔너리
country_to_region = {}
for r, countries in region_dict.items():
    for c in countries:
        country_to_region[c] = r
        
#%% 3. 데이터에 Region 매핑 적용
df['Region_Group'] = df['region'].map(country_to_region)
year_cols = [col for col in df.columns if str(col).isdigit()]

unmapped_data = df[df['Region_Group'].isna()]
unmapped_regions = unmapped_data['region'].dropna().unique()
print(f"매핑되지 않은 지역 개수: {len(unmapped_regions)}개")
print(unmapped_regions)

#%% 4. 과거 데이터 (Historical Reference) 처리
hist_df = df[(df['unit'] == 'million') & (df['scenario'] == 'Historical Reference')].dropna(subset=['Region_Group'])
grouped_hist = hist_df.groupby('Region_Group')[year_cols].sum(min_count=1).reset_index()

base_2020_dict = grouped_hist.set_index('Region_Group')['2020'].to_dict()

# 과거 데이터 절대값 변환
hist_melted = grouped_hist.melt(id_vars=['Region_Group'], value_vars=year_cols, var_name='Year', value_name='POP_Absolute')
hist_melted['Year'] = hist_melted['Year'].astype(int)
hist_melted = hist_melted[hist_melted['Year'] >= 1980]

# 과거 데이터 인덱스 변환
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

#%% 6. 데이터 병합 및 [2050년까지로 자르기]
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

# ★ 데이터를 2050년까지만 남기기 (이 작업을 통해 Y축이 2100년 수치에 의해 불필요하게 커지는 것을 막아줌)
full_abs = full_abs[full_abs['Year'] <= 2050]
full_idx = full_idx[full_idx['Year'] <= 2050]

#%% 7. 시각화 및 축 세팅 
regions = sorted(full_abs['Region_Group'].unique())
colors = sns.color_palette("Set1", len(ssp_scenarios))
scen_colors = dict(zip(ssp_scenarios, colors))

def plot_grid(df_plot, value_col, title, ylabel, filename, add_hline=False):
    cols = 4
    rows = math.ceil(len(regions) / cols)
    fig, axes = plt.subplots(rows, cols, figsize=(16, rows*3.5))
    axes = axes.flatten() # sharey=False (각각 독립된 y축 사용)가 서브플롯의 기본값임
    
    for i, region in enumerate(regions):
        ax = axes[i]
        reg_data = df_plot[df_plot['Region_Group'] == region]
        
        for scen in ssp_scenarios:
            scen_data = reg_data[reg_data['scenario'] == scen]
            if not scen_data.empty:
                ax.plot(scen_data['Year'], scen_data[value_col], label=scen, color=scen_colors[scen], linewidth=2)
        
        ax.set_title(region, fontweight='bold')
        ax.set_ylabel(ylabel)
        
        # ★ X축을 1980년부터 2050년까지, 10년 단위로 눈금(Tick) 고정
        ax.set_xlim(1980, 2050)
        ax.set_xticks(range(1980, 2051, 10)) 
        
        if add_hline:
            ax.axhline(100, ls='--', color='gray', alpha=0.7)
        ax.grid(True, alpha=0.3)
        
    for j in range(i + 1, len(axes)):
        fig.delaxes(axes[j])
        
    handles, labels = axes[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='upper center', bbox_to_anchor=(0.5, 1.02), ncol=5, title='Scenario', frameon=True)
    
    fig.suptitle(title, fontsize=18, fontweight='bold', y=1.06)
    plt.tight_layout()
    plt.savefig(filename, bbox_inches='tight', dpi=150)
    plt.close()

#%%

# 차트 출력
plot_grid(full_abs, 'POP_Absolute', 'Absolute POP by 17 Regions and SSP Scenarios (1980-2050)', 'million', 'absolute_pop_17regions_1980_2050.png')
plot_grid(full_idx, 'POP_Indexed', 'Indexed POP (2020=100) by 17 Regions and SSP Scenarios (1980-2050)', 'Index (2020=100)', 'indexed_pop_17regions_1980_2050.png', add_hline=True)

# 저장
full_abs.to_csv('POP_Absolute_17Regions_1980_2050.csv', index=False)
full_idx.to_csv('POP_Indexed_17Regions_1980_2050.csv', index=False)

print("작업 완료! 이제 X축이 10년 단위(1980~2050)로 표시되며 Y축도 알맞게 스케일링됩니다.")