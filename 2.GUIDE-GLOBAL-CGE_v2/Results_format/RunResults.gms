$if %OUT_PRIM%   == 1 $include "Results_format/CGE_PRIM_Results.gms"
$if %OUT_IAMC%   == 1 $include "Results_format/IAMC.gms"
$if %OUT_IPCC%   == 1 $include "Results_format/IPCC.gms"
$if %OUT_db_CGE% == 1 $include "Results_format/db_CGE.gms"