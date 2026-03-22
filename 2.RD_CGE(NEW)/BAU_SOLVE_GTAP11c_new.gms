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
*$Ontext
PARAMETER
 A_VA_RES(z,time)     Value of A_VA to reproduce real GDP projections
 GX(z,time)           Current government expenditures on goods and services in region z
 G_REALX(z,time)      Current real government expenditures on goods and services in region z
 INDX(k,j,z,time)     Volume of new type k capital investment to industry j in region z
 sh0X(z,time)         Intercept (household savings)
 sh1X(z,time)         Household savings rate
;

$GDXIN Input_CGE\B_line_GTAP11c_new.gdx
$LOAD A_VA_RES, GX, G_REALX, INDX, sh1X, sh0X
*$Offtext
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
 e.FX(zr,time)          = eO(zr);
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
 CABX.FX(z1,time)             = CABXO(z1)*cabix(z1,time);
 G_REAL.FX(z,time)            = G_REALX(z,time);
 IND.fx(k,pub,z,time)         = INDX(k,pub,z,time);
 sh0.fx(z,time)               = sh0X(z,time);
 sh1.fx(z,time)               = sh1X(z,time);
 ttdh0.fx(z,time)             = ttdh0O(z);
 ttdh1.fx(z,time)             = ttdh1O(z);
 ttic.fx(i,z,time)            = tticO(i,z);
 ttim.fx(i,zj,z,time)         = ttimO(i,zj,z);
 ttix.fx(i,z,zj,time)         = ttixO(i,z,zj);
 ttik.fx('land',j,z,time)     = ttikO('land',j,z);
 ttik.fx('natr',j,z,time)     = ttikO('natr',j,z);
 ttik.fx('cap',j,z,time)      = ttikO('cap',j,z);
 ttiw.fx(j,z,time)            = ttiwO(j,z);
 ttip.fx(j,z,time)            = ttipO(j,z);
 CTAX.fX(z,time)              = CTAX0(z);
 
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
*   6.1.1 Initialisation
*==============================================================================
$INCLUDE INIT_new.gms

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
 CMIN.FX(i,z,t1)           = CMINO(i,z);
 CMIN.FX(i,z,time)$[ord(time) gt 1]
                           = CMIN.l(i,z,time-1)*[1+g_GDP(z,time)];
                     
 KD.fx(k,j,z,t1)$KDO(k,j,z)
                           = KDO(k,j,z);
 KD.fx(k,j,z,time)${[ord(time) gt 1] and KDO(k,j,z)}
                           = KD.l(k,j,z,time-1)*[1-delta(z)]+IND.l(k,j,z,time-1);

 LST.FX(z,t1)    = LSTO(z);
 LST.FX(z,time)$[ord(time) gt 1]
                      = LST.l(z,time-1)*[1+g_POP(z,time)];

 LS_lag(z,t1)    = LSO(z);
 LS_lag(z,time)$[ord(time) gt 1]
                      = LS.l(z,time-1);

 LST_lag(z,t1)   = LSTO(z);
 LST_lag(z,time)$[ord(time) gt 1]
                      = LST.l(z,time-1);

 W_lag(z,t1)    = WO_lag(z);
 W_lag(z,time)$[ord(time) gt 1]
                     = W.l(z,time-1);
                      
 PIXCON_lag(z,t1)   = PIXCONO_lag(z);
 PIXCON_lag(z,time)$[ord(time) gt 1]
                    = PIXCON.l(z,time-1);     
 
*==============================================================================
*   CTAX and PERMIT
*==============================================================================  
* CTAX.fx(z,time)$[ord(time) gt 1]
*                            = CTAX_Cal(z,time);  

* PERMIT_TOTAL.fx(z,time)$[ord(time) gt 1]
*                             = PERMIT_TOTALO(Z)*PERMIT_Cal(z,time);  

 recycle_gov(z,time)     = 0 ;          
 recycle_hou(z,time)     = 1 ;           
 recycle_labor(z,time)   = 0 ;                       

*==============================================================================
*  AEEI
*============================================================================== 
 AEEI(z,time) = 1;
        
