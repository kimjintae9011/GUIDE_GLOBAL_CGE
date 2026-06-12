#%%
import pandas as pd
import numpy as np
import plotly.graph_objects as go
import plotly.io as pio 
from openpyxl import Workbook
from openpyxl.utils.dataframe import dataframe_to_rows

#%%
# =====================================================================
# 0) 자료 Importing
# =====================================================================
WORLDBIG1 = pd.read_csv("WORLDBIG1.TXT", sep="\s+", header=None)
WORLDBIG2 = pd.read_csv("WORLDBIG2.TXT", sep="\s+", header=None)

#%%
# =====================================================================
# 1) 연도(2019년) 및 단위(KTOE, GWH) 필터링 
# =====================================================================
col_names = ['Country', 'Product', 'Year', 'Flow', 'Unit', 'Energy']
for df in [WORLDBIG1, WORLDBIG2]:
    df.columns = col_names

world_df = pd.concat([WORLDBIG1, WORLDBIG2], ignore_index=True)
world_df = world_df[world_df['Year'].astype(str) == '2019']
world_df = world_df[world_df['Unit'].isin(['KTOE', 'GWH'])]
#world_df = world_df[[world_df['Unit'] == 'KTOE'] | [world_df['Unit'] == 'GWH']]  

# Energy 값을 확실한 숫자로 변환 (',', '..' 등 텍스트는 0으로 처리)
world_df['Energy'] = world_df['Energy'].astype(str).str.replace(',', '')
world_df['Energy'] = pd.to_numeric(world_df['Energy'], errors='coerce').fillna(0)

# =====================================================================
# 2) 사용자 정의 Flow 및 Product 리스트 맵핑
# =====================================================================
unique_flows = world_df['Flow'].dropna().unique().tolist()
unique_products = world_df['Product'].dropna().unique().tolist()

print(f"총 {len(unique_flows)}개의 고유 Flow와 {len(unique_products)}개의 고유 Product가 감지되었습니다.")

my_flows = [
    'f1_INDPROD', 'f2_IMPORTS', 'f3_EXPORTS', 'f4_MARBUNK', 'f5_AVBUNK',
    'f6_STOCKCHA', 'f7_TES', 'f8_TRANSFER', 'f9_STATDIFF', 'f10_TOTTRANF',
    'f11_MAINELEC', 'f12_AUTOELEC', 'f13_MAINCHP', 'f14_AUTOCHP', 'f15_MAINHEAT',
    'f16_AUTOHEAT', 'f17_THEAT', 'f18_TBOILER', 'f19_TELE', 'f20_TBLASTFUR',
    'f21_TGASWKS', 'f22_TCOKEOVS', 'f23_TPATFUEL', 'f24_TBKB', 'f25_TREFINER',
    'f26_TPETCHEM', 'f27_TCOALLIQ', 'f28_TGTL', 'f29_TBLENDGAS', 'f30_TCHARCOAL',
    'f31_TNONSPEC', 'f32_TOTENGY', 'f33_EMINES', 'f34_EOILGASEX', 'f35_EBLASTFUR',
    'f36_EGASWKS', 'f37_EBIOGAS', 'f38_ECOKEOVS', 'f39_EPATFUEL', 'f40_EBKB',
    'f41_EREFINER', 'f42_ECOALLIQ', 'f43_ELNG', 'f44_EGTL', 'f45_EPOWERPLT',
    'f46_EPUMPST', 'f47_ENUC', 'f48_ECHARCOAL', 'f49_ENONSPEC', 'f50_DISTLOSS',
    'f51_TFC', 'f52_AGRICULT', 'f53_FISHING', 'f54_MINING', 'f55_FOODPRO',
    'f56_TEXTILES', 'f57_WOODPRO', 'f58_PAPERPRO', 'f59_CHEMICAL', 'f60_NONMET',
    'f61_IRONSTL', 'f62_NONFERR', 'f63_MACHINE', 'f64_TRANSEQ', 'f65_INONSPEC',
    'f66_CONSTRUC', 'f67_COMMPUB', 'f68_ONONSPEC', 'f69_RESIDENT', 'f70_ROAD',
    'f71_RAIL', 'f72_DOMESAIR', 'f73_DOMESNAV', 'f74_PIPELINE', 'f75_TRNONSPE',
    'f76_NEMINING', 'f77_NEFOODPRO', 'f78_NETEXTILES', 'f79_NEWOODPRO', 'f80_NEPAPERPRO',
    'f81_NECHEM', 'f82_NENONMET', 'f83_NEIRONSTL', 'f84_NENONFERR', 'f85_NEMACHINE',
    'f86_NETRANSEQ', 'f87_NEINONSPEC', 'f88_NECONSTRUC', 'f89_NEOTHER', 'f90_NETRANS',
    'f91_TOTIND', 'f92_MANUFACT', 'f93_TOTTRANS', 'f94_NONENUSE', 'f95_NEINTREN',
    'f96_NEIND', 'f97_WORLDAV', 'f98_WORLDMAR', 'f99_ELOUTPUT', 'f100_ELMAINE',
    'f101_ELAUTOE', 'f102_ELMAINC', 'f103_ELAUTOC', 'f104_HEATOUT', 'f105_HEMAINC',
    'f106_HEAUTOC', 'f107_HEMAINH', 'f108_HEAUTOH'
]

