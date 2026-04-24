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
WORLDBIG1 = pd.read_csv("WORLDBIG_by_COUNTRY_from_GIBRALTAR_to_RWANDA.TXT", sep="\s+", header=None)
WORLDBIG2 = pd.read_csv("WORLDBIG_by_COUNTRY_from_SAUDIARABIA_to_MAURITANIA.TXT", sep="\s+", header=None)
WORLDBIG3 = pd.read_csv("WORLDBIG_by_COUNTRY_from_WORLD_to_GHANA.TXT", sep="\s+", header=None)

#%%
# =====================================================================
# 1) 연도(2019년) 및 단위(TJ) 필터링 
# =====================================================================
col_names = ['Country', 'Product', 'Year', 'Flow', 'Unit', 'Energy', 'Flag']
for df in [WORLDBIG1, WORLDBIG2, WORLDBIG3]:
    df.columns = col_names

world_df = pd.concat([WORLDBIG1, WORLDBIG2, WORLDBIG3], ignore_index=True)
world_df = world_df[world_df['Year'].astype(str) == '2019']
world_df = world_df[world_df['Unit'] == 'KTOE']  

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
    'f1_INDPROD','f2_IMPORTS','f3_EXPORTS','f4_BUNKERS_MARINE','f5_BUNKERS_AVIATION','f6_STCHANAT','f7_TES','f8_TRANSFERS','f9_STATDIFF','f10_TOTTRANF','f11_MAINELEC',
    'f12_AUTOELEC','f13_MAINCHP','f14_AUTOCHP','f15_MAINHEAT','f16_AUTOHEAT','f17_THEAT','f18_TBOILER','f19_TELE','f20_TBLASTFUR','f21_TGASWKS','f22_TCOKEOVS','f23_TPATFUEL',
    'f24_TBKB','f25_TREFINER','f26_TPETCHEM','f27_TCOALLIQ','f28_TGTL','f29_TBLENDGAS','f30_TCHARCOAL','f31_TNONSPEC','f32_TOTENGY','f33_EMINES','f34_EOILGASEX','f35_EBLASTFUR',
    'f36_EGASWKS','f37_EBIOGAS','f38_ECOKEOVS','f39_EPATFUEL','f40_EBKB','f41_EREFINER','f42_ECOALLIQ','f43_ELNG','f44_EGTL','f45_EPOWERPLT','f46_EPUMPST','f47_ENUC','f48_ECHARCOAL',
    'f49_ENONSPEC','f50_DISTLOSS','f51_TFC','f52_TOTIND','f53_MINING','f54_CONSTRUC','f55_MANUFACT','f56_IRONSTL','f57_CHEMICAL','f58_NONFERR','f59_NONMET','f60_TRANSEQ','f61_MACHINE',
    'f62_FOODPRO','f63_PAPERPRO','f64_WOODPRO','f65_TEXTILES','f66_INONSPEC','f67_TOTTRANS','f68_WORLDAV','f69_DOMESAIR','f70_ROAD','f71_RAIL','f72_PIPELINE','f73_WORLDMAR','f74_DOMESNAV',
    'f75_TRNONSPE','f76_RESIDENT','f77_COMMPUB','f78_AGRI_FOREST','f79_FISHING','f80_ONONSPEC','f81_NE_TOT','f82_NE_IND_TRANSF','f83_NE_IND','f84_NE_IRONSTL','f85_NE_CHEM','f86_NE_NONFERR',
    'f87_NE_NONMET','f88_NE_TRANSEQ','f89_NE_MACHINE','f90_NE_MINING','f91_NE_FOODPRO','f92_NE_PAPERPRO','f93_NE_WOODPRO','f94_NE_CONSTRUC','f95_NE_TEXTILES','f96_NE_INONSPEC','f97_NE_TRANS',
    'f98_NE_OTHER'
]

