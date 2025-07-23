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
 GX(z,time)           Current government expenditures on goods and services in region z
 G_REALX(z,time)      Current real government expenditures on goods and services in region z
 INDX(k,j,z,time)     Volume of new type k capital investment to industry j in region z
 sh0X(z,time)         Intercept (household savings)
 sh1X(z,time)         Household savings rate
;

$GDXIN Input_w-t\B_line_GTAP11c_new.gdx
$LOAD A_VA_RES, GX, G_REALX, INDX, sh1X, sh0X

PARAMETER
valPD(i,z,time,scen)     
;

$GDXIN Output_w-t\Baseline_Results_GTAP11c_new.gdx
$LOAD valPD
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
 G_REAL.FX(z,time)                = G_REALX(z,time);
 IND.fx(k,pub,z,time)             = INDX(k,pub,z,time);
 sh0.fx(z,time)                   = sh0X(z,time);
 sh1.fx(z,time)                   = sh1X(z,time);
 ttdh0.fx(z,time)                 = ttdh0O(z); 
 ttdh1.fx(z,time)                 = ttdh1O(z);
* ttic.fx(i,z,time)               = tticO(i,z);
 ttic.fx(i,z,time)$(not (sameas(i, "18_ELEC") and sameas(z, "01_KOR")))   = tticO(i,z);
 PD.fx("18_ELEC","01_KOR",time)   = PDO("18_ELEC","01_KOR");
 ttik.fx(k,j,z,time)              = ttikO(k,j,z);
 ttim.fx(i,zj,z,time)             = ttimO(i,zj,z);
 ttip.fx(j,z,time)                = ttipO(j,z);
* ttiw.fx(j,z,time)               = ttiwO(j,z);
 ttix.fx(i,z,zj,time)             = ttixO(i,z,zj);
* CTAX.fX(Z,time)                 = CTAX0(Z);
 CTAX.fX(CTAX_Z,time)             = CTAX0(CTAX_Z);
 PERMIT_TOTAL.fx(PERMIT_Z,time)   = PERMIT_TOTALO(PERMIT_Z) ;
*==============================================================================
*   Taking account of the existence or not of a feasible solution
*==============================================================================
PARAMETER
 SolStop
 If_Feasibl(time,scen)    Optimality status code
 StatSolver(time,scen)    Solver status code
 LastGood(scen)           Last feasible solution year
;
 SolStop = 0;
 LastGood(scen)=Endtime;
 file Status / 'Output_w-t/ModelStatus.xls'/;
* Column separator: 6 = tab-separated file
*                   5 = comma-separated file
     Status.pc=6;
* Number of decimal places (maximum 10)
     Status.nd=0;

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
 CABX.FX(z1,t1)      = CABXO(z1);
 CABX.FX(z1,time)$[ord(time) gt 1]
                      = CABX.l(z1,time-1)*[1+g_GDP(z1,time)];
                      
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

 W_lag(z,t1)       = WO_lag(z);
 W_lag(z,time)$[ord(time) gt 1]
                     = W.l(z,time-1);
                      
 PIXCON_lag(z,t1)   = PIXCONO_lag(z);
 PIXCON_lag(z,time)$[ord(time) gt 1]
                    = PIXCON.l(z,time-1); 
 
 ttiw_lag.fx(j,z,t1)  =ttiwO(j,z);
 ttiw_lag.fx(j,z,time)$[ord(time) gt 1]
                     =ttiw.l(j,z,time-1);

 PD.fx("18_ELEC","01_KOR",t1)  = PDO("18_ELEC","01_KOR");
 PD.fx("18_ELEC","01_KOR",time)$[ord(time) gt 1]
*                       =PD.l("18_ELEC","01_KOR",time-1)*[1+0.01];
                        = valPD("18_ELEC","01_KOR",time,'bau')*[1+0.01] ;                     
*==============================================================================
*   CTAX and PERMIT
*============================================================================== 
* CTAX.fx(z,time)$[ord(time) gt 1]
*                            = CTAX_NZS(z,time); 

* PERMIT_TOTAL.fx(PERMIT_Z,time)$[ord(time) gt 1]
*                             = PERMIT_TOTALO(PERMIT_Z)*PERMIT_Cal(PERMIT_Z,time);  
                
*==============================================================================
*   AEEI
*============================================================================== 
 AEEI(z,time) = AEEI_low(z,time);
 CO2FACTOR2(ene,j,z,time) = CO2FACTOR(ene,j,z)*AEEI(z,time);

*=============================================================================
* Solar & Wind Productivity Shock
*=============================================================================
* B_VA2('23_eWind',z,time)$[ord(time) gt 2]
*                        = B_VA2('23_eWind',z,time-1)*[1+0.02];

* B_VA2('24_eSolar',z,time)$[ord(time) gt 2]
*                        = B_VA2('24_eSolar',z,time-1)*[1+0.02];

