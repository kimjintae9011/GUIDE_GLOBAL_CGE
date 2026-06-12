* Initialize Parameters
SW_GLOBAL = 0;
SW_NEAICM = 1;
SW_NEAICMCJK = 0;

AEEI(z,time) = AEEI_NZ(z,time);

penalty_rate(j) = 0.05;

gr_BVAT(time) = 0.0; 
gr_BVAT(time)$(time.val <= 22) = 0.03;  
gr_BVAT(time)$(time.val >= 23) = 0.01;  

Temp_Cap(BS, Z_GRN, time) = 0.5;

delta_base(z)       = delta(z);
delta_t(j, z, time) = delta_base(z);
alpha_val(BS)       = 3.0;

*==============================================================================
*Choice of multifactor productivity
*==============================================================================
* Reproduce the real GDP projections by fixing A_VA:
A_VA.FX(z,time)  = A_VA_RES(z,time);

*==============================================================================
* Choice of reference region
*==============================================================================
zr(z)        = no;
zr('07_NAM') = yes;
z1(z)        = NOT[zr(z)];

*==============================================================================
* Closures and Exogenous variables
*==============================================================================
* FP CLOSURE: Fixed PIXGDPs; numeraire is exchange rate of reference region
e.FX(zr,time)     = eO(zr);
PIXGDP.FX(z,time) = PIXGDPO(z) / sum(zr,eO(zr));

cabix(z,'2019')                = 1.0; 
CABX.FX(z1,time)               = CABXO(z1) * cabix(z1,time);
G_REAL.FX(z,time)              = G_REALX(z,time);
sh0.fx(z,time)                 = sh0X(z,time);
sh1.fx(z,time)                 = sh1X(z,time);
ttdh0.fx(z,time)               = ttdh0O(z); 
ttdh1.fx(z,time)               = ttdh1O(z);
ttic.fx(i,z,time)              = tticO(i,z);
ttim.fx(i,zj,z,time)           = ttimO(i,zj,z);
ttix.fx(i,z,zj,time)           = ttixO(i,z,zj);
ttik.fx('land',j,z,time)       = ttikO('land',j,z);
ttik.fx('natr',j,z,time)       = ttikO('natr',j,z);
ttik.fx('cap',j,z,time)        = ttikO('cap',j,z);
ttiw.fx(j,z,time)              = ttiwO(j,z);
ttip.fx(j,z,time)              = ttipO(j,z);
CTAX.lo(z,time) = -inf;
CTAX.up(z,time) = +inf;
K_idle.fx(k,j,z,time) = 0;
*PERMIT_TOTAL.fx(PERMIT_Z,time) = PERMIT_TOTALO(PERMIT_Z);

*==============================================================================
* Solution (Loop over time periods)
*==============================================================================
LOOP[time$(time.val le EndTime),
    
    T(time) = YES;

* --- Initialisation ---
$INCLUDE INIT.gms

* --- Closures (Loop Internal) ---
    e.FX(zr,time)     = eO(zr);
    PIXGDP.FX(z,time) = PIXGDPO(z) / sum[zr,eO(zr)];

* ==============================================================================
* [Dynamic Update] Accelerated depreciation (early retirement) of conventional 
* industries when carbon price exceeds $100 (1.0)
* ==============================================================================
    LOOP(Z_GRN,
        LOOP(j,
* Apply penalty only to industries in the DIRTY set
            IF(DIRTY(j), 
                delta_t(j, Z_GRN, time)$[ord(time) gt 1] = delta_base(Z_GRN) + penalty_rate(j);
            ELSE
* Maintain normal depreciation for non-DIRTY industries and backstop (BS) technologies
                delta_t(j, Z_GRN, time) = delta_base(Z_GRN);
            );
        );
    );

*==============================================================================
* 6.2.2.2 Variables fixed each period according to their lagged values
*==============================================================================                     
    CMIN.FX(i,z,t1) = CMINO(i,z);
    CMIN.FX(i,z,time)$[ord(time) gt 1] = CMIN.l(i,z,time-1) * [1 + g_GDP(z,time)];
                      
    KD.fx(k,j,z,t1)$KDO(k,j,z) = KDO(k,j,z);
    KD.fx(k,j,z,time)${[ord(time) gt 1] and KDO(k,j,z)} 
        = KD.l(k,j,z,time-1) * [1 - delta_t(j,z,time-1)] + MAX(0, IND.l(k,j,z,time-1));
    
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
                                                             
*==============================================================================
* CTAX and PERMIT
*============================================================================== 
*    PERMIT_TOTAL.fx(PERMIT_Z,time)$[ord(time) gt 1] = PERMIT_TOTALO(PERMIT_Z) * PERMIT_NZ(PERMIT_Z,time);  

    recycle_gov(z,time) = 0;          
    recycle_hou(z,time) = 1;           

*=============================================================================
* Solar & Wind Productivity Shock
*=============================================================================
    B_VA_t('18_TnD',z,time)$[ord(time) gt 1]     = B_VA_t('18_TnD',z,time-1) * [1 + SolarWind_TFP_NZ];
    B_VA_t('23_eWind',z,time)$[ord(time) gt 1]  = B_VA_t('23_eWind',z,time-1) * [1 + SolarWind_TFP_NZ];
    B_VA_t('24_eSolar',z,time)$[ord(time) gt 1]  = B_VA_t('24_eSolar',z,time-1) * [1 + SolarWind_TFP_NZ];

*=============================================================================
* Household Emission AEEI
*=============================================================================
   CO2FACTORHH2(ene,z,time)$[ord(time) gt 1]     = CO2FACTORHH(ene,z)*AEEI(z,time);

*==============================================================================
* Marginal abatement curves for emissions
*============================================================================== 
* 1. Calculate carbon tax impact factor
    CTAX_CO2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2] = (1 + CTAX.L(PERMIT_Z,time))**gamma_CO2(ene,j7,PERMIT_Z);

