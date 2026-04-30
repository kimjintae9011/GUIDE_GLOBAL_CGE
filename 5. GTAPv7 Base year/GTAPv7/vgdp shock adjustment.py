import time
import pandas as pd
import matplotlib.pyplot as plt
import subprocess
import os

start_time = time.time()

regions = [
    "r_01KOR", "r_02CHN", "r_03JPN", "r_04RUS", "r_05MNG", "r_06PRK",
    "r_07NAM", "r_08LAM", "r_09WEU", "r_10EEU", "r_11FSU", "r_12MEA",
    "r_13AFR", "r_14CPA", "r_15SAS", "r_16PAS", "r_17PAO"
]

target_dict = {
    "r_01KOR": 1.69, "r_02CHN": 15.74, "r_03JPN": 3.80, "r_04RUS": 7.55,
    "r_05MNG": 23.75, "r_06PRK": -75.91, "r_07NAM": 9.46, "r_08LAM": -5.94,
    "r_09WEU": 4.41, "r_10EEU": 12.02, "r_11FSU": 16.29, "r_12MEA": 3.22,
    "r_13AFR": 13.53, "r_14CPA": 44.55, "r_15SAS": 6.75, "r_16PAS": 7.54,
    "r_17PAO": 4.83
}

user_defined_initial_shocks = {
    "r_01KOR": 3.713725, "r_02CHN": 8.467678, "r_03JPN": 3.496938, "r_04RUS": -0.33289,
    "r_05MNG": -0.012931, "r_06PRK": -39.856731, "r_07NAM": 4.529327, "r_08LAM": -0.479197,
    "r_09WEU": 4.020109, "r_10EEU": 7.193155, "r_11FSU": 6.387605, "r_12MEA": 0.23926,
    "r_13AFR": 4.268502, "r_14CPA": 28.232084, "r_15SAS": 8.105916, "r_16PAS": 1.07475,
    "r_17PAO": 0.008504
}

step_factor = 1.0
min_step = 0.001
max_iterations = 100

# 지역별 허용 오차 (일반은 0.01, 민감한 지역은 0.05 허용)
tolerance_dict = {r: 0.05 if r in ["r_05MNG", "r_06PRK"] else 0.01 for r in regions}

results = []
vgdp_history = {region: [] for region in regions}
shock_history = {region: [] for region in regions}
step_history = {region: [] for region in regions}

recent_errors = {region: [] for region in regions}


def extract_vgdp_from_lines(lines, target_region):
    for line in lines:
        if line.strip().startswith(target_region):
            parts = line.strip().split(",")
            if len(parts) >= 2:
                try:
                    return float(parts[1].strip())
                except:
                    return None
    return None

def extract_vgdp_dict_from_file(filepath, region_list):
    with open(filepath, "r", encoding="utf-8") as f:
        lines = f.readlines()
    return {region: extract_vgdp_from_lines(lines, region) for region in region_list}

def write_cmf_file(shock_dict, sim):
    header = """!===============================================================================
!           CMF file for running the GTAPv7 model outside of RunGTAP             
!===============================================================================

auxiliary files = gtapv7;           
check-on-read elements = warn; 
cpu=yes; 
log file = yes;  
start with MMNZ = 700000000;

! -----------
! Input files
! ----------- 
File GTAPSETS = SETS-72x17.har; 
File GTAPDATA = BASEDATA-72x17.har;
File GTAPPARM = Default-72x17.prm;

! ------------
! Updated file
! ------------ 
Updated File GTAPDATA = <CMF>.UPD;

! ------------
! Output files
! ------------ 
File GTAPVOL = GTAPVOL-<CMF>.har;
File WELVIEW = WELVIEW-<CMF>.har;
File GTAPSUM = SUMMARY-<CMF>.har;

! ---------------
! Solution method
! ---------------
Method = Euler;
Steps = 3;

Exogenous
    afall 
    afcom 
    afeall 
    afecom 
    afereg 
    afesec 
    afreg 
    afsec
    aintall 
    aintreg 
    aintsec 
    ams 
    aoall 
    aoreg 
    aosec 
    atd
    atf 
    atm 
    ats 
    au 
    avareg 
    avasec 
    cgdslack 
    dpgov
    dppriv 
    dpsave 
    endwslack
    incomeslack 
    pfactwld 
    pop
    profitslack 
    psaveslack 
    qe 
    qesf 
    tinc 
    tm 
    tms 
    to
    tp 
    tradslack 
    tx 
    txs;
Rest Endogenous;

Verbal Description = update shocks;
Shock pop = file SHOCKS-72x17.har header \"POP\";
Shock qe = file SHOCKS-72x17.har header \"QE\";
!===============================================================================
!                               Shock statements                                
!==============================================================================="""

    avareg_shocks = [f'shock avareg(\"{region}\") = {value};' for region, value in shock_dict.items()]
    footer = f'solution file = {sim};'

    with open("GTAP_run.cmf", "w") as f:
        f.write(header + "\n")
        f.write("\n".join(avareg_shocks) + "\n")
        f.write(footer + "\n")