my_products = [
    'p1_HARDCOAL_ND','p2_BROWNCOAL_ND','p3_ANTHRACITE','p4_COKING_COAL','p5_OTH_BITCOAL','p6_SUB_BITCOAL','p7_LIGNITE','p8_PATENT_FUEL','p9_COKE_OVEN_COKE_OTH',
    'p10_GAS_COKE','p11_COAL_TAR','p12_BKB','p13_GASWORKS_GAS','p14_COKE_OVEN_GAS','p15_BLAST_FURNACE_GAS','p16_OTH_RECOVGASES','p17_PEAT','p18_PEAT_PRODUCTS',
    'p19_OIL_SHALE','p20_NATURAL_GAS','p21_OIL_PRIM_PRODUCTS_ND','p22_CRUDE_OIL','p23_NGL','p24_REFINERY_FEEDSTOCKS','p25_ADDITIVES','p26_HYDROCARBONS_OTHER',
    'p27_REFINERY_GAS','p28_ETHANE','p29_LPG','p30_MOTOR_GASOLINE_NONBIO','p31_AVIATION_GASOLINE','p32_GASOLINE_JET','p33_KEROSENE_JET_NONBIO','p34_KEROSENE_OTHER',
    'p35_GAS_DIESEL_OIL_NONBIO','p36_FUEL_OIL_RESIDUAL','p37_NAPHTHA','p38_WHITE_SPIRIT','p39_LUBRICANTS','p40_BITUMEN','p41_PARAFFIN_WAXES','p42_PETROLEUM_COKE',
    'p43_OTH_SEC_OIL_PRODS_ND','p44_WASTE_INDUSTRIAL_NONREN','p45_WASTE_MUNICIPAL_REN','p46_WASTE_MUNICIPAL_NONREN','p47_PRIMARY_SOLID_BIOFUEL','p48_BIOGASES',
    'p49_BIOGASOLINE','p50_BIODIESEL','p51_KEROSENE_JET_BIO','p52_LIQBIOFUEL_OTH','p53_BIOFUEL_NONSPEC','p54_CHARCOAL','p55_RENEWABLES_TOTAL','p56_MANUFACTURED_GAS_OUTPUT',
    'p57_HEAT_COMBUSTIBLES_NS','p58_NUCLEAR','p59_HYDRO','p60_GEOTHERMAL','p61_SOLAR_PV','p62_SOLAR_THERMAL','p63_TIDE_WAVE_OCEAN','p64_WIND','p65_OTH_ENSOURC','p66_ELECTRICITY',
    'p67_HEAT'  
]

# 1. 선생님이 지정하신 원본 이름 리스트 (첫 번째 '_' 기준으로만 자르기)
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

# =====================================================================
# ★ 추가: 원본 데이터 이름을 선생님이 만든 f1_, p1_ 형식으로 실제로 변환 ★
# =====================================================================
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
    '08_LAM': ['ARGENTINA', 'BOLIVIA', 'BRAZIL', 'CHILE', 'COLOMBIA', 'COSTARICA', 'CUBA', 'DOMINICANREP', 'ECUADOR', 'GUATEMALA', 'GUYANA', 'HAITI', 'HONDURAS', 'JAMAICA', 'MEXICO', 'NICARAGUA', 'PANAMA', 'PERU', 'PARAGUAY', 'ELSALVADOR', 'SURINAME', 'TRINIDAD', 'URUGUAY', 'CURACAO', 'VENEZUELA', 'OTHERLATIN'],
    '09_WEU': ['AUSTRIA', 'BELGIUM', 'GREECE', 'SWITZERLAND', 'CYPRUS', 'GERMANY', 'DENMARK', 'SPAIN', 'FINLAND', 'FRANCE', 'UK', 'IRELAND', 'ICELAND', 'ITALY', 'LUXEMBOURG', 'MALTA', 'NETHERLANDS', 'NORWAY', 'PORTUGAL', 'SWEDEN', 'TURKIYE', 'GIBRALTAR'],
    '10_EEU': ['ALBANIA', 'BULGARIA', 'BOSNIAHERZ', 'CZECH', 'ESTONIA', 'CROATIA', 'HUNGARY', 'LITHUANIA', 'LATVIA', 'NORTHMACED', 'MONTENEGRO', 'ROMANIA', 'POLAND', 'SERBIA', 'SLOVAKIA', 'SLOVENIA', 'KOSOVO'],
    '11_RFS': ['ARMENIA', 'AZERBAIJAN', 'BELARUS', 'GEORGIA', 'KAZAKHSTAN', 'KYRGYZSTAN', 'MOLDOVA', 'TAJIKISTAN', 'TURKMENISTAN', 'UKRAINE', 'UZBEKISTAN'],
    '12_MEA': ['UAE', 'BAHRAIN', 'ALGERIA', 'EGYPT', 'IRAN', 'IRAQ', 'ISRAEL', 'JORDAN', 'KUWAIT', 'LEBANON', 'LIBYA', 'MOROCCO', 'OMAN', 'QATAR', 'SAUDIARABIA', 'SUDAN', 'SSUDAN', 'TUNISIA', 'YEMEN', 'SYRIA', 'PALESTINE'],
    '13_AFR': ['ANGOLA', 'BENIN', 'BOTSWANA', 'COTEIVOIRE', 'CAMEROON', 'CONGO_DRC', 'CONGO_REPUB', 'ERITREA', 'ETHIOPIA', 'GABON', 'GHANA', 'EQGUINEA', 'KENYA', 'MADAGASCAR', 'MOZAMBIQUE', 'MAURITIUS', 'NAMIBIA', 'NIGER', 'NIGERIA', 'RWANDA', 'SENEGAL', 'ESWATINI', 'TOGO', 'TANZANIA', 'UGANDA', 'SOUTHAFRICA', 'ZAMBIA', 'ZIMBABWE', 'OTHERAFRIC', 'BURKINAFASO', 'CHAD', 'MALI', 'MAURITANIA'],
    '14_MEK': ['CAMBODIA', 'LAO', 'VIETNAM'],
    '15_SAS': ['BANGLADESH', 'INDIA', 'SRILANKA', 'NEPAL', 'PAKISTAN'],
    '16_SEA': ['BRUNEI', 'INDONESIA', 'MYANMAR', 'MALAYSIA', 'PHILIPPINES', 'SINGAPORE', 'THAILAND', 'TAIPEI', 'OTHERASIA'],
    '17_ANZ': ['AUSTRALIA', 'NEWZEALAND', 'GREENLAND']
}

