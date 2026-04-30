* ========================================================
* Scenario/Reset_Closure.gms
* ========================================================
* 탄소세 및 배출권 총량의 고정을 모두 풀고 자유변수로 만듭니다.

CTAX.lo(z,time) = -inf;
CTAX.up(z,time) = +inf;

PERMIT_TOTAL.lo(PERMIT_Z,time) = -inf;
PERMIT_TOTAL.up(PERMIT_Z,time) = +inf;