shock_dict = {}
step_dict = {}
prev_vgdp = {}

for region in regions:
    init_shock = user_defined_initial_shocks.get(region, 0.05)
    step = abs(init_shock * step_factor)
    shock_dict[region] = init_shock
    step_dict[region] = step
    prev_vgdp[region] = None

for i in range(max_iterations):
    sim = f"sim{i+1}"
    print(f"\n🔁 반복 {i+1}")
    write_cmf_file(shock_dict, sim)
    subprocess.run(["GTAPv7", "-cmf", "GTAP_run.cmf"])
    subprocess.run(["sltoht", "-ses", "-map=GTAP.map", f"{sim}.sl4", f"{sim}.csv"])
    vgdp_dict = extract_vgdp_dict_from_file(f"{sim}.csv", regions)
    all_converged = True

    for region in regions:
        vgdp = vgdp_dict.get(region)
        target = target_dict[region]
        prev = prev_vgdp[region]
        step = step_dict[region]
        shock = shock_dict[region]
        tol = tolerance_dict[region]
        if vgdp is None:
            continue

        error = target - vgdp
        results.append((i+1, region, shock, vgdp, error))
        vgdp_history[region].append(vgdp)
        shock_history[region].append(shock)
        step_history[region].append(step)
        recent_errors[region].append(abs(error))
        if len(recent_errors[region]) > 5:
            recent_errors[region].pop(0)

        # 수렴 판단
        if abs(error) > tol:
            all_converged = False
            if prev is not None and (vgdp - prev) * error < 0:
                step = -step * 0.7
            elif len(recent_errors[region]) == 5 and max(recent_errors[region]) < 0.05:
                step *= 0.8

            shock += step
            if abs(step) < min_step:
                continue
            shock_dict[region] = shock
            step_dict[region] = step
            prev_vgdp[region] = vgdp

    if all_converged:
        print("\n✅ 모든 지역 수렴 완료!")
        break

print("\n📊 최종 결과 요약:")
for _, r, s, v, _ in results[-len(regions):]:
    print(f"{r} | Shock: {s:.5f}, VGDP: {v:.5f}")

end_time = time.time()
elapsed_minutes = (end_time - start_time) / 60
print(f"\n⏱ 총 수행 시간: {elapsed_minutes:.2f} 분")

# 📊 결과 시각화: VGDP 수렴 추이
df = pd.DataFrame(results, columns=["Iteration", "Region", "Shock", "VGDP", "Error"])

plt.figure(figsize=(14, 7))
for region in df["Region"].unique():
    region_df = df[df["Region"] == region]
    plt.plot(region_df["Iteration"], region_df["VGDP"], label=region)

plt.axhline(0, color='black', linestyle='--', linewidth=0.5)
plt.xlabel("반복 횟수")
plt.ylabel("VGDP 변화 (%)")
plt.title("📉 지역별 VGDP 수렴 추이")
plt.legend(bbox_to_anchor=(1.05, 1), loc="upper left")
plt.tight_layout()
plt.grid(True)
plt.show()

# 📋 VGDP, Shock, Step 테이블 출력
vgdp_df = pd.DataFrame(vgdp_history, index=[f"sim{i+1}" for i in range(len(next(iter(vgdp_history.values()))))]).T
shock_df = pd.DataFrame(shock_history, index=[f"sim{i+1}" for i in range(len(next(iter(shock_history.values()))))]).T
step_df = pd.DataFrame(step_history, index=[f"sim{i+1}" for i in range(len(next(iter(step_history.values()))))]).T

vgdp_df.index.name = "Region"
shock_df.index.name = "Region"
step_df.index.name = "Region"

print("\n📋 VGDP 결과:")
print(vgdp_df.round(4))


vgdp_df.to_excel("vgdp_result.xlsx")
shock_df.to_excel("shock_result.xlsx")
step_df.to_excel("step_result.xlsx")