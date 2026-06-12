* ==============================================================================
* RunScenario.gms
*
* %1 = run switch
* %2 = reset 여부 (1=reset, 0=skip)
* %3 = solve file
* %4 = CurrentSce 이름
* %5 = result mode (ALL / PRIM_ONLY)
* ==============================================================================

$ifthen %1 == 1

$if %2 == 1 $include "Scenario/Reset_Closure.gms"
$include "Scenario/%3"

$setglobal CurrentSce "%4"

$ifthen "%5" == "ALL"
$include "Results_format/RunResults.gms"
$elseifi "%5" == "PRIM_ONLY"
$if %OUT_PRIM% == 1 $include "Results_format/CGE_PRIM_Results.gms"
$endif

$endif