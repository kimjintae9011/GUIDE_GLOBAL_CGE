* ==============================================================================
* Run_Master.gms: Integrated Pipeline Control for GUIDE-Global CGE
* ==============================================================================
* ------------------------------------------------------------------------------
* [1] 제어 옵션 설정 (Control Switches: 1 = Run, 0 = Skip)
* ------------------------------------------------------------------------------
* --- Data & Baseline ---
$setglobal run_data   0
$setglobal run_base   0

* run_data  기준연도 2019년 입력자료 및 2050년까지 전망 자료를 생성합니다.
* run_base  Baseline 시나리오를 Calibration 합니다.

* --- Core Scenarios ---
$setglobal RUN_BAU           0
$setglobal RUN_NDC           1
$setglobal RUN_NZ             0
$setglobal RUN_UD             0

* RUN_BAU  BAU 시나리오를 구동합니다.
* RUN_NDC NDC 시나리오를 구동합니다.
* RUN_NZ   NZ 시나리오를 구동합니다.
* RUN_UD UserDefined 시나리오를 구동합니다.

* --- GTAP Conference 29th---
$setglobal RUN_BAU                        0
$setglobal RUN_Global_NZ               0
$setglobal RUN_Isolated_NZ             0
$setglobal RUN_Fragmented_NZ       0
$setglobal RUN_NEAICM_ALL_NZ      0
$setglobal RUN_NEAICM_CJK_NZ      0

* --- Result Formats ---
$setglobal OUT_PRIM      1
$setglobal OUT_IAMC      0
$setglobal OUT_IPCC      0
$setglobal OUT_db_CGE  0

* OUT_PRIM CGE 기본 결과물을 출력합니다.
* OUT_IAMC Integrated Assessment Modeling Consortium (IAMC)  모형비교 결과물 포맷으로 출력합니다.
* OUT_IPCC Intergovernmental Panel on Climate Change (IPCC)   2006년 국제표준 배출원 카테고리(Source/Sink Categories) 포맷으로 출력합니다.
* OUT_db_CGE Linkage를 위한 CGE 모형 결과물 포맷으로 출력합니다.

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

* 시나리오 집합을 명시적으로 선언 (User Defined 추가)
Set scen "Scenarios" / BAU, NDC, NZ, UD,
                                 Global_NZ, Isolated_NZ, Fragmented_NZ, NEAICM_ALL_NZ, NEAICM_CJK_NZ/;

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
*option cns = path;

*option iterlim = 0;
*option profile=0;
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

* ------------------------------------------------------------------------------
* [5] Scenario Execution
* ------------------------------------------------------------------------------
$include "Scenario/ScenarioList.gms"