*==============================================================================
* Assignment of solution values to result parameters
*==============================================================================
* 1. Product와 Industry 차원을 모두 가지는 변수들
 db_CGE('valEE', product, j, z, time, '%CurrentSce%') = valEE(product,j,z,time,'%CurrentSce%');
 db_CGE('valNE', product, j, z, time, '%CurrentSce%') = valNE(product,j,z,time,'%CurrentSce%');

* 2. Product 차원만 가지는 변수 (가계 소비) -> Industry 자리에 '-' 입력
 db_CGE('valEH', product, '-', z, time, '%CurrentSce%') = valEH(product,z,time,'%CurrentSce%');

* 3. Industry 차원만 가지는 변수 (총산출액) -> Product 자리에 '-' 입력
 db_CGE('valXST', '-', j, z, time, '%CurrentSce%') = valXST(j,z,time,'%CurrentSce%');

* 4. 거시 변수 (Product, Industry 차원 없음) -> 두 자리 모두 '-' 입력
 db_CGE('valGDP_MP_REAL', '-', '-', z, time, '%CurrentSce%') = valGDP_MP_REAL(z,time,'%CurrentSce%');
 db_CGE('TOT_POP', '-', '-', z, time, '%CurrentSce%') = TOT_POP(z,time);
 
*==============================================================================
* GDX Export (Forward Slash '/' used, and ALL Variables added)
*==============================================================================
execute_unload 'Output_CGE/db_CGE_%CurrentSce%.gdx',
 db_CGE
 ;
  