*=============================================================================
* Solar & Wind Productivity Shock
*=============================================================================
* For Monte Carlo Simulation
* B_VA_t('24_eSolar','01_KOR',t1)  = B_VA('24_eSolar','01_KOR');
* B_VA_t('24_eSolar','01_KOR',time)$[ord(time) gt 1]
*                           = B_VA_t('24_eSolar','01_KOR',time-1)*[1+solar_growth];

 B_VA_t('23_eWind',z,time)$[ord(time) gt 1]
                        = B_VA_t('23_eWind',z,time-1)*[1+SolarWind_TFP_BAU];

 B_VA_t('24_eSolar',z,time)$[ord(time) gt 1]
                        = B_VA_t('24_eSolar',z,time-1)*[1+SolarWind_TFP_BAU];


*==============================================================================
*  Marginal abatement curves for emissions
*============================================================================== 
* 1. Calculate carbon tax impact factor
CTAX_CO2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2]  =(1+ CTAX.L(PERMIT_Z,time))**gamma_CO2(ene,j7,PERMIT_Z);

* 2. Calculate target CO2 factor based on tax
CO2FACTOR2_Star(ene,j7,PERMIT_Z,time)$[ord(time) gt 2]= 
    CO2FACTOR(ene,j7,PERMIT_Z) * exp(
        alpha_CO2(ene,j7,PERMIT_Z) - alpha_CO2(ene,j7,PERMIT_Z) * CTAX_CO2(ene,j7,PERMIT_Z,time)
    );

* 3. Apply partial adjustment to CO2 factor
CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2]= 
    CO2FACTOR2(ene,j7,PERMIT_Z,time-1) + adjustment_factor * (CO2FACTOR2_Star(ene,j7,PERMIT_Z,time) - CO2FACTOR2(ene,j7,PERMIT_Z,time-1));

* 4. Apply Monotonic Decrease Constraint 
* If CO2FACTOR2 calculated above is greater than the previous year's value, set it to the previous year's value.
CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2 and CO2FACTOR2(ene,j7,PERMIT_Z,time) > CO2FACTOR2(ene,j7,PERMIT_Z,time-1)] = CO2FACTOR2(ene,j7,PERMIT_Z,time-1);

* 5. Apply minimum floor constraint (Original 4 step, now step 5)
* If CO2FACTOR2 is less than MINCO2FACTOR, set it to MINCO2FACTOR.
CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2 and CO2FACTOR2(ene,j7,PERMIT_Z,time) < MINCO2FACTOR(ene,j7,PERMIT_Z)] = MINCO2FACTOR(ene,j7,PERMIT_Z);

*==============================================================================
*  Direct Air Capture
*============================================================================== 
Loop(z,
   if ( (DAC_Start_Year(z) = 0) and (CTAX.L(z, time) > DAC_TRIGGER),
             DAC_Start_Year(z) = ord(time);
              switchDAC(z, time+1) = 1;
        );

        if (DAC_Start_Year(z) > 0,
             switchDAC(z, time+1) = 1;
        );

        if (DAC_Start_Year(z) > 0,           
            DAC_growth_rate(z, time+1) = DAC_Max_Pen(z) / 
                (1 + exp( -DAC_Logistic_Coeff(z) * ( (ord(time) + 1 - DAC_Start_Year(z)) - DAC_Inflection(z) ) ));

        else
            DAC_growth_rate(z, time+1) = 0;
        );
      );    

*==============================================================================
* Backstop technologies
*==============================================================================
LOOP(Z_GRN,
    IF(CTAX.L(Z_GRN, time-1) > 1.0,
     TSFS(Z_GRN, time) = TSFS(Z_GRN, time-1)*1.20;
*    TSFS(Z_GRN, time+1) = TSFS(Z_GRN, time) * ( (0.5*PTSF.L(Z_GRN, time) + 0.5*PTSF.L(Z_GRN, time-1)) /1.5)**0.2; 
     B_VAT_t(Z_GRN,time) = B_VAT_t(Z_GRN,time-1)*[1+0.05];
     B_VA_t('13_IRONSTL',z,time) = B_VA_t('13_IRONSTL',z,time-1)*[1-0.02];
*     beta_X5_t('32_BSIRONSTL', Z_GRN, time) = beta_X5_t('32_BSIRONSTL', Z_GRN, time-1) + 0.001;        
*     beta_X5_t('32_BSIRONSTL', Z_GRN, time) = min(beta_X5_t('32_BSIRONSTL', Z_GRN, time), 0.95);       
*     beta_X5_t('13_IRONSTL', Z_GRN, time) = 1 - beta_X5_t('32_BSIRONSTL', Z_GRN, time);
    );
);

