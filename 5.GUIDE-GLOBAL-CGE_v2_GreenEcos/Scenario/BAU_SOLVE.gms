* Initialize Parameters
AEEI(z,time) = AEEI_BAU(z,time);

gr_BVAT(time) = 0.0; 
gr_BVAT(time)$(time.val <= 22) = 0.03;  
gr_BVAT(time)$(time.val >= 23) = 0.01;  

Temp_Cap(BS, Z_GRN, time) = 0.5;

delta_base(z)       = delta(z);
delta_t(j, z, time) = delta_base(z);
alpha_val(BS)       = 3.0;

* Assign Multifactor Productivity to reproduce GDP projections
A_VA.FX(z,time) = A_VA_RES(z,time);

* Set Reference Region (Numeraire)
zr(z)        = no;
zr('07_NAM') = yes;
z1(z)        = NOT[zr(z)];

* Fix Exogenous Macro Variables
cabix(z,'2019')             = 1.0; 
CABX.FX(z1,time)            = CABXO(z1) * cabix(z1,time);
G_REAL.FX(z,time)           = G_REALX(z,time);
sh0.fx(z,time)              = sh0X(z,time);
sh1.fx(z,time)              = sh1X(z,time);
ttdh0.fx(z,time)            = ttdh0O(z);
ttdh1.fx(z,time)            = ttdh1O(z);
ttic.fx(i,z,time)           = tticO(i,z);
ttim.fx(i,zj,z,time)        = ttimO(i,zj,z);
ttix.fx(i,z,zj,time)        = ttixO(i,z,zj);
ttik.fx('land',j,z,time)    = ttikO('land',j,z);
ttik.fx('natr',j,z,time)    = ttikO('natr',j,z);
ttik.fx('cap',j,z,time)     = ttikO('cap',j,z);
ttiw.fx(j,z,time)           = ttiwO(j,z);
ttip.fx(j,z,time)           = ttipO(j,z);
CTAX.fX(z,time)             = CTAXO(z);

*==============================================================================
* Resolution (Loop over time periods for the BAU Scenario)
*==============================================================================
LOOP[time$(time.val le EndTime),
    
    T(time) = YES;

* --- Initialization ---
$INCLUDE INIT.gms

* --- Closure (FP Closure: Endogenous exchange rates, fixed PIXGDP) ---
    e.FX(zr,time)     = eO(zr);
    PIXGDP.FX(z,time) = PIXGDPO(z) / sum[zr,eO(zr)];

* --- Variables fixed each period according to lagged values ---
    CMIN.FX(i,z,t1) = CMINO(i,z);
    CMIN.FX(i,z,time)$[ord(time) gt 1] = CMIN.l(i,z,time-1) * [1 + g_GDP(z,time)];
                     
    KD.fx(k,j,z,t1)$KDO(k,j,z) = KDO(k,j,z);
    KD.fx(k,j,z,time)${[ord(time) gt 1] and KDO(k,j,z)} = KD.l(k,j,z,time-1) * [1 - delta_t(j,z,time-1)] + IND.l(k,j,z,time-1);

    LST.FX(z,t1) = LSTO(z);
    LST.FX(z,time)$[ord(time) gt 1] = LST.l(z,time-1) * [1 + g_POP(z,time)];

    LS_lag(z,t1) = LSO(z);
    LS_lag(z,time)$[ord(time) gt 1] = LS.l(z,time-1);

    LST_lag(z,t1) = LSTO(z);
    LST_lag(z,time)$[ord(time) gt 1] = LST.l(z,time-1);

    W_lag(z,t1) = WO_lag(z);
    W_lag(z,time)$[ord(time) gt 1] = W.l(z,time-1);
                      
    PIXCON_lag(z,t1) = PIXCONO_lag(z);
    PIXCON_lag(z,time)$[ord(time) gt 1] = PIXCON.l(z,time-1);     
 
* --- Policy Recycling Assumptions ---
    recycle_gov(z,time) = 0;          
    recycle_hou(z,time) = 1;                              

* --- Solar & Wind Productivity Shock ---
    B_VA_t('23_eWind',z,time)$[ord(time) gt 1]  = B_VA_t('23_eWind',z,time-1) * [1 + SolarWind_TFP_BAU];
    B_VA_t('24_eSolar',z,time)$[ord(time) gt 1] = B_VA_t('24_eSolar',z,time-1) * [1 + SolarWind_TFP_BAU];
    B_VA_t('18_TnD',z,time)$[ord(time) gt 1]    = B_VA_t('18_TnD',z,time-1) * [1 + SolarWind_TFP_BAU];

* --- Marginal Abatement Curves (MAC) for emissions ---
    CTAX_CO2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2] = (1 + CTAX.L(PERMIT_Z,time))**gamma_CO2(ene,j7,PERMIT_Z);

    CO2FACTOR2_Star(ene,j7,PERMIT_Z,time)$[ord(time) gt 2] = 
        CO2FACTOR(ene,j7,PERMIT_Z) * exp(alpha_CO2(ene,j7,PERMIT_Z) - alpha_CO2(ene,j7,PERMIT_Z) * CTAX_CO2(ene,j7,PERMIT_Z,time));

    CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2] = 
        CO2FACTOR2(ene,j7,PERMIT_Z,time-1) + adjustment_factor * (CO2FACTOR2_Star(ene,j7,PERMIT_Z,time) - CO2FACTOR2(ene,j7,PERMIT_Z,time-1));

    CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2 and CO2FACTOR2(ene,j7,PERMIT_Z,time) > CO2FACTOR2(ene,j7,PERMIT_Z,time-1)] = CO2FACTOR2(ene,j7,PERMIT_Z,time-1);
    CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2 and CO2FACTOR2(ene,j7,PERMIT_Z,time) < MINCO2FACTOR(ene,j7,PERMIT_Z)] = MINCO2FACTOR(ene,j7,PERMIT_Z);

    CO2FACTOR2(ene,j5,Z_GRN,time)$[ord(time) gt 2 and ord(time) lt 27] = CO2FACTOR(ene,j5,Z_GRN);
    CO2FACTOR2(ene,j5,Z_GRN,time)$[ord(time) ge 27 and ord(time) le 32] = CO2FACTOR2(ene,j5,Z_GRN,time-1) * (1 - 0.05);