* 2. Calculate target CO2 factor based on tax
    CO2FACTOR2_Star(ene,j7,PERMIT_Z,time)$[ord(time) gt 2] = 
        CO2FACTOR(ene,j7,PERMIT_Z) * exp(alpha_CO2(ene,j7,PERMIT_Z) - alpha_CO2(ene,j7,PERMIT_Z) * CTAX_CO2(ene,j7,PERMIT_Z,time));

* 3. Apply partial adjustment to CO2 factor
    CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2] = 
        CO2FACTOR2(ene,j7,PERMIT_Z,time-1) + adjustment_factor * (CO2FACTOR2_Star(ene,j7,PERMIT_Z,time) - CO2FACTOR2(ene,j7,PERMIT_Z,time-1));

* 4. Apply Monotonic Decrease Constraint 
    CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2 and CO2FACTOR2(ene,j7,PERMIT_Z,time) > CO2FACTOR2(ene,j7,PERMIT_Z,time-1)] = CO2FACTOR2(ene,j7,PERMIT_Z,time-1);

* 5. Apply minimum floor constraint
    CO2FACTOR2(ene,j7,PERMIT_Z,time)$[ord(time) gt 2 and CO2FACTOR2(ene,j7,PERMIT_Z,time) < MINCO2FACTOR(ene,j7,PERMIT_Z)] = MINCO2FACTOR(ene,j7,PERMIT_Z);

* [B] Power Sector: Linear reduction from 2040 (t=22) to 2050 (t=32)
* Before 2035: Maintain existing intensity
    CO2FACTOR2(ene,j5,Z_GRN,time)$[ord(time) le 22] = CO2FACTOR(ene,j5,Z_GRN);
  
* 2040 (t=22) ~ 2050 (t=32): Decrease linearly
    CO2FACTOR2(ene,j5,Z_GRN,time)$[ord(time) gt 22 and ord(time) le 32] 
      = CO2FACTOR(ene,j5,Z_GRN) * ( 1 - 0.8* (ord(time) - 22) / 10 );
      
