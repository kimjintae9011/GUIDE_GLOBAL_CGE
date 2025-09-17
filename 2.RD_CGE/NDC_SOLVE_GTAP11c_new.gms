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
 zr(z)               = no;
 zr('07_NAM')    = yes;
 z1(z)               = NOT[zr(z)];

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
 CABX.FX(z1,time)        = CABXO(z1)*cabix(z1,time);
 G_REAL.FX(z,time)      = G_REALX(z,time);
 IND.fx(k,pub,z,time)    = INDX(k,pub,z,time);
 sh0.fx(z,time)             = sh0X(z,time);
 sh1.fx(z,time)             = sh1X(z,time);
 ttdh0.fx(z,time)           = ttdh0O(z); 
 ttdh1.fx(z,time)           = ttdh1O(z);
 ttic.fx(i,z,time)            = tticO(i,z);
 ttim.fx(i,zj,z,time)        = ttimO(i,zj,z);
 ttix.fx(i,z,zj,time)         = ttixO(i,z,zj);
 ttik.fx('land',j,z,time)    = ttikO('land',j,z);
 ttik.fx('natr',j,z,time)    = ttikO('natr',j,z);
 ttiw.fx(j,z,time)           = ttiwO(j,z);
* ttik.fx(k,j,z,time)        = ttikO(k,j,z);
* ttip.fx(j,z,time)          = ttipO(j,z);

* CTAX.fX(CTAX_Z,time)                     = CTAX0(CTAX_Z);
 PERMIT_TOTAL.fx(PERMIT_Z,time)   = PERMIT_TOTALO(PERMIT_Z) ;

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
$INCLUDE INIT_new.gms

*==============================================================================
*   6.1.1.1 Lower bounds on some variables
*==============================================================================

*==============================================================================
*   6.1.3 Closures
*==============================================================================
*$ontext
* FP CLOSURE: fixed PIXGDPs; numeraire is exchange rate of reference region
* The exchange rates are endogenous, except for the reference region.
 e.FX(zr,time)          = eO(zr);
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
 CMIN.FX(i,z,t1)     = CMINO(i,z);
 CMIN.FX(i,z,time)$[ord(time) gt 1]
                      = CMIN.l(i,z,time-1)*[1+g_GDP(z,time)];
                      
 KD.fx(k,j,z,t1)$KDO(k,j,z)
                      = KDO(k,j,z);
 KD.fx(k,j,z,time)${[ord(time) gt 1] and KDO(k,j,z)}
                      = KD.l(k,j,z,time-1)*[1-delta(z)]+IND.l(k,j,z,time-1);

 LST.FX(z,t1)       = LSTO(z);
 LST.FX(z,time)$[ord(time) gt 1]
                      = LST.l(z,time-1)*[1+g_POP(z,time)];

 LS_lag(z,t1)    = LSO(z);
 LS_lag(z,time)$[ord(time) gt 1]
                      = LS.l(z,time-1);

 LST_lag(z,t1)   = LSTO(z);
 LST_lag(z,time)$[ord(time) gt 1]
                      = LST.l(z,time-1);

 W_lag(z,t1)     = WO_lag(z);
 W_lag(z,time)$[ord(time) gt 1]
                     = W.l(z,time-1);
                      
 PIXCON_lag(z,t1)   = PIXCONO_lag(z);
 PIXCON_lag(z,time)$[ord(time) gt 1]
                    = PIXCON.l(z,time-1); 
 
* ttiw_lag.fx(j,z,t1)  =ttiwO(j,z);
* ttiw_lag.fx(j,z,time)$[ord(time) gt 1]
*                     =ttiw.l(j,z,time-1);
 
 ttik_lag.fx(j,z,t1)  = ttikO('cap',j,z);
 ttik_lag.fx(j,z,time)$[ord(time) gt 1]
                     = ttik.l('cap',j,z,time-1);
  
 ttip_lag.fx(j,z,t1)  =ttipO(j,z);
 ttip_lag.fx(j,z,time)$[ord(time) gt 1]
                     = ttip.l(j,z,time-1);