* --- Direct Air Capture (DAC) ---
    LOOP(z,
        IF(CTAX.L(z, time) >= DAC_TRIGGER,
            switchDAC(z, time+1) = 1;
            IF(DAC_growth_rate(z, time) = 0,          
                DAC_growth_rate(z, time+1) = (PERMIT_TOTALO(z) * 0.001) / DAC_MAX(z);
            ELSE
                DAC_growth_rate(z, time+1) = DAC_growth_rate(z, time) * 1.40;
            );
            DAC_growth_rate(z, time+1) = MIN(1.0, DAC_growth_rate(z, time+1));
        ELSE
            switchDAC(z, time+1) = 0;
            DAC_growth_rate(z, time+1) = 0;
        );
    );

* --- [Dynamic Update] Exogenous Supply Expansion of TSF ---
    LOOP(Z_GRN,
        Signal(BS, Z_GRN, time)$[ord(time) gt 1] = 
            MAX( 0, ( SUM(Conv$map_Conv(BS, Conv), PP.L(Conv, Z_GRN, time-1)) / PP.L(BS, Z_GRN, time-1) ) - 1 );
            
* [Core] Multiplier calculation without exp() function
* If PTSF <= 0.1, set to 0.95. If >= 0.15, set to 1.05. Linear interpolation between 0.1 and 0.15.
        TSFS(BS, Z_GRN, time)$[ord(time) gt 1] = TSFS(BS, Z_GRN, time-1) * (
            0.95 + 0.1 * MAX(0, MIN(1, (PTSF.L(BS, Z_GRN, time-1) - 0.1) / 0.05))
        ) * [ 1 + MIN(0.3, alpha_val(BS) * Signal(BS, Z_GRN, time)) ];

        TSFS(BS, Z_GRN, time)$[ord(time) gt 1] = MAX( TSFO(BS, Z_GRN), TSFS(BS, Z_GRN, time) );
    );