*==============================================================================
* Power Sector Issue
*============================================================================== 
* j5와 Z_GRN에 속하는 섹터와 지역에 대해서만 루프 실행
*loop((j,z)$[ j5(j) and Z_GRN(z) ],
loop((j,z)$[ j5(j) ],
    
* [핵심 보완] 기준연도(t=1)에는 이전 연도가 없으므로 무조건 정상 체제로 세팅
    if(ord(time) eq 1,
        XST.lo(j,z,time) = -inf;
        XST.up(j,z,time) = +inf;
        ttip.fx(j,z,time) = ttipO(j,z);
        
* 기준연도 이후(t > 1)부터 스왑 로직 작동
    else
* [A] 정상 체제: 직전 연도 산출량이 기준연도의 2%보다 클 때
        if( XST.l(j,z,time-1) > 0.01 * XSTO(j,z),
            
* 산출량(XST)은 내생변수 (주석 해제 필수!)
            XST.lo(j,z,time) = -inf;
            XST.up(j,z,time) = +inf;
            
* ttip는 외생변수 (기존 정책 세율로 고정)
            ttip.fx(j,z,time) = ttipO(j,z);

* [B] 퇴출 체제 (Variable Swap): 2% 이하로 떨어졌을 때
        else
            
* 산출량(XST)을 외생변수로 고정 (2% 강제 가동 유지)
            XST.fx(j,z,time) = 0.01 * XSTO(j,z);
            
* ttip를 내생변수로 풀어줌 (모형이 마이너스 보조금 규모를 스스로 계산)
            ttip.lo(j,z,time) = -inf;
            ttip.up(j,z,time) = +inf;
        );
    );
);
   
*==============================================================================
* Direct Air Capture (DAC)
*============================================================================== 
    LOOP(z,
        IF(CTAX.L(z, time) >= DAC_TRIGGER,
            switchDAC(z, time+1) = 1;
            IF(DAC_growth_rate(z, time) = 0,          
                DAC_growth_rate(z, time+1) = (PERMIT_TOTALO(z) * 0.01) / DAC_MAX(z);
            ELSE
                DAC_growth_rate(z, time+1) = DAC_growth_rate(z, time) * 1.50;
            );
            DAC_growth_rate(z, time+1) = MIN(1.0, DAC_growth_rate(z, time+1));
        ELSE
            switchDAC(z, time+1) = 0;
            DAC_growth_rate(z, time+1) = 0;
        );
    ); 

*==============================================================================
* [Dynamic Update] Exogenous Supply Expansion of Sector-Specific Technology Specific Factors (TSF)
*==============================================================================
    LOOP(Z_GRN,
* 1. Calculate price signal
        Signal(BS, Z_GRN, time)$[ord(time) gt 1] 
            = MAX( 0, ( SUM(Conv$map_Conv(BS, Conv), PP.L(Conv, Z_GRN, time-1)) / PP.L(BS, Z_GRN, time-1) ) - 1 );
            
* 2. Calculate multiplier without exp() function
* If PTSF <= 0.1, set to 0.95. If PTSF >= 0.15, set to 1.05.
* Linear interpolation between 0.95 and 1.05 for PTSF values between 0.1 and 0.15
        TSFS(BS, Z_GRN, time)$[ord(time) gt 1] = TSFS(BS, Z_GRN, time-1) * (
            0.95 + 0.1 * MAX(0, MIN(1, (PTSF.L(BS, Z_GRN, time-1) - 0.1) / 0.05))
        ) * [ 1 + MIN(0.3, alpha_val(BS) * Signal(BS, Z_GRN, time)) ];

* 3. Apply lower bound constraint
        TSFS(BS, Z_GRN, time)$[ord(time) gt 1] = MAX( TSFO(BS, Z_GRN), TSFS(BS, Z_GRN, time) );
    );

    LOOP(Z_GRN,
        B_VAT_t('32_BSCHEMICAL', Z_GRN, time)$[ord(time) gt 1] = B_VAT_t('32_BSCHEMICAL', Z_GRN, time-1) * (1 + gr_BVAT(time));
        B_VAT_t('33_BSNONMET', Z_GRN, time)$[ord(time) gt 1]   = B_VAT_t('33_BSNONMET', Z_GRN, time-1)   * (1 + gr_BVAT(time));
        B_VAT_t('34_BSIRONSTL', Z_GRN, time)$[ord(time) gt 1]  = B_VAT_t('34_BSIRONSTL', Z_GRN, time-1)  * (1 + gr_BVAT(time));
        B_VA_t(Conv, Z_GRN, time)$[ord(time) gt 1]             = B_VA_t(Conv, Z_GRN, time-1) * (1 - 0.02);
    );

* ==============================================================================
* [Structural Change 1] Gradual exogenous shift in techno-economic recipes for 
* Backstop technologies (Phase-in timeline: 2019 to 2025)
* ==============================================================================
    IF(time.val <= 2019,
        phi_trans(time) = 0.0;
    ELSEIF (time.val > 2019 and time.val < 2025),
        phi_trans(time) = (time.val - 2019) / (2025 - 2019);
    ELSE
        phi_trans(time) = 1.0;
    );

    LOOP(Z_GRN,
* [1] Energy Structure Transition: Gradual electrification (Fossil -> Electricity)
* Exclude Shipping (36_BS_WTRP) and Aviation (37_BS_ATRP) from electrification
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

* ==============================================================================
* [Structural Change 2] Process Innovation: Reduction of coal input and 
* electrification in the PETROLCOAL industry (Phase-in timeline: 2019 to 2050)
* ==============================================================================
* Reassigning phi_trans for a long-term transition (2050)
    IF(time.val <= 2019,
        phi_trans(time) = 0.0;
    ELSEIF (time.val > 2019 and time.val < 2050),
        phi_trans(time) = (time.val - 2019) / (2050 - 2019);
    ELSE
        phi_trans(time) = 1.0;
    );

    LOOP(Z_GRN,
* 1. Addition: Transfer 100% of the reduced coal input share to electricity (18_ELEC)
        aij2_t('18_ELEC', '10_PETROLCOAL', Z_GRN, time) 
            = aij2('18_ELEC', '10_PETROLCOAL', Z_GRN) 
            + aij2('02_COAL', '10_PETROLCOAL', Z_GRN) * phi_trans(time);
            
* 2. Subtraction: Gradually reduce coal (02_COAL) input
        aij2_t('02_COAL', '10_PETROLCOAL', Z_GRN, time) 
            = aij2('02_COAL', '10_PETROLCOAL', Z_GRN) * (1 - phi_trans(time));
    );

*==============================================================================
* Zero-Production for non-active Backstop technologies (Z_OTH regions)
*==============================================================================
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

* Process variables with MAP_BS structure (using BS and I_BS together)
    LOOP(MAP_BS(BS, conv, I_BS),
        XS.fx(BS, I_BS, Z_OTH, t)   = 0;
        DS.fx(BS, I_BS, Z_OTH, t)   = 0;
        EXTT.fx(BS, I_BS, Z_OTH, t) = 0;
        P2.fx(BS, I_BS, Z_OTH, t)   = 1;
    );

*==============================================================================
* Resolution Execution
*==============================================================================
    SOLVE CGE USING CNS ;
    T(time) = NO;

]; 
* End of LOOP over time periods