*==============================================================================
*   CTAX and PERMIT
*============================================================================== 
 PERMIT_TOTAL.fx(PERMIT_Z,time)$[ord(time) gt 1]
                      = PERMIT_TOTALO(PERMIT_Z)*PERMIT_NDC_old(PERMIT_Z,time);  

 recycle_gov(z,time)     = 0 ;          
 recycle_hou(z,time)     = 1 ;           
 recycle_labor(z,time)   = 0 ;         
 recycle_capital(z,time) = 0 ;        
 recycle_ptax(z,time)    = 0 ;    
                
*==============================================================================
*  AEEI
*============================================================================== 
 AEEI(z,time) = 1;
* AEEI(z,time) = AEEI_Medium(z,time);

*=============================================================================
* Solar & Wind Productivity Shock
*=============================================================================
 B_VA_t('23_eWind',z,time)$[ord(time) gt 1]
                        = B_VA_t('23_eWind',z,time-1)*[1+SolarWind_TFP_NDC];

 B_VA_t('24_eSolar',z,time)$[ord(time) gt 1]
                        = B_VA_t('24_eSolar',z,time-1)*[1+SolarWind_TFP_NDC];

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

* 4. Apply minimum floor constraint (Corrected logic and syntax)
* If CO2FACTOR2 calculated above is less than MINCO2FACTOR, set it to MINCO2FACTOR.
CO2FACTOR2(ene,j7,PERMIT_Z,time)$[CO2FACTOR2(ene,j7,PERMIT_Z,time) < MINCO2FACTOR(ene,j7,PERMIT_Z)] = MINCO2FACTOR(ene,j7,PERMIT_Z);