my_products = [
    'p1_HARDCOAL', 'p2_BROWN', 'p3_ANTCOAL', 'p4_COKCOAL', 'p5_BITCOAL',
    'p6_SUBCOAL', 'p7_LIGNITE', 'p8_PATFUEL', 'p9_OVENCOKE', 'p10_GASCOKE',
    'p11_COALTAR', 'p12_BKB', 'p13_GASWKSGS', 'p14_COKEOVGS', 'p15_BLFURGS',
    'p16_OGASES', 'p17_PEAT', 'p18_PEATPROD', 'p19_OILSHALE', 'p20_NATGAS',
    'p21_CRNGFEED', 'p22_CRUDEOIL', 'p23_NGL', 'p24_REFFEEDS', 'p25_ADDITIVE',
    'p26_NONCRUDE', 'p27_REFINGAS', 'p28_ETHANE', 'p29_LPG', 'p30_NONBIOGASO',
    'p31_AVGAS', 'p32_JETGAS', 'p33_NONBIOJETK', 'p34_OTHKERO', 'p35_NONBIODIES',
    'p36_RESFUEL', 'p37_NAPHTHA', 'p38_WHITESP', 'p39_LUBRIC', 'p40_BITUMEN',
    'p41_PARWAX', 'p42_PETCOKE', 'p43_ONONSPEC', 'p44_INDWASTE', 'p45_MUNWASTER',
    'p46_MUNWASTEN', 'p47_PRIMSBIO', 'p48_BIOGASES', 'p49_BIOGASOL', 'p50_BIOJETKERO',
    'p51_BIODIESEL', 'p52_OBIOLIQ', 'p53_RENEWNS', 'p54_CHARCOAL', 'p55_NUCLEAR',
    'p56_HYDRO', 'p57_GEOTHERM', 'p58_SOLARPV', 'p59_SOLARTH', 'p60_TIDE',
    'p61_WIND', 'p62_OTHER', 'p63_ELECTR', 'p64_HEAT', 'p65_HEATNS',
    'p66_TOTAL', 'p67_MANGAS', 'p68_MRENEW'
]

# 1. 원본 이름 리스트 (첫 번째 '_' 기준으로만 자르기)
my_flows_original = [f.split('_', 1)[1] for f in my_flows]
my_products_original = [p.split('_', 1)[1] for p in my_products]

# 2. 실제 데이터에 존재하는 항목 리스트
unique_flows = world_df['Flow'].dropna().unique()
unique_products = world_df['Product'].dropna().unique()

# 3. 비교 (내 리스트에는 있는데 원본 데이터에는 아예 없는 것 찾기)
missing_flows = set(my_flows_original) - set(unique_flows)
missing_products = set(my_products_original) - set(unique_products)

print("="*60)
print(f"🚨 [결과 1] 데이터에 존재하지 않는 Flow ({len(missing_flows)}개):")
for flow in missing_flows:
    print(f" - {flow}")

