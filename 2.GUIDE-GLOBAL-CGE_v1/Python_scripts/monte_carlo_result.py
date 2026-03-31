import gdxpds
import pandas as pd
import os
import numpy as np

# 경로 설정
gdx_dir = "C:/Users/kimc0/GUIDE_GLOBAL_CGE/2.RD_CGE/Output_w-t"
n_runs = 500

all_energy = []

for i in range(1, n_runs + 1):
    run_id = f"{i:03d}"
    file_path = os.path.join(gdx_dir, f"results_{run_id}.gdx")

    # GDX 파일 로드
    data = gdxpds.to_dataframes(file_path)

    # 'valAct(z,t)' 데이터 추출
    if "valAct" in data:
        df = data["valAct"]
        df["run"] = run_id
        all_energy.append(df)

# 병합
energy_df = pd.concat(all_energy)

# 컬럼 정리
energy_df = energy_df.rename(columns={"value": "energy_value"})

# 결과 확인
print(energy_df.head())

# 전처리: 공백 제거, 형 변환
energy_df["Z"] = energy_df["Z"].astype(str).str.strip()
energy_df["SCEN"] = energy_df["SCEN"].astype(str).str.strip()
energy_df["TIME"] = energy_df["TIME"].astype(int)  # 문자열 -> 정수형

# 필터링 조건
target_z = "01_KOR"
target_time = 2050
target_scen = "BAU"

subset = energy_df[
    (energy_df["Z"] == target_z) &
    (energy_df["TIME"] == target_time) &
    (energy_df["SCEN"] == target_scen)
]

values = subset["Value"].astype(float).to_numpy()

# 통계량 계산
mean = np.mean(values)
std = np.std(values)
cv = std / mean
relative_uncertainty_percent = cv * 100

# 출력
print(f"✅ 대상: Z={target_z}, TIME={target_time}, SCEN={target_scen}")
print(f"  - 평균: {mean:.3f}")
print(f"  - 표준편차: {std:.3f}")
print(f"  - 변동계수 (CV): {cv:.4f}")
print(f"  - 불확도 (%): {relative_uncertainty_percent:.2f}%")
