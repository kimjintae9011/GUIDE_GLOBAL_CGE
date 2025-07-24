import gdxpds
import pandas as pd
import os

# 경로 설정
gdx_dir = "C:/Users/kimc0/GUIDE_GLOBAL_CGE/2.RD_CGE/Output-w-t"
n_runs = 100

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