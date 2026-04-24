import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import os
import platform

# 1. 윈도우/맥 환경에 맞춘 한글 폰트 및 마이너스 기호 깨짐 방지 설정
if platform.system() == 'Windows':
    plt.rcParams['font.family'] = 'Malgun Gothic'  # 윈도우 환경
elif platform.system() == 'Darwin':
    plt.rcParams['font.family'] = 'AppleGothic'    # 맥 환경
plt.rcParams['axes.unicode_minus'] = False         # 마이너스(-) 기호 깨짐 방지
plt.rcParams['figure.dpi'] = 300                   # 논문용 고해상도 설정

# 2. 데이터 불러오기
file_path = 'cge_results.xlsx' 
df = pd.read_excel(file_path)

# 3. 데이터 클렌징 (핵심 추가 파트: 엑셀 내 보이지 않는 띄어쓰기 제거)
df['Commodity'] = df['Commodity'].astype(str).str.strip()
df['Scenario'] = df['Scenario'].astype(str).str.strip()
df['Partner'] = df['Partner'].astype(str).str.strip()

# 4. 데이터 전처리 (Wide -> Long format 변환)
id_vars = ['Commodity', 'Scenario', 'Partner']
value_vars = [col for col in df.columns if col not in id_vars and not col.startswith('Unnamed')]

df_long = pd.melt(df, id_vars=id_vars, value_vars=value_vars, var_name='Importer', value_name='Value')
df_long['Value'] = pd.to_numeric(df_long['Value'], errors='coerce').fillna(0)

# 5. 지역 축약 (Aggregation) 로직
def map_region(r):
    r_str = str(r).upper() # 대문자로 통일하여 검색
    
    if 'KOR' in r_str: return 'KOR'
    elif 'CHN' in r_str: return 'CHN'
    elif 'JPN' in r_str: return 'JPN'
    elif 'RUS' in r_str: return 'RUS'
    elif 'MNG' in r_str: return 'MNG'
    elif 'PRK' in r_str: return 'PRK'
    elif 'MEA' in r_str: return 'MEA'
    elif 'MEK' in r_str: return 'MEK'
    elif 'ANZ' in r_str: return 'ANZ'
    else: return 'ROW'

df_long['Importer_Agg'] = df_long['Importer'].apply(map_region)
df_long['Partner_Agg'] = df_long['Partner'].apply(map_region)

df_agg = df_long.groupby(['Commodity', 'Scenario', 'Partner_Agg', 'Importer_Agg'])['Value'].sum().reset_index()


# 6. 히트맵 축 순서 설정
ordered_cols = ['KOR', 'CHN', 'JPN', 'RUS', 'MNG', 'PRK', 'MEA', 'MEK', 'ANZ', 'ROW']

# 7. 시각화 및 저장
commodities = df_agg['Commodity'].unique()
output_dir = 'heatmap_results'
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

for comm in commodities:
    df_comm = df_agg[df_agg['Commodity'] == comm]
    
    # 각 시나리오별 데이터 추출
    df_bau = df_comm[df_comm['Scenario'] == 'NEAICM_ALL_NZ'].set_index(['Partner_Agg', 'Importer_Agg'])['Value']
    df_inz = df_comm[df_comm['Scenario'] == 'NEAICM_CJK_NZ'].set_index(['Partner_Agg', 'Importer_Agg'])['Value']
    df_neaa = df_comm[df_comm['Scenario'] == 'Isolated_NZ'].set_index(['Partner_Agg', 'Importer_Agg'])['Value']
    
    # 데이터가 비어있는지 확인 (에러 방지)
    if df_bau.empty or df_inz.empty or df_neaa.empty:
        print(f"[{comm}] 상품은 비교할 시나리오 데이터가 부족하여 스킵합니다.")
        continue

    # BAU 대비 변화량 계산
    diff_inz = (df_inz - df_bau).reset_index()
    diff_neaa = (df_neaa - df_bau).reset_index()
    
    # Pivot 변환
    pivot_inz = diff_inz.pivot(index='Partner_Agg', columns='Importer_Agg', values='Value').reindex(index=ordered_cols, columns=ordered_cols).fillna(0)
    pivot_neaa = diff_neaa.pivot(index='Partner_Agg', columns='Importer_Agg', values='Value').reindex(index=ordered_cols, columns=ordered_cols).fillna(0)
    
    # 시각화 (1행 2열)
    fig, axes = plt.subplots(nrows=1, ncols=2, figsize=(18, 7))
    
    # 첫 번째 패널: Isolated_NZ vs BAU
    sns.heatmap(pivot_inz, annot=True, cmap='coolwarm_r', center=0, fmt=".2f", 
                ax=axes[0], cbar_kws={'label': 'Change in Trade Value'})
    axes[0].set_title(f'[{comm}] NEAICM_CJK_NZ vs NEAICM_ALL_NZ', fontsize=14, pad=10)
    axes[0].set_xlabel('Importer')
    axes[0].set_ylabel('Exporter')
    axes[0].tick_params(axis='x', rotation=45)
    
    # 두 번째 패널: NEAICM_ALL_NZ vs BAU
    sns.heatmap(pivot_neaa, annot=True, cmap='coolwarm_r', center=0, fmt=".2f", 
                ax=axes[1], cbar_kws={'label': 'Change in Trade Value'})
    axes[1].set_title(f'[{comm}] Isolated_NZ vs NEAICM_ALL_NZ', fontsize=14, pad=10)
    axes[1].set_xlabel('Importer')
    axes[1].set_ylabel('Partner')
    axes[1].tick_params(axis='x', rotation=45)
    
    plt.tight_layout()
    
    save_path = os.path.join(output_dir, f'Heatmap_Comparison_{comm}.png')
    plt.savefig(save_path)
    plt.close()
    
    print(f"[{comm}] 히트맵 저장 완료: {save_path}")

print("모든 시각화 작업이 성공적으로 완료되었습니다!")