country_to_region = {}
for region, countries in regions.items():
    for country in countries:
        country_to_region[country] = region

world_df['Region'] = world_df['Country'].map(country_to_region).fillna('R17_18OTH')
all_regions = list(regions.keys()) + ['R17_18OTH']

# 누락된(정의되지 않은) 지역 찾기 및 출력
world_df['Region'] = world_df['Country'].map(country_to_region)
unique_countires = world_df['Country'].unique()

defined_countries = []
for countries in regions.values():
    defined_countries.extend(countries)

defined_countries_set = set(defined_countries)

# world_df에 있는 전체 189개 국가 목록 가져오기
unique_countries = world_df['Country'].dropna().unique()

# 전체 189개 중에서 17개 지역 분류에 없는(벗어나는) 항목만 골라내기
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

# =====================================================================
# 4) 지역별 시트 생성 및 Pivot Table (순서 강제 적용)
# =====================================================================
output_filename = "IEA_17_Regions_2019_Fixed_Matrix.xlsx"

with pd.ExcelWriter(output_filename, engine='openpyxl') as writer:
    for region_name in all_regions:
        region_df = world_df[world_df['Region'] == region_name]
        
        # 데이터가 아예 없는 지역이라도 98x67 양식(0으로 채워진 틀)을 유지하기 위해
        if region_df.empty:
            pivot_df = pd.DataFrame(0, index=my_flows, columns=my_products)
        else:
            pivot_df = pd.pivot_table(
                region_df, values='Energy', index='Flow', columns='Product', 
                aggfunc='sum', fill_value=0
            )
            
            # ★ 핵심: 실제 데이터에 존재하지 않는 항목이더라도, 
            # 내가 지정한 98개 Flow와 67개 Product 순서대로 행렬 구조 강제 고정
            pivot_df = pivot_df.reindex(index=my_flows, columns=my_products, fill_value=0)
        
        # A1 셀을 빈칸으로 만들기 위해 인덱스/컬럼의 이름 속성 삭제
        pivot_df.index.name = None
        pivot_df.columns.name = None
        
        pivot_df.to_excel(writer, sheet_name=region_name)

print(f"🎉 모든 작업이 완료되었습니다! 엑셀 파일 '{output_filename}'을 확인해 주세요. 모든 시트가 98행 x 67열로 통일되었습니다.")

#%% TFC

world_df = pd.concat([WORLDBIG1, WORLDBIG2, WORLDBIG3], ignore_index=True)