print(f"\n🚨 [결과 2] 데이터에 존재하지 않는 Product ({len(missing_products)}개):")
for prod in missing_products:
    print(f" - {prod}")
print("="*60)

flow_map = dict(zip(my_flows_original, my_flows))
product_map = dict(zip(my_products_original, my_products))

world_df['Flow'] = world_df['Flow'].map(flow_map).fillna(world_df['Flow'])
world_df['Product'] = world_df['Product'].map(product_map).fillna(world_df['Product'])

# =====================================================================
# 3) 17개 지역 맵핑
# =====================================================================
regions = {
    '01_KOR': ['KOREA'],
    '02_CHN': ['CHINA', 'HONGKONG'],
    '03_JPN': ['JAPAN'],
    '04_RUS': ['RUSSIA'],
    '05_MNG': ['MONGOLIA'],
    '06_PRK': ['KOREADPR'],
    '07_NAM': ['CANADA', 'USA'],
    '08_LAM': [
        'ARGENTINA', 'BOLIVIA', 'BRAZIL', 'CHILE', 'COLOMBIA', 
        'COSTARICA', 'CUBA', 'DOMINICANR', 'ECUADOR', 'GUATEMALA', 
        'GUYANA', 'HAITI', 'HONDURAS', 'JAMAICA', 'MEXICO', 
        'NICARAGUA', 'PANAMA', 'PERU', 'PARAGUAY', 'ELSALVADOR', 
        'SURINAME', 'TRINIDAD', 'URUGUAY', 'CURACAO', 'VENEZUELA', 
        'OTHERLATIN'
    ],
    '09_WEU': [
        'AUSTRIA', 'BELGIUM', 'GREECE', 'SWITLAND', 'CYPRUS', 
        'GERMANY', 'DENMARK', 'SPAIN', 'FINLAND', 'FRANCE', 
        'UK', 'IRELAND', 'ICELAND', 'ITALY', 'LUXEMBOU', 
        'MALTA', 'NETHLAND', 'NORWAY', 'PORTUGAL', 'SWEDEN', 
        'TURKEY', 'GIBRALTAR', 'GREENLAND'
    ],
    '10_EEU': [
        'ALBANIA', 'BULGARIA', 'BOSNIAHERZ', 'CZECH', 'ESTONIA', 
        'CROATIA', 'HUNGARY', 'LITHUANIA', 'LATVIA', 'NORTHMACED', 
        'MONTENEGRO', 'ROMANIA', 'POLAND', 'SERBIA', 'SLOVAKIA', 
        'SLOVENIA', 'KOSOVO'
    ],
    '11_RFSU': [
        'ARMENIA', 'AZERBAIJAN', 'BELARUS', 'GEORGIA', 'KAZAKHSTAN', 
        'KYRGYZSTAN', 'MOLDOVA', 'TAJIKISTAN', 'TURKMENIST', 'UKRAINE', 
        'UZBEKISTAN'
    ],
    '12_MEA': [
        'UAE', 'BAHRAIN', 'ALGERIA', 'EGYPT', 'IRAN', 
        'IRAQ', 'ISRAEL', 'JORDAN', 'KUWAIT', 'LEBANON', 
        'LIBYA', 'MOROCCO', 'OMAN', 'QATAR', 'SAUDIARABI', 
        'SUDAN', 'SSUDAN', 'TUNISIA', 'YEMEN', 'SYRIA', 
        'PALESTINE'
    ],
    '13_AFR': [
        'ANGOLA', 'BENIN', 'BOTSWANA', 'COTEIVOIRE', 'CAMEROON', 
        'CONGO', 'CONGOREP', 'ERITREA', 'ETHIOPIA', 'GABON', 
        'GHANA', 'EQGUINEA', 'KENYA', 'MADAGASCAR', 'MOZAMBIQUE', 
        'MAURITIUS', 'NAMIBIA', 'NIGER', 'NIGERIA', 'RWANDA', 
        'SENEGAL', 'ESWATINI', 'TOGO', 'TANZANIA', 'UGANDA', 
        'SOUTHAFRIC', 'ZAMBIA', 'ZIMBABWE', 'OTHERAFRIC', 'BURKINAFASO', 
        'CHAD', 'MALI', 'MAURITANIA'
    ],
    '14_RCPA': ['CAMBODIA', 'LAO', 'VIETNAM'],
    '15_SAS': ['BANGLADESH', 'INDIA', 'SRILANKA', 'NEPAL', 'PAKISTAN'],
    '16_RPAS': [
        'BRUNEI', 'INDONESIA', 'MYANMAR', 'MALAYSIA', 'PHILIPPINE', 
        'SINGAPORE', 'THAILAND', 'TAIPEI', 'OTHERASIA'
    ],
    '17_RPAO': ['AUSTRALI', 'NZ']
}

