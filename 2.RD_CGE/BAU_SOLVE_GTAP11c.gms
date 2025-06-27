*==============================================================================
*  6.2.1.1 Choice of multifactor productivity
*==============================================================================
*  6.2.1.1.1 Input for multifactor productivity
*==============================================================================
* Multifactor productivity is retrieved from a model BAU solution with
* endogenous A_VA(z,time) in equation 3, and exogenous real GDPs, fixed at
* values that are projected using Four?, Benassy-Qu?r? and Fontagn? projected
* growth rates. So the solution is forced to follow the GDP projected growth
* paths. The solution values of A_VA are stored as parameter A_VA_RES.
*-------------------------------------------------------------------------------

PARAMETER
 A_VA_RES(z,time)     Value of A_VA to reproduce real GDP projections
 GX(z,time)               Current government expenditures on goods and services in region z
 G_REALX(z,time)      Current real government expenditures on goods and services in region z
 INDX(j,z,time)          Volume of new type k capital investment to industry j in region z
 sh0X(z,time)             Intercept (household savings)
 sh1X(z,time)             Household savings rate
;

$GDXIN Input_w-t\B_line_GTAP11c.gdx
$LOAD A_VA_RES, GX, G_REALX, INDX, sh1X, sh0X

*==============================================================================
*  6.2.1.1.2 Choice of multifactor productivity
*==============================================================================
* If you want to reproduce the real GDP projections, set:
 A_VA.FX(z,time)  = A_VA_RES(z,time);
* Otherwise, simply put A_VA equal to one:
* A_VA.FX(z,time)    = 1;

*==============================================================================
*   6.2.1.2 Choice of reference region
*==============================================================================
* By default, the reference region is USA,
 zr(z)           = no;
 zr('07_NAM')    = yes;
 z1(z)           = NOT[zr(z)];

*==============================================================================
*   6.2.1.3 Choice between closures FE and FP
*==============================================================================
*$ontext
* FP CLOSURE: fixed PIXGDPs; numeraire is exchange rate of reference region
* The exchange rates are endogenous, except for the reference region.
 e.FX(zr,time)      = eO(zr);
 PIXGDP.FX(z,time)  = PIXGDPO(z)/sum(zr,eO(zr));
*$offtext

$ontext
* FE CLOSURE: fixed exchange rates; numeraire is PIXGDP of reference region
* The exchange rates can be fixed at arbitrary values
 PIXGDP.FX(zr,time)  = PIXGDPO(zr);
 e.FX(z,time)        = eO(z);
$offtext

*==============================================================================
*   6.2.1.4 Other exogenous variables
*==============================================================================
 G_REAL.FX(z,time)             = G_REALX(z,time);
 IND.fx(pub,z,time)             = INDX(pub,z,time);
 sh0.fx(z,time)                   = sh0X(z,time);
 sh1.fx(z,time)                   = sh1X(z,time);
 ttdh0.fx(z,time)                 = ttdh0O(z);
 ttdh1.fx(z,time)                 = ttdh1O(z);
 ttic.fx(i,z,time)                   = tticO(i,z);
 ttik.fx(j,z,time)                  = ttikO(j,z);
 ttim.fx(i,zj,z,time)              = ttimO(i,zj,z);
 ttip.fx(j,z,time)                  = ttipO(j,z);
 ttiw.fx(j,z,time)                  = ttiwO(j,z);
 ttix.fx(i,z,zj,time)                = ttixO(i,z,zj);
 beta_X4_t.fx(power,z,time) = beta_X4(power,z);
 CTAX.fX(z,time)                  = CTAX0(z);

*==============================================================================
*   6.2.2 Solution
*==============================================================================
* Resolution for the BAU
* Begin LOOP over time periods
*==============================================================================

* EndTime is the final year for model resolution.
* Parameter EndTime is defined in the main program.
LOOP[time$(time.val le EndTime),
* T(time) is a subset of set TIME. It was previously empty. It now contains
* a single element: it is the current value of the TIME index.
T(time) = YES;

*==============================================================================
*   6.2.2.1 Initialisation
*==============================================================================

$INCLUDE INIT.gms

*==============================================================================
*   6.1.1.1 Lower bounds on some variables
*==============================================================================

*==============================================================================
*   6.1.3 Closures
*==============================================================================
*$ontext
* FP CLOSURE: fixed PIXGDPs; numeraire is exchange rate of reference region
* The exchange rates are endogenous, except for the reference region.
 e.FX(zr,time)      = eO(zr);
 PIXGDP.FX(z,time)  = PIXGDPO(z)/sum[zr,eO(zr)];
*$offtext

$ontext
* FE CLOSURE: fixed exchange rates; numeraire is PIXGDP of reference region
* The exchange rates can be fixed at arbitrary values
 PIXGDP.FX(zr,time)  = PIXGDPO(zr);
 e.FX(z,time)        = eO(z);
$offtext

*==============================================================================
*   6.2.2.2 Variables fixed each period according to their lagged values
*==============================================================================
 CABX.FX(z1,t1)       = CABXO(z1);
 CABX.FX(z1,time)$[ord(time) gt 1]
                      = CABX.l(z1,time-1)*[1+g_GDP(z1,time)];
                      
 CMIN.FX(i,z,t1)      = CMINO(i,z);
 CMIN.FX(i,z,time)$[ord(time) gt 1]
                      = CMIN.l(i,z,time-1)*[1+g_GDP(z,time)];
                     
 KD.fx(j,z,t1)$KDO(j,z)
                     = KDO(j,z);
 KD.fx(j,z,time)${[ord(time) gt 1] and KDO(j,z)}
                     = KD.l(j,z,time-1)*[1-delta(z)]+IND.l(j,z,time-1);

 LS.FX(z,t1)         = LSO(z);
 LS.FX(z,time)$[ord(time) gt 1]
                     = LS.l(z,time-1)*[1+g_POP(z,time)];
                
*==============================================================================
*   CTAX and PERMIT
*==============================================================================  
* CTAX.fx(z,time)$[ord(time) gt 1]
*                            = CTAX_Cal(z,time);  

* PERMIT_TOTAL.fx(z,time)$[ord(time) gt 1]
*                             = PERMIT_TOTALO(Z)*PERMIT_Cal(z,time);  

*==============================================================================
*   AEEI
*============================================================================== 
 AEEI(z,time) = AEEI_low(z,time);
 CO2FACTOR2(ene,j,z,time) = CO2FACTOR(ene,j,z)*AEEI(z,time);
        
*=============================================================================
* Solar & Wind Productivity Shock
*=============================================================================
 B_VA2('23_eWind',z,time)$[ord(time) gt 2]
                        = B_VA2('23_eWind',z,time-1)*[1+0.02];

 B_VA2('24_eSolar',z,time)$[ord(time) gt 2]
                        = B_VA2('24_eSolar',z,time-1)*[1+0.02];

*==============================================================================
*   6.2.2.3 Resolution
*==============================================================================
SOLVE PEPWT USING CNS;
*SOLVE PEPWT using NLP maximizing OBJ;
*SOLVE PEPWT USING MCP;

* The single element in subset T(time) is removed, and the subset is now empty.
T(time)          = NO;
* End of LOOP over time periods
];
*$exit