*==============================================================================
*   Marginal abatement curves for emissions
*============================================================================== 
*CTAX_CO2(ene,j,'01_KOR',time)$[ord(time) gt 2]  =(1+ CTAX.L('01_KOR',time))** gamma_CO2(ene,j,'01_KOR');

*CO2FACTOR2_Star(ene,j,'01_KOR',time)$[ord(time) gt 2]= 
*CO2FACTOR(ene,j,'01_KOR') * exp(
* alpha_CO2(ene,j,'01_KOR') - alpha_CO2(ene,j,'01_KOR') *CTAX_CO2(ene,j,'01_KOR',time)
* );

*CO2FACTOR2(ene,j,'01_KOR',time)$[ord(time) gt 2]= CO2FACTOR2(ene,j,'01_KOR',time-1)+0.3*(CO2FACTOR2_Star(ene,j,'01_KOR',time)-CO2FACTOR2(ene,j,'01_KOR',time-1));

*==============================================================================
*Backstop technologies
*==============================================================================
$ontext
penetration_rate(i3,z,time)$[CTAX.L(z,time) gt 1.0] = penetration_rate(i3,z,time-1)+0.03;

if ((CTAX.L('01_KOR',time) gt 0.8), switch(i3,'01_KOR',time) = 1  ;
else switch(i3,'01_KOR',time) = 0 ;
);

if ((CTAX.L('02_CHN',time) gt 0.8), switch(i3,'02_CHN',time) = 1  ;
else switch(i3,'02_CHN',time) = 0 ;
);

if ((CTAX.L('03_JPN',time) gt 0.8), switch(i3,'03_JPN',time) = 1  ;
else switch(i3,'03_JPN',time) = 0 ;
);

if ((CTAX.L('04_RUS',time) gt 0.8), switch(i3,'04_RUS',time) = 1  ;
else switch(i3,'04_RUS',time) = 0 ;
);

if ((CTAX.L('05_MNG',time) gt 0.8), switch(i3,'05_MNG',time) = 1  ;
else switch(i3,'05_MNG',time) = 0 ;
);

if ((CTAX.L('06_PRK',time) gt 0.8), switch(i3,'06_PRK',time) = 1  ;
else switch(i3,'06_PRK',time) = 0 ;
);

if ((CTAX.L('07_NAM',time) gt 0.8), switch(i3,'07_NAM',time) = 1  ;
else switch(i3,'07_NAM',time) = 0 ;
);

if ((CTAX.L('08_LAM',time) gt 0.8), switch(i3,'08_LAM',time) = 1  ;
else switch(i3,'08_LAM',time) = 0 ;
);

if ((CTAX.L('09_WEU',time) gt 0.8), switch(i3,'09_WEU',time) = 1  ;
else switch(i3,'09_WEU',time) = 0 ;
);

if ((CTAX.L('10_EEU',time) gt 0.8), switch(i3,'10_EEU',time) = 1  ;
else switch(i3,'10_EEU',time) = 0 ;
);

if ((CTAX.L('11_FSU',time) gt 0.8), switch(i3,'11_FSU',time) = 1  ;
else switch(i3,'11_FSU',time) = 0 ;
);

if ((CTAX.L('12_MEA',time) gt 0.8), switch(i3,'12_MEA',time) = 1  ;
else switch(i3,'12_MEA',time) = 0 ;
);

if ((CTAX.L('13_AFR',time) gt 0.8), switch(i3,'13_AFR',time) = 1  ;
else switch(i3,'13_AFR',time) = 0 ;
);

if ((CTAX.L('14_CPA',time) gt 0.8), switch(i3,'14_CPA',time) = 1  ;
else switch(i3,'14_CPA',time) = 0 ;
);

if ((CTAX.L('15_SAS',time) gt 0.8), switch(i3,'15_SAS',time) = 1  ;
else switch(i3,'15_SAS',time) = 0 ;
);

if ((CTAX.L('16_PAS',time) gt 0.8), switch(i3,'16_PAS',time) = 1  ;
else switch(i3,'16_PAS',time) = 0 ;
);

if ((CTAX.L('17_PAO',time) gt 0.8), switch(i3,'17_PAO',time) = 1  ;
else switch(i3,'17_PAO',time) = 0 ;
);
$offText

*==============================================================================
* 6.2.2.3 Resolution
*==============================================================================

SOLVE PEPWT USING CNS ;
*solve PEPWT maximizing OBJ  using nlp ;

*==============================================================================
*   Taking account of the existence or not of a feasible solution
*==============================================================================
 If_Feasibl(time,'NZS') = PEPWT.modelstat;
 StatSolver(time,'NZS') = PEPWT.solvestat;

 Solstop = 1$(PEPWT.modelstat ne 16);
 LastGood('NZS')$(PEPWT.modelstat ne 16)= (time.val-1);

 put Status;
 put 'NZS', time.val, 'Optimality status', PEPWT.Tmodstat, 'Solver status', PEPWT.Tsolstat  /;

* The single element in subset T(time) is removed, and the subset is now empty.
T(time)          = NO;
* End of LOOP over time periods
];