# =====================================================================
# 1. 시계열 데이터 추출 (1990년 ~ 2019년)
# =====================================================================
# 주의: 연도 필터링을 2019년 하나로 고정하지 않고, 트렌드를 볼 수 있도록 변경합니다.
# (만약 앞선 코드에서 매핑을 이미 진행했다면 'TFC' 대신 'f51_TFC', 'TOTAL' 대신 'p66_TOTAL'을 입력하세요)
tfc_df = world_df[
    (world_df['Flow'] == 'TFC') & 
    (world_df['Product'] == 'TOTAL') & 
    (world_df['Unit'] == 'KTOE') # TJ로 쓰셨다면 'TJ'로 변경
].copy()

# Year 열을 숫자로 변환하고, 1990년 이상의 데이터만 남김
tfc_df['Year'] = pd.to_numeric(tfc_df['Year'], errors='coerce')
tfc_df = tfc_df[(tfc_df['Year'] >= 1990) & (tfc_df['Year'] <= 2023)]

# 동북아 6개국 매핑
nea_regions = {
    '01_KOR': ['KOREA'], 
    '02_CHN': ['CHINA', 'HONGKONG'], 
    '03_JPN': ['JAPAN'], 
    '04_RUS': ['RUSSIA'],
    '05_MNG': ['MONGOLIA'], 
    '06_PRK': ['KOREADPR']
}

country_to_region = {}
for region, countries in nea_regions.items():
    for country in countries:
        country_to_region[country] = region

tfc_df['Region'] = tfc_df['Country'].map(country_to_region)
tfc_df = tfc_df.dropna(subset=['Region']) # 6개국 이외 데이터 삭제

# 연도별, 지역별 합계 피벗 테이블 생성
trend_df = tfc_df.groupby(['Year', 'Region'])['Energy'].sum().unstack()

# 상대적 성장 지수(1990=100) 계산
indexed_df = trend_df.div(trend_df.loc[1990]) * 100


# =====================================================================
# 2. Plotly 인터랙티브 그래프 그리기
# =====================================================================
pio.renderers.default = 'browser'
fig = go.Figure()
regions = list(trend_df.columns)
num_regions = len(regions)

# (1) 절대 규모 (기본) Trace 추가
for region in regions:
    fig.add_trace(
        go.Scatter(x=trend_df.index, y=trend_df[region], 
                   name=f"{region}", mode='lines+markers', visible=True)
    )

# (2) 상대적 성장 지수 (1990=100) Trace 추가 (초기에는 숨김 처리)
for region in regions:
    fig.add_trace(
        go.Scatter(x=indexed_df.index, y=indexed_df[region], 
                   name=f"{region} (지수)", mode='lines+markers', visible=False)
    )

# 버튼 클릭 시 보여줄 Trace 설정 (True/False 배열)
# Trace 0~5번은 절대규모, 6~11번은 지수
show_absolute = [True] * num_regions + [False] * num_regions
show_indexed  = [False] * num_regions + [True] * num_regions

# 그래프 레이아웃 및 상단 버튼(메뉴) 추가
fig.update_layout(
    title="<b>동북아 6개국 최종에너지소비(TFC) 트렌드 (1990-2019)</b><br><sup>오른쪽 범례(Legend)의 국가명을 클릭하면 해당 국가를 켜고 끌 수 있습니다.</sup>",
    xaxis_title="연도 (Year)",
    yaxis_title="Energy (KTOE)",
    template="plotly_white",
    hovermode="x unified", # 마우스 오버 시 같은 연도의 모든 값을 한 번에 보여줌
    
    # 상단 버튼 구성
    updatemenus=[
        dict(
            type="buttons",
            direction="right",
            x=0.0, y=1.15,
            xanchor="left", yanchor="top",
            buttons=list([
                dict(
                    label="절대 규모 (선형 스케일)",
                    method="update",
                    args=[{"visible": show_absolute}, 
                          {"yaxis": {"type": "linear", "title": "Energy (KTOE)"}}]
                ),
                dict(
                    label="절대 규모 (로그 스케일)",
                    method="update",
                    args=[{"visible": show_absolute}, 
                          {"yaxis": {"type": "log", "title": "Energy (Log Scale)"}}]
                ),
                dict(
                    label="상대적 성장 (1990=100)",
                    method="update",
                    args=[{"visible": show_indexed}, 
                          {"yaxis": {"type": "linear", "title": "Index (1990=100)"}}]
                ),
            ]),
        )
    ]
)

# 그래프 화면에 출력 (Jupyter Notebook이나 브라우저에 표시됨)
fig.show()