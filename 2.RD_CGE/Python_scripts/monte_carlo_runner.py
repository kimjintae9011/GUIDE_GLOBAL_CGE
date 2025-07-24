import numpy as np
import subprocess
import os

# 경로 설정
BASE_DIR = "C:/Users/kimc0/GUIDE_GLOBAL_CGE/2.RD_CGE"
GAMS_DIR = BASE_DIR
OUTPUT_DIR = os.path.join(BASE_DIR, "Output_w-t")
N_RUNS = 100

# 태양광 기술 진보율 샘플링
solar_samples = np.random.normal(loc=0.05, scale=0.01, size=N_RUNS)

for i in range(N_RUNS):
    run_id = f"{i+1:03d}"
    print(f"▶ Run {run_id} 시작...")

    # 1. .inc 파일 생성
    inc_path = os.path.join(GAMS_DIR, f"input_params_{run_id}.inc")
    with open(inc_path, 'w') as f:
        f.write(f"scalar solar_growth / {solar_samples[i]:.5f} /;\n")

    # 2. 모형 실행 (파라미터 include 포함)
    log_path = os.path.join(OUTPUT_DIR, f"log_{run_id}.lst").replace("\\", "/")
    model_cmd = [
        "gams", "Model_GTAP11c_new.gms",
        f"--runid={run_id}",
        f"o={log_path}"
    ]
    subprocess.run(model_cmd, cwd=GAMS_DIR, check=True)

print("✅ 모든 Monte Carlo 실행 완료!")