*==============================================================================
* Zero-Production 
*==============================================================================
XS.fx('32_BSIRONSTL', '13_IRONSTL', Z_OTH, t) = 0;
XST.fx('32_BSIRONSTL', Z_OTH, t) = 0;
VA.fx('32_BSIRONSTL', Z_OTH, t) = 0;
CI.fx('32_BSIRONSTL', Z_OTH, t) = 0;
CE.fx('32_BSIRONSTL', Z_OTH, t) = 0;
LDC.fx('32_BSIRONSTL', Z_OTH, t) = 0;
KDC.fx('32_BSIRONSTL', Z_OTH, t) = 0;
DS.fx('32_BSIRONSTL', '13_IRONSTL', Z_OTH, t) = 0;
EXTT.fx('32_BSIRONSTL', '13_IRONSTL', Z_OTH, t) = 0;

LD.fx('32_BSIRONSTL', Z_OTH, t) = 0;
KD.fx(k, '32_BSIRONSTL', Z_OTH, t) = 0;
DI.fx(i, '32_BSIRONSTL', Z_OTH, t) = 0;
DE.fx(ene, '32_BSIRONSTL', Z_OTH, t) = 0;

P2.fx('32_BSIRONSTL', '13_IRONSTL', Z_OTH, t) = 1;
PT.fx('32_BSIRONSTL', Z_OTH, t) = 1;
PP.fx('32_BSIRONSTL', Z_OTH, t) = 1;
PVA.fx('32_BSIRONSTL', Z_OTH, t) = 1;
PCI.fx('32_BSIRONSTL', Z_OTH, t) = 1;
PCE.fx('32_BSIRONSTL', Z_OTH, t) = 1;
WC.fx('32_BSIRONSTL', Z_OTH, t) = 1;
RC.fx('32_BSIRONSTL', Z_OTH, t) = 1;

TIP.fx('32_BSIRONSTL', Z_OTH, t) = 0;
TIW.fx('32_BSIRONSTL', Z_OTH, t) = 0;
TIK.fx(k, '32_BSIRONSTL', Z_OTH, t) = 0;

IND.fx(k,'32_BSIRONSTL', Z_OTH, t) = 0;

phi.lo(z,t) = 0.0002;


$ontext
*==============================================================================
*   6.1.1.1 Lower bounds on some variables
*==============================================================================

*==============================================================================
*   6.1.1.1 Bounds on variables
*==============================================================================
 DS.LO(j,i,z,time)$(ord(time) gt 1)  = 0.0001*DS.LO(j,i,z,time-1);
 EX.LO(i,z,zj,time)$(ord(time) gt 1)  = 0.0001*EX.l(i,z,zj,time-1);
 EXT.LO(i,z,time)$(ord(time) gt 1)    = 0.0001*EXT.l(i,z,time-1);
 IM.LO(i,zj,z,time)$(ord(time) gt 1)  = 0.0001*IM.l(i,zj,z,time-1);
 KDC.LO(j,z,time)$(ord(time) gt 1)    = 0.0001*KDC.l(j,z,time-1);
 LDC.LO(j,z,time)$(ord(time) gt 1)    = 0.0001*LDC.l(j,z,time-1);
 R.LO(k,j,z,time)$(ord(time) gt 1)    = 0.0001*R.l(k,j,z,time-1);
 RC.LO(j,z,time)$(ord(time) gt 1)     = 0.0001*RC.l(j,z,time-1);
 RTI.lo(k,bus,z,time)$(ord(time) gt 1)= 0.0001*RTI.l(k,bus,z,time-1);
 U.LO(z,time)$(ord(time) gt 1)        = 0.0001*U.l(z,time-1);
 WC.LO(j,z,time)$(ord(time) gt 1)     = 0.0001*WC.l(j,z,time-1);
$offtext

*==============================================================================
* 6.2.2.3 Resolution
*==============================================================================
*rtmaxv  1.0e15   
*rtpiva  1.0e-13  * Absolute Pivot Tolerance 
*rtnwma  1.0e-8   * Maximum error in Newton iterations

$onecho > conopt4.opt
rtmaxv  1.0e15   
rtpiva  1.0e-13 
rtnwma  1.0e-8   
$offecho

CGE.optfile = 1;
CGE.scaleopt = 1;
SOLVE CGE USING CNS ;
*SOLVE CGE maximizing OBJ using NLP;
* The single element in subset T(time) is removed, and the subset is now empty.
T(time)          = NO;
* End of LOOP over time periods
];