country_to_region = {}
for region, countries in regions.items():
    for country in countries:
        country_to_region[country] = region

#world_df['Region'] = world_df['Country'].map(country_to_region).fillna('R17_18OTH')
all_regions = ['01_KOR', '02_CHN', '03_JPN', '04_RUS', '05_MNG', '06_PRK', '07_NAM', '08_LAM', '09_WEU',
               '10_EEU', '11_RFSU', '12_MEA', '13_AFR', '14_RCPA', '15_SAS', '16_RPAS', '17_RPAO']

# 누락된(정의되지 않은) 지역 찾기 및 출력
world_df['Region'] = world_df['Country'].map(country_to_region)
unique_countires = world_df['Country'].unique()

defined_countries = []
for countries in regions.values():
    defined_countries.extend(countries)

defined_countries_set = set(defined_countries)

# world_df에 있는 전체 국가 및 지역 목록 가져오기
unique_countries = world_df['Country'].dropna().unique()

# 전체 중에서 17개 지역 분류에 없는(벗어나는) 항목만 골라내기
missing_countries = [country for country in unique_countries if country not in defined_countries_set]

# 결과 출력
print("="*60)
print(f"🌍 전체 데이터 항목 수: {len(unique_countries)}개")
print(f"✅ 17개 지역 분류에 포함된 항목 수: {len(defined_countries_set)}개")
print(f"🚨 분류에서 벗어난 (누락된) 항목 수: {len(missing_countries)}개")
print("="*60 + "\n")

print("--- [분류에서 벗어난 국가 및 지역 리스트] ---")
for i, country in enumerate(sorted(missing_countries)):
    print(f"{i+1:02d}. {country}")

#%%
# =====================================================================
# 4) 모든 지역 데이터를 하나의 Long Format CSV로 통합 저장
# =====================================================================
all_pivots = []

for region_name in all_regions:
    region_df = world_df[world_df['Region'] == region_name]
    
    # 98x67 양식 생성
    if region_df.empty:
        pivot_df = pd.DataFrame(0, index=my_flows, columns=my_products)
    else:
        pivot_df = pd.pivot_table(
            region_df, values='Energy', index='Flow', columns='Product', 
            aggfunc='sum', fill_value=0
        )
        # 지정된 순서대로 행렬 구조 강제 고정
        pivot_df = pivot_df.reindex(index=my_flows, columns=my_products, fill_value=0)
    
    # Matrix 형태를 Long Format(열 형태)으로 변환
    # stack()을 사용하면 [Flow, Product, Value] 형태로 풀립니다.
    flat_df = pivot_df.stack().reset_index()
    flat_df.columns = ['Flow', 'Product', 'Energy']
    
    # 해당 데이터가 어느 지역인지 표시하는 컬럼 추가
    flat_df['Region'] = region_name
    all_pivots.append(flat_df)

# 모든 지역 데이터를 하나로 통합
final_df = pd.concat(all_pivots, ignore_index=True)

# 컬럼 순서 조정 (Region, Flow, Product, Energy)
final_df = final_df[['Flow', 'Product', 'Region', 'Energy']]

# CSV 파일로 저장
output_csv = "2019_WorldEnergyBalance_22e.csv"
final_df.to_csv(output_csv, index=False, encoding='utf-8-sig')

print(f"🎉 통합 CSV 생성 완료: {output_csv}")
print(f"총 행 수: {len(final_df)}행 (17개 지역 x 108개 Flow x 68개 Product)")