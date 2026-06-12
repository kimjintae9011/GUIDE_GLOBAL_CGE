* ==============================================================================
* ScenarioList.gms
* 시나리오 실행 목록만 관리
* ==============================================================================

$batinclude "Scenario/RunScenario.gms" %RUN_BAU%            0 BAU_Solve.gms             BAU             ALL
$batinclude "Scenario/RunScenario.gms" %RUN_NDC%            1 NDC_Solve.gms             NDC             ALL
$batinclude "Scenario/RunScenario.gms" %RUN_NZ%             1 NZ_Solve.gms              NZ              ALL
$batinclude "Scenario/RunScenario.gms" %RUN_UD%             1 UserDefined_Solve.gms     UD              ALL

$batinclude "Scenario/RunScenario.gms" %RUN_Global_NZ%      1 Global_NZ_Solve.gms       Global_NZ       PRIM_ONLY
$batinclude "Scenario/RunScenario.gms" %RUN_Isolated_NZ%    1 Isolated_NZ_Solve.gms     Isolated_NZ     PRIM_ONLY
$batinclude "Scenario/RunScenario.gms" %RUN_Fragmented_NZ%  1 Fragmented_NZ_Solve.gms   Fragmented_NZ   PRIM_ONLY
$batinclude "Scenario/RunScenario.gms" %RUN_NEAICM_ALL_NZ%  1 NEAICM_ALL_NZ_Solve.gms   NEAICM_ALL_NZ   PRIM_ONLY
$batinclude "Scenario/RunScenario.gms" %RUN_NEAICM_CJK_NZ%  1 NEAICM_CJK_NZ_SOLVE.gms   NEAICM_CJK_NZ   PRIM_ONLY