*==============================================================================
* Backstop technologies
*==============================================================================
$ontext
if ((CTAX.L('01_KOR',time) gt trigger_price), switch(i3,'01_KOR',time) = 1  ;
else switch(i3, '01_KOR', time)$[ (switch(i3, '01_KOR', time-1) = 1) OR (CTAX.L('01_KOR', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('02_CHN',time) gt trigger_price), switch(i3,'02_CHN',time) = 1  ;
else switch(i3, '02_CHN', time)$[ (switch(i3, '02_CHN', time-1) = 1) OR (CTAX.L('02_CHN', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('03_JPN',time) gt trigger_price), switch(i3,'03_JPN',time) = 1  ;
else switch(i3, '03_JPN', time)$[ (switch(i3, '03_JPN', time-1) = 1) OR (CTAX.L('03_JPN', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('04_RUS',time) gt trigger_price), switch(i3,'04_RUS',time) = 1  ;
else switch(i3, '04_RUS', time)$[ (switch(i3, '04_RUS', time-1) = 1) OR (CTAX.L('04_RUS', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('05_MNG',time) gt trigger_price), switch(i3,'05_MNG',time) = 1  ;
else switch(i3, '05_MNG', time)$[ (switch(i3, '05_MNG', time-1) = 1) OR (CTAX.L('05_MNG', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('06_PRK',time) gt trigger_price), switch(i3,'06_PRK',time) = 1  ;
else switch(i3, '06_PRK', time)$[ (switch(i3, '06_PRK', time-1) = 1) OR (CTAX.L('06_PRK', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('07_NAM',time) gt trigger_price), switch(i3,'07_NAM',time) = 1  ;
else switch(i3, '07_NAM', time)$[ (switch(i3, '07_NAM', time-1) = 1) OR (CTAX.L('07_NAM', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('08_LAM',time) gt trigger_price), switch(i3,'08_LAM',time) = 1  ;
else switch(i3, '08_LAM', time)$[ (switch(i3, '08_LAM', time-1) = 1) OR (CTAX.L('08_LAM', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('09_WEU',time) gt trigger_price), switch(i3,'09_WEU',time) = 1  ;
else switch(i3, '09_WEU', time)$[ (switch(i3, '09_WEU', time-1) = 1) OR (CTAX.L('09_WEU', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('10_EEU',time) gt trigger_price), switch(i3,'10_EEU',time) = 1  ;
else switch(i3, '10_EEU', time)$[ (switch(i3, '10_EEU', time-1) = 1) OR (CTAX.L('10_EEU', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('11_FSU',time) gt trigger_price), switch(i3,'11_FSU',time) = 1  ;
else switch(i3, '11_FSU', time)$[ (switch(i3, '11_FSU', time-1) = 1) OR (CTAX.L('11_FSU', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('12_MEA',time) gt trigger_price), switch(i3,'12_MEA',time) = 1  ;
else switch(i3, '12_MEA', time)$[ (switch(i3, '12_MEA', time-1) = 1) OR (CTAX.L('12_MEA', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('13_AFR',time) gt trigger_price), switch(i3,'13_AFR',time) = 1  ;
else switch(i3, '13_AFR', time)$[ (switch(i3, '13_AFR', time-1) = 1) OR (CTAX.L('13_AFR', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('14_CPA',time) gt trigger_price), switch(i3,'14_CPA',time) = 1  ;
else switch(i3, '14_CPA', time)$[ (switch(i3, '14_CPA', time-1) = 1) OR (CTAX.L('14_CPA', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('15_SAS',time) gt trigger_price), switch(i3,'15_SAS',time) = 1  ;
else switch(i3, '15_SAS', time)$[ (switch(i3, '15_SAS', time-1) = 1) OR (CTAX.L('15_SAS', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('16_PAS',time) gt trigger_price), switch(i3,'16_PAS',time) = 1  ;
else switch(i3, '16_PAS', time)$[ (switch(i3, '16_PAS', time-1) = 1) OR (CTAX.L('16_PAS', time) >  trigger_price) ] = 1;
);

if ((CTAX.L('17_PAO',time) gt trigger_price), switch(i3,'17_PAO',time) = 1  ;
else switch(i3, '17_PAO', time)$[ (switch(i3, '17_PAO', time-1) = 1) OR (CTAX.L('17_PAO', time) >  trigger_price) ] = 1;
);
$offtext

*2025 = 7
*2030 = 12
*2035 = 17
*2040 = 22
*2045 = 27
*2050 = 32
Start_Year(i3,'01_KOR') = 17;
Start_Year(i3,'02_CHN') = 22;
Start_Year(i3,'03_JPN') = 17;
Start_Year(i3,'04_RUS') = 27;
Start_Year(i3,'05_MNG') = 27;
Start_Year(i3,'06_PRK') = 33;
Start_Year(i3,'07_NAM') = 12;
Start_Year(i3,'08_LAM') = 27;
Start_Year(i3,'09_WEU') = 12; 
Start_Year(i3,'10_EEU') = 12;
Start_Year(i3,'11_FSU') = 27;
Start_Year(i3,'12_MEA') = 27;
Start_Year(i3,'13_AFR') = 27;
Start_Year(i3,'14_CPA') = 27;
Start_Year(i3,'15_SAS') = 27;
Start_Year(i3,'16_PAS') = 27;
Start_Year(i3,'17_PAO') = 17;

Max_Pen(i3,z) = 0.50;
Growth_Coeff(i3,z)  = 0.6;
Inflection_Lapse(i3,z) = 10;

penetration_rate(i3,z,time)$[ord(time) >= Start_Year(i3, z)] =
    Max_Pen(i3,z) / (1 + exp(-Growth_Coeff(i3,z) * ( (ord(time) - Start_Year(i3, z)) - Inflection_Lapse(i3,z) )));
    
*==============================================================================
* 6.2.2.3 Resolution
*==============================================================================
SOLVE CGE USING CNS ;

* The single element in subset T(time) is removed, and the subset is now empty.
T(time)          = NO;
* End of LOOP over time periods
];