* --- [Structural Change] Gradual exogenous shift for Backstop technologies (Phase-in 2020-2025) ---
    IF(time.val <= 2019,
        phi_trans(time) = 0.0;
    ELSEIF (time.val > 2019 and time.val < 2025),
        phi_trans(time) = (time.val - 2019) / (2025 - 2019);
    ELSE
        phi_trans(time) = 1.0;
    );

    LOOP(Z_GRN,
* [1] Energy Structure Transition: Gradual electrification (Fossil -> Electricity)
        LOOP(BS$(not sameas(BS, '36_BS_WTRP') and not sameas(BS, '37_BS_ATRP')),
            aij2_t('18_ELEC', BS, Z_GRN, time) = aij2('18_ELEC', BS, Z_GRN)
                + (aij2('02_COAL', BS, Z_GRN) + aij2('03_OIL', BS, Z_GRN) 
                 + aij2('04_GAS', BS, Z_GRN) + aij2('10_PETROLCOAL', BS, Z_GRN)) * phi_trans(time);
                
            aij2_t('02_COAL', BS, Z_GRN, time)       = aij2('02_COAL', BS, Z_GRN) * (1 - phi_trans(time));
            aij2_t('03_OIL', BS, Z_GRN, time)        = aij2('03_OIL', BS, Z_GRN) * (1 - phi_trans(time));
            aij2_t('04_GAS', BS, Z_GRN, time)        = aij2('04_GAS', BS, Z_GRN) * (1 - phi_trans(time));
            aij2_t('10_PETROLCOAL', BS, Z_GRN, time) = aij2('10_PETROLCOAL', BS, Z_GRN) * (1 - phi_trans(time));
        );

* [2] Non-Energy Structure Transition: Industry-specific shifts
* (1) Green Chemicals
        aij_t('01_AGRICULT', '32_BSCHEMICAL', Z_GRN, time) = aij('01_AGRICULT', '32_BSCHEMICAL', Z_GRN) + (aij('11_CHEMICAL', '32_BSCHEMICAL', Z_GRN) * phi_trans(time));
        aij_t('11_CHEMICAL', '32_BSCHEMICAL', Z_GRN, time) = aij('11_CHEMICAL', '32_BSCHEMICAL', Z_GRN) * (1 - phi_trans(time));

* (2) Green Steel
        aij_t('13_IRONSTL', '34_BSIRONSTL', Z_GRN, time) = aij('13_IRONSTL', '34_BSIRONSTL', Z_GRN) - (aij('13_IRONSTL', '34_BSIRONSTL', Z_GRN) * 0.7 * phi_trans(time));
        aij_t('05_MINING', '34_BSIRONSTL', Z_GRN, time)  = aij('05_MINING', '34_BSIRONSTL', Z_GRN) - (aij('05_MINING', '34_BSIRONSTL', Z_GRN) * 0.5 * phi_trans(time));

* (3) Green Land Transport
        aij_t('15_MACHINE', '35_BS_LTRP', Z_GRN, time) = aij('15_MACHINE', '35_BS_LTRP', Z_GRN) + (aij('23_SER', '35_BS_LTRP', Z_GRN) * 0.2 * phi_trans(time));
        aij_t('23_SER', '35_BS_LTRP', Z_GRN, time)     = aij('23_SER', '35_BS_LTRP', Z_GRN) - (aij('23_SER', '35_BS_LTRP', Z_GRN) * 0.2 * phi_trans(time));
    );

* --- Zero-Production for non-active Backstop technologies (Z_OTH regions) ---
* Volumes set to zero
    XST.fx(BS, Z_OTH, t)     = 0;
    KLE.fx(BS, Z_OTH, t)     = 0;
    VA.fx(BS, Z_OTH, t)      = 0;
    LDC.fx(BS, Z_OTH, t)     = 0;
    KDC.fx(BS, Z_OTH, t)     = 0;
    LD.fx(BS, Z_OTH, t)      = 0;
    KD.fx(k, BS, Z_OTH, t)   = 0;
    IND.fx(k, BS, Z_OTH, t)  = 0;
    CI.fx(BS, Z_OTH, t)      = 0;
    CE.fx(BS, Z_OTH, t)      = 0;
    DI.fx(i, BS, Z_OTH, t)   = 0;
    DE.fx(ene, BS, Z_OTH, t) = 0;
    TIP.fx(BS, Z_OTH, t)     = 0;
    TIW.fx(BS, Z_OTH, t)     = 0;
    TIK.fx(k, BS, Z_OTH, t)  = 0;

* Prices and indices set to one
    PT.fx(BS, Z_OTH, t)      = 1;
    PP.fx(BS, Z_OTH, t)      = 1;
    PKLE.fx(BS, Z_OTH, t)    = 1;
    PVA.fx(BS, Z_OTH, t)     = 1;
    PCI.fx(BS, Z_OTH, t)     = 1;
    PCE.fx(BS, Z_OTH, t)     = 1;
    WC.fx(BS, Z_OTH, t)      = 1;
    RC.fx(BS, Z_OTH, t)      = 1;
    WTI.fx(BS, Z_OTH, t)     = 1;
    RTI.fx(k, BS, Z_OTH, t)  = 1;

    LOOP(MAP_BS(BS, conv, I_BS),
        XS.fx(BS, I_BS, Z_OTH, t)   = 0;
        DS.fx(BS, I_BS, Z_OTH, t)   = 0;
        EXTT.fx(BS, I_BS, Z_OTH, t) = 0;
        P2.fx(BS, I_BS, Z_OTH, t)   = 1;
    );

* --- Solve Command ---
    SOLVE CGE USING CNS ;
    T(time) = NO;

]; 
* End of LOOP over time periods
*==============================================================================