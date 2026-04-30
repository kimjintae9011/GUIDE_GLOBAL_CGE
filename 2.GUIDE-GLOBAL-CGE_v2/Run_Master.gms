* ==============================================================================
* Run_Master.gms: Integrated Pipeline Control for GUIDE-Global CGE
* ==============================================================================
* ------------------------------------------------------------------------------
* [1] 제어 옵션 설정 (Control Switches: 1 = Run, 0 = Skip)
* ------------------------------------------------------------------------------
* --- Data & Baseline ---
$setglobal run_data    0
$setglobal run_base    0

* 기준연도 2019년 입력자료 및 2050년까지 전망 자료를 생성합니다.
* Baseline 시나리오를 Calibration 합니다.

* --- Scenarios ---
$setglobal RUN_BAU     1
$setglobal RUN_NDC    1
$setglobal RUN_NZ      1

* RUN_BAU  BAU 시나리오를 구동합니다.
* RUN_NDC NDC 시나리오를 구동합니다.
* RUN_NZ   NZ 시나리오를 구동합니다.

* --- Result Formats ---
$setglobal OUT_PRIM    1
$setglobal OUT_IAMC    1
*$setglobal OUT_IPCC    0

* OUT_PRIM CGE 기본 결과물을 출력합니다.
* OUT_IAMC Integrated Assessment Modeling Consortium (IAMC)  모형비교 결과물 포맷으로 출력합니다.
* OUT_IPCC  Intergovernmental Panel on Climate Change (IPCC)   2006년 국제표준 배출원 카테고리(Source/Sink Categories) 포맷으로 출력합니다.

* ------------------------------------------------------------------------------
* [2] Pre-processing: Data Generation & Baseline Calibration
* ------------------------------------------------------------------------------
$if %run_data% == 1 $call gams DATA_GTAP11c.gms lo=3
$if errorlevel 1 $abort "DATA_GTAP11c.gms Failed!"

$if %run_base% == 1 $call gams CAL_B_line.gms lo=3
$if errorlevel 1 $abort "CAL_B_line.gms Failed!"

* ------------------------------------------------------------------------------
* [3] Model Engine Load (모형 뼈대 로드)
* ------------------------------------------------------------------------------
$include "Sets.gms"

* 시나리오 집합을 명시적으로 선언
Set scen "Scenarios" / BAU, NDC, NZ /;

$include "Par.gms"
$include "Model.gms"

* 결과 추출용 변수(valGDP 등) 사전 선언 (루프 밖에서 단 한 번만 선언)
$include "Results_format/Declare_Results.gms"

* ------------------------------------------------------------------------------
* [4] Solve Options & Base Data Load
* ------------------------------------------------------------------------------
* 모형 선언
MODEL CGE World wide dynamic model /all/;

* 솔버 옵션
option cns = conopt4;
option profile=0;
option limrow=0, limcol=0, solprint=off;
$Offlisting
$Offsymlist
$Offinclude 

CGE.holdfixed = 1;
CGE.solvelink = 5;
CGE.scaleopt  = 1;

* 베이스라인 데이터 로드
$gdxin "Input_CGE/B_line.gdx"
$load A_VA_RES, GX, G_REALX, sh1X, sh0X
$gdxin  

* ==============================================================================
* [5] Scenario Execution (시나리오 순차 구동 및 결과 추출)
* ==============================================================================
* --- BAU 시나리오 ---
$ifthen %RUN_BAU% == 1
$include "Scenario/BAU_Solve.gms"

$setglobal CurrentSce "BAU"
$if %OUT_PRIM% == 1  $include "Results_format/CGE_PRIM_Results.gms"
$if %OUT_IAMC% == 1  $include "Results_format/IAMC.gms"
*$if %OUT_IPCC% == 1  $include "Results_format/IPCC2006GHGs.gms"
$endif

* --- NDC 시나리오 ---
$ifthen %RUN_NDC% == 1    
$include "Scenario/Reset_Closure.gms"
$include "Scenario/NDC_Solve.gms"

$setglobal CurrentSce "NDC"
$if %OUT_PRIM% == 1  $include "Results_format/CGE_PRIM_Results.gms"
$if %OUT_IAMC% == 1  $include "Results_format/IAMC.gms"
*$if %OUT_IPCC% == 1  $include "Results_format/IPCC2006GHGs.gms"
$endif

* --- NZ 시나리오 ---
$ifthen %RUN_NZ% == 1    
$include "Scenario/Reset_Closure.gms"
$include "Scenario/NZ_Solve.gms"

$setglobal CurrentSce "NZ"
$if %OUT_PRIM% == 1  $include "Results_format/CGE_PRIM_Results.gms"
$if %OUT_IAMC% == 1  $include "Results_format/IAMC.gms"
*$if %OUT_IPCC% == 1  $include "Results_format/IPCC2006GHGs.gms"
$endif

* ==============================================================================
* [6] Result Aggregation (결과 통합 병합)
* ==============================================================================
$if %OUT_PRIM% == 1  execute 'gdxmerge Output_CGE/PRIM_*.gdx output=Output_CGE/All_PRIM_Results.gdx';
$if %OUT_IAMC% == 1  execute 'gdxmerge Output_CGE/IAMC_*.gdx output=Output_CGE/All_IAMC_Results.gdx';
*$if %OUT_IPCC% == 1  execute 'gdxmerge Output_CGE/IPCC_*.gdx output=Output_CGE/All_IPCC_Results.gdx';