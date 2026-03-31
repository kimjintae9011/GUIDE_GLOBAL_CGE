import numpy as np
import subprocess
import os
import time

# 경로 설정
BASE_DIR = "C:/Users/kimc0/GUIDE_GLOBAL_CGE/2.RD_CGE"
GAMS_DIR = BASE_DIR
OUTPUT_DIR = os.path.join(BASE_DIR, "Output_w-t")
N_RUNS = 500

# 태양광 기술 진보율 샘플링
solar_samples = np.random.normal(loc=0.05, scale=0.01, size=N_RUNS)

# 전체 시작 시간
total_start = time.time()

for i in range(N_RUNS):
    run_id = f"{i+1:03d}"
    print(f"\n▶ Run {run_id} 시작...")

    start_time = time.time()

    # 1. .inc 파일 생성
    inc_path = os.path.join(GAMS_DIR, f"input_params_{run_id}.inc")
    with open(inc_path, 'w') as f:
        f.write(f"scalar solar_growth / {solar_samples[i]:.5f} /;\n")

    # 2. 모형 실행
    log_path = os.path.join(OUTPUT_DIR, f"log_{run_id}.lst").replace("\\", "/")
    model_cmd = [
        "gams", "Model_GTAP11c_new.gms",
        f"--runid={run_id}",
        f"o={log_path}"
    ]
    try:
        subprocess.run(model_cmd, cwd=GAMS_DIR, check=True)
    except subprocess.CalledProcessError as e:
        print(f"❌ Run {run_id} 오류 발생: {e}")
        continue

    end_time = time.time()
    elapsed = end_time - start_time
    formatted_elapsed = time.strftime("%H:%M:%S", time.gmtime(elapsed))
    print(f"✅ Run {run_id} 완료 - 소요 시간: {formatted_elapsed}")

# 전체 종료 시간
total_end = time.time()
total_elapsed = total_end - total_start
formatted_total_elapsed = time.strftime("%H:%M:%S", time.gmtime(total_elapsed))
print(f"\n✅ 모든 Monte Carlo 실행 완료! 총 소요 시간: {formatted_total_elapsed}")