[상위 폴더: 2.GUIDE-GLOBAL-CGE_v2]
 │
 ├── Run_Master.gms               (전체 파이프라인 컨트롤 타워)
 │
 ├── GDXtoCSVExcel.py             (GDX결과를 CSV, Excel로 보고)
 │
 ├── Model_Engine/                [모형 뼈대 및 수식]
 │    ├── Sets.gms                (모형 집합 선언 및 정의)
 │    ├── Par.gms                 (모형 파라미터 선언 및 정의)
 │    └── Model.gms               (모형 방정식)
 │
 ├── Data_Processing/             [데이터 전처리 및 캘리브레이션]
 │    ├── DATA_GTAPSAM.gms        (북한 SAM Importing)
 │    ├── DATA_ReGen.gms          (북한 SAM 수정에 따른 타지역 자료 정산/수정)
 │    ├── DATA_WEB_22e.gms        (IEA World Energy Balance 2022 edition 데이터 가공)
 │    ├── DATA_CO2coef.gms        (WEB 데이터를 CGE 모형 입력자료로 매핑)
 │    ├── CAL_B_line.gms          (Baseline Calibration 구동)
 │    └── INIT.gms                (Dynamic 풀이를 위한 초기값 지정)
 │
 ├── Input_CGE/                   [원시 데이터 및 벤치마크 결과]
 │    ├── parameter2019.prm       (GTAPv7 모형으로 구동한 2019년 파라미터 Core)
 │    ├── basedata2019.HAR        (GTAPv7 모형으로 구동한 2019년 입력자료 Core)
 │    ├── WEB19.xlsx              (17개 지역으로 재분류한 IEA World Energy Balance)
 │    ├── Projection.xlsx         (GDP, POP 전망, AEEI, 배출량 제약 값)
 │    ├── PRK_SAM.xlsx            (RAS를 적용한 북한 SAM 2019)
 │    └── B_line.gdx              (Calibration 완료 후 저장된 베이스라인 데이터)
 │
 ├── Scenario/                    [시나리오별 충격 및 구동]
 │    ├── Reset_Closure.gms       (시나리오 간 Closure Swap 초기화)
 │    ├── FROZEN_Solve.gms        (FROZEN 시나리오 구동)
 │    ├── BAU_Solve.gms           (BAU Reference or Current Policy 시나리오 구동)
 │    ├── NDC_Solve.gms           (NDC 시나리오 구동)
 │    └── NZ_Solve.gms            (Net Zero 시나리오 구동)
 │
 ├── Results_format/              [리포트 및 국제 표준 포맷 변환]
 │    ├── Declare_Results.gms     (val 변수들 PARAMETER 사전 선언부)
 │    ├── CGE_PRIM_Results.gms    (1차 결과물: CGE 거시/산업 결과 할당 및 GDX 저장)
 │    ├── IAMC.gms                (2차 결과물: 통합평가모형(IAMC) 포맷 매핑)
 │    └── IPCC2006GHGs.gms        (2차 결과물: IPCC 2006 인벤토리 카테고리 매핑)
 │
 └── Output_CGE/                  [최종 산출물]
      └── (모든 시나리오 및 포맷별 최종 GDX 결과물이 모이는 곳)
        └── CSV_Results(Master.gms 실행후 Python 파일을 구동하여 GDX 파일을 CSV로 변환)