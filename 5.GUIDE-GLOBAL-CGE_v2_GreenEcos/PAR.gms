*==============================================================================
* Parameters (Grouped for Readability)
*==============================================================================
PARAMETER
* --- [1] Scale Parameters (CES / CET) ---
 A_K(z)                       Scale parameter (investment function)
 B_KD(j,z)                    Scale parameter (CES - composite capital)
 B_LD(j,z)                    Scale parameter (CES - composite labor)
 B_M1(i,z)                    Scale parameter (CES - composite commodity)
 B_M2(i,z)                    Scale parameter (CES - composite import)
 B_VA(j,z)                    Scale parameter (CES - value added)
 B_VA_t(j,z,time)             Scale parameter (CES - value added)
 B_KLE(j,z)                   Scale parameter (CES - composite KLE)
 B_ENER_t(j,z,time)           Scale parameter (CES - composite ENER)
 B_ENER_elec(j,z)             Scale parameter (CES - composite ENER)
 B_ENER_nelec(j,z)            Scale parameter (CES - composite ENER)
 B_ENER_coalgas(j,z)          Scale parameter (CES - composite ENER)
 B_ENER_oilprod(j,z)          Scale parameter (CES - composite ENER)
 B_X1(i,z)                    Scale parameter (CET - total output)
 B_X2(i,z)                    Scale parameter (CET - composite export)
 B_MultiOut(i,z)              Scale parameter (CES - top level)
 B_POWER(z)                   Scale parameter (CES - Aggregated Electricity)
 B_BS(j,Z_GRN)                Scale parameter for backstop nest
 B_VAT(BS,Z_GRN)              Scale parameter for VAT nest
 B_VAT_t(BS,Z_GRN,time)       Scale parameter for VAT nest over time

* --- [2] Share Parameters ---
 beta_D_X1(i,z)               Share parameter (CET - total output - local sales)
 beta_EX_X1(i,z)              Share parameter (CET - total output - export)
 beta_X2(i,z,zj)              Share parameter (CET - composite export)
 beta_MultiOut(j,i,z)         Share parameter (CES - top level)
 beta_POWER(power,z)          Share parameter (CES - Aggregated Electricity)
 beta_BS(j, I_BS, z)          Share parameter for backstop nest
 beta_BS_t(j, I_BS, z, time)  Share parameter for backstop nest over time
 beta_KD(k,j,z)               Share parameter (CES - composite capital)
 beta_M1(i,z)                 Share parameter (CES - composite commodity)
 beta_M2(i,zj,z)              Share parameter (CES - composite import)
 beta_VA(j,z)                 Share parameter (CES - value added)
 beta_KLE(j,z)                Share parameter (CES - KLE composite)
 beta_KLE2(j,z)               Share parameter (CES - KLE composite)
 beta_KLE2_t(j,z,time)        Share parameter (CES - KLE composite)
 beta_ENER_elec(j,z)          Share parameter (CES - ENER composite)
 beta_ENER_nelec(j,z)         Share parameter (CES - ENER composite)
 beta_ENER_coalgas(ene5,j,z)  Share parameter (CES - ENER composite)
 beta_ENER_oilprod(ene6,j,z)  Share parameter (CES - ENER composite)
 beta_VAT(BS,Z_GRN)           Share parameter for VA in VAT nest
 gamma_GVT(i,z)               Share of commodity i in total current public expenditures
 gamma_INV(i,z)               Share of commodity i in total investment expenditures
 gamma_LES(i,z)               Marginal share of commodity i in household consumption budget
 TnDShare(z)                  T&D share of Aggregated electricity [Ratio]
 PowerShare(z)                Power Industries share of Aggregated electricity [Ratio]
 theta2(j,i,z)                Export share of composite activity [Ratio]

* --- [3] Elasticity Parameters (rho, sigma, elas) ---
 rho_KD(j,z)                  Elasticity parameter (CES - composite capital)
 rho_LD(j,z)                  Elasticity parameter (CES - composite labor)
 rho_M1(i,z)                  Elasticity parameter (CES - composite commodity)
 rho_M2(i,z)                  Elasticity parameter (CES - composite import)
 rho_VA(j,z)                  Elasticity parameter (CES - value added)
 rho_KLE(j,z)                 Elasticity parameter (CES - KLE)
 rho_ENER_elec(j,z)           Elasticity parameter (CES - ENER)
 rho_ENER_nelec(j,z)          Elasticity parameter (CES - ENER)
 rho_ENER_coalgas(j,z)        Elasticity parameter (CES - ENER)
 rho_ENER_oilprod(j,z)        Elasticity parameter (CES - ENER)
 rho_X1(i,z)                  Elasticity parameter (CET - composite export)
 rho_X2(i,z)                  Elasticity parameter (CET - composite export)
 rho_MultiOut(i,z)            Elasticity parameter (CES - top level)
 rho_POWER(z)                 Elasticity parameter (CES - Aggregated Electricity)
 rho_BS(j, Z_GRN)             Substitution parameter for backstop nest
 rho_VAT(BS,Z_GRN)            Substitution parameter for VAT nest
 sigma_INV(k,j,z)             Elasticity (investment demand)
 sigma_KD(j,z)                Elasticity (CES - composite capital)
 sigma_M1(i,z)                Elasticity (CES - composite commodity)
 sigma_M2(i,z)                Elasticity (CES - composite import)
 sigma_VA(j,z)                Elasticity (CES - value added)
 sigma_KLE(j,z)               Elasticity (CES - kle)
 sigma_ENER_elec(j,z)         Elasticity (CES - within energy)
 sigma_ENER_nelec(j,z)        Elasticity (CES - within energy)
 sigma_ENER_coalgas(j,z)      Elasticity (CES - within energy)
 sigma_ENER_oilprod(j,z)      Elasticity (CES - within energy)
 sigma_X1(i,z)                Elasticity (CET - total output)
 sigma_X2(i,z)                Elasticity (CET - composite export)
 sigma_MultiOut(i,z)          Elasticity (CES - top level)
 sigma_POWER(z)               Elasticity (CES - Aggregated Electricity)
 sigma_BS(BS, Z_GRN)          Substitution elasticity between conventional and backstop
 sigma_Y(i,z)                 Income elasticity of consumption
 sigma_VAT(BS,Z_GRN)          Elasticity of substitution between VA and TSF
 elasLS(z)                    Elasticity of labor supply
 eta                          Price elasticity of indexed transfers and parameters

* --- [4] Tax Rates & Margins ---
 tticO(i,z)                   Tax rate on commodity i
 ttikO(k,j,z)                 Tax rate on capital k used in industry j
 ttimO(i,zj,z)                Rate of taxes and duties on imports of commodity i from country zj
 ttipO(j,z)                   Tax rate on the production of industry j
 ttiwO(j,z)                   Tax rate on type l worker compensation in industry j
 ttixO(i,z,zj)                Export tax rate on exported commodity x
 tmrg(i,ij,zj,z)              Rate of margin i applied to commodity ij imported from country zj

* --- [5] Macro, Growth & Demographic Variables ---
 TOT_POP(z,time)              Total population [Millions]
 POPO(z)                      Population in 2019 [Millions]
 g_GDP(z,time)                GDP past and projected growth rate [%]
 g_LS(z,time)                 Active population past and projected growth rate [%]
 g_POP(z,time)                Population past and projected growth rate [%]
 g_SDR(z,time)                Growth rate of domestic savings rate [%]
 exogro(z,time)               Exogenous growth factor for exogenously growing variables except labor
 growthz(z)                   Steady state growth [%]
 delta(z)                     Depreciation rate of capital in country z
 frisch(z)                    Frisch parameter (LES function)
 CABXsur(z,time)              Current account balance surplus component
 CABXdef(z,time)              Current account balance deficit component
 Bal(time)                    Global current account balance check
 mu(time)                     Adjustment factor for CAB
 CABix(z,time)                Current account balance index

* --- [6] Energy, Emissions & Policy Flags ---
 AEEI(z,time)                    Autonomous Energy Efficiency Improvements
 CTAX_BAU(z,time)            Carbon Price $100 per tCO2eq
 PERMIT_NDC(z,time)        Emission Constraint NDC
 PERMIT_NZ(z,time)          Emission Constraint NZ
 AEEI_BAU(z,time)            Baseline AEEI
 AEEI_NDC(z,time)            NDC AEEI
 AEEI_NZ(z,time)              NZ AEEI
 recycle_gov(z,time)          Binary variable (0 if no use of CTAX Rebate)
 recycle_hou(z,time)          Binary variable (0 if no use of CTAX Rebate)
 CTAX_UserDefined(z,time) UserDefined CTAX
 AEEI_UserDefined(z,time)     UserDefined AEEI
 SolarWindTFP_UserDefined(z,time)  UserDefined SolarWind_TFP

* --- [7] Other Coefficients & Rescaling ---
 aij(i,j,z)                   Input-output coefficient
 aij_t(i,j,z,time)            Input-output coefficient
 aij2(i,j,z)                  Input-output coefficient (intermediate energy)
 aij2_t(i,j,z,time)           Input-output coefficient (intermediate energy)
 io(j,z)                      Coefficient (Leontief - intermediate consumption)
 io2(j,z)                     Coefficient (Leontief - intermediate energy consumption)
 v(j,z)                       Value added Coefficient (Leontief)
 v2(j,z)                      KLE Share parameter (Leontief)
 kmob                         Flag parameter (1 if capital is mobile)
 RES                          Rescaling factor [Base = 10000 for 10G$]
 v_tsf(BS,Z_GRN)              Leontief input coefficient for TSF
 TSFS(BS,Z_GRN,time)          Supply of TSF
 VATO(BS,Z_GRN)               Base year quantity of VAT composite
 PVATO(BS,Z_GRN)              Base year price of VAT composite    
 v_vat(BS,Z_GRN)              Leontief coefficient for VAT composite to XST
;

*==============================================================================
* Volume
*==============================================================================
PARAMETER
 CABXO(z)            Current account balance of region z in terms of the international currency (pseudo-volume variable)
 CO(i,z)             Consumption of commodity i by households in region z
 CGO(i,z)            Public consumption of commodity i in region z
 CIO(j,z)            Total intermediate consumption of industry j in region z
 CEO(j,z)            Total energy intermediate consumption of industry j in region z
 CEelecO(j,z)        Total energy intermediate consumption of industry j in region z
 CEnelecO(j,z)       Total energy intermediate consumption of industry j in region z
 CMINO(i,z)          Minimum consumption of commodity i by households in region z
 CTH_REALO(z)        Real household consumption in region z
 DDO(i,z)            Domestic demand for commodity i produced locally in region z
 DIO(i,j,z)          Intermediate consumption of commodity i by industry j in region z
 DEO(ene,j,z)        Intermediate energy consumption of commodity i by industry j in region z
 DEelecO(j,z)        Intermediate energy consumption of commodity i by industry j in region z
 DEnelecO(j,z)       Intermediate energy consumption of commodity i by industry j in region z
 DEcoalgasO(j,z)     Intermediate energy consumption of commodity i by industry j in region z
 DEcoalO(j,z)        Intermediate energy consumption of commodity i by industry j in region z
 DEgasO(j,z)         Intermediate energy consumption of commodity i by industry j in region z
 DEoilpetrolO(j,z)   Intermediate energy consumption of commodity i by industry j in region z
 DEoilO(j,z)         Intermediate energy consumption of commodity i by industry j in region z
 DEpetrolO(j,z)      Intermediate energy consumption of commodity i by industry j in region z
 DITO(i,z)           Total intermediate demand of commodity i in region z
 DSO(j,i,z)          Supply of commodity i by sector j to the domestic market
 DSO_I(i,z)          Supply of commodity i to the domestic market of region z
 DSO_J(j,z)          Supply of activity j to the domestic market of region z
 EXO(i,z,zj)         Quantity of product i exported by country z to country zj
 EXTO(i,z)           Supply of composite commodity i by region z to the export market
 EXTTO(j,i,z)        Supply of activity j to the export market i of region z
 G_REALO(z)          Current real government expenditures on goods and services in region z
 GDP_BP_REALO(z)     Real GDP at basic prices
 GDP_MP_REALO(z)     Real GDP at market prices
 GDP_BP_W_REALO      Real GDP at basic prices
 IMO(i,zj,z)         Quantity of product i imported by country z from country zj
 IMTO(i,z)           Quantity demanded of composite imports of commodity i by region z
 INDO(k,j,z)         Volume of new type k capital investment to industry j in region z
 INVO(i,z)           Final demand of commodity i for investment purposes (GFCF) in region z
 IT_REALO(z)         Real gross fixed capital formation
 KDO(k,j,z)          Demand for type k capital by industry j in region z
 KDCO(j,z)           Demand for composite capital by industry j in region z
 KSO(k,z)            Supply of type k capital in region z
 KSTO(z)             Total supply of capital in region z
 LDO(j,z)            Demand for type l labor by industry j in region z   
 LDCO(j,z)           Demand for composite labor by industry j in region z
 LSO(z)              Supply of type l labor in region z
 LSTO(z)             Supply of type l labor in region z (Trend)
 LSO_lag(z)          Supply of type l labor in region z (T-1)
 LSTO_lag(z)         Supply of type l labor in region z (Trend T-1)
 MRGNO(i,z)          Domestic production of commodity i in region z exported as international margin services
 QO(i,z)             Quantity demanded of composite commodity i in region z
 VAO(j,z)            Value added of industry j in region z
 KLEO(j,z)           KLE of industry j in region z
 XSO_I(i,z)          Commodity i total production
 XSO(j,i,z)          Total output of industry j in region z
 XSTO(j,z)           Total output of industry j
 QPOWERO(z)          Total power output in region z
 QBSO(BS, Z_GRN)     Base year total output of backstop nest
 OBJO                Base year objective function value
 EMPLOY(j,z)       Employment by sector 2019 (thousand) 
;

*==============================================================================
* Price
*==============================================================================
PARAMETER
 eO(z)               Exchange rate (price of international currency in terms of region z local currency)
 IRO(z)              Interest rate
 PO(i,z)             Basic price of commodity i in region z
 PO2(j,i,z)          Basic price of industry js production of commodity i
 PO3(i,j,z)          Basic price of power industry js production of commodity i
 PO4(i,j,z)          Basic energy commodity price of industry js production of commodity i
 PPOWERO(z)          Basic price of composite power commodity in region z
 PBSO(BS, Z_GRN)     Base year price of backstop nest composite
 PIO(i,z)            Basic price of composite activity commodity in region z
 PTO(j,z)            Basic price of industry js output
 PCO(i,z)            Purchaser price of composite commodity i (including all taxes and margins) in region z
 PCIO(j,z)           Intermediate consumption price index of industry j in region z
 PCEO(j,z)           Intermediate energy consumption price index of industry j in region z
 PCEelecO(j,z)       Intermediate energy consumption price index of industry j in region z
 PCEnelecO(j,z)      Intermediate energy consumption price index of industry j in region z
 PCEcoalgasO(j,z)    Intermediate energy consumption price index of industry j in region z
 PCEcoalO(j,z)       Intermediate energy consumption price index of industry j in region z
 PCEgasO(j,z)        Intermediate energy consumption price index of industry j in region z
 PCEoilpetrolO(j,z)  Intermediate energy consumption price index of industry j in region z
 PCEoilO(j,z)        Intermediate energy consumption price index of industry j in region z
 PCEpetrolO(j,z)     Intermediate energy consumption price index of industry j in region z
 PDO(i,z)            Price of local product i sold on region z domestic market (including all taxes)
 PEO(i,z,zj)         Price received for commodity i exported to region zj by region z (excluding export taxes)
 PETO(i,z)           Border price of composite commodity i exported by region z
 PIXCONO(z)          Consumer price index in region z
 PIXCONO_lag(z)      Consumer price index in region z
 PIXGDPO(z)          GDP deflator in region z
 PIXGDP_WO           World GDP deflator
 PIXGVTO(z)          Public expenditures price index in region z
 PIXINVO(z)          Investment price index in region z
 PKO(z)              Price of new capital in region z
 PLO(i,z)            Price of local product i (excluding all taxes on products) in region z
 PMO(i,zj,z)         Price of commodity i imported by region z from region zj (including all taxes duties and margins)
 PMTO(i,z)           Price of composite commodity i imported by region z (including all taxes duties and margins)
 PPO(j,z)            Unit cost of industry j in region z including taxes directly related to capital and labor
 PVAO(j,z)           Price of industry j value added in region z
 PKLEO(j,z)          Price of industry j KLE in region z
 PWMO(i,zj,z)        World price of commodity i imported from country zj by region z (expressed in international currency)
 PWMGO(i)            World price of margin i (expressed in international currency)
 PWXO(i,z,zj)        World price of commodity i exported to country zj by region z (expressed in international currency)
 RO(k,j,z)           Rental rate of type k capital in industry j of region z
 RCO(j,z)            Rental rate of industry j composite capital in region z
 RKO(k,z)            Rental rate of type k capital in region z
 RTIO(k,j,z)         Rental rate paid by industry j for type k capital in region z including capital taxes
 UO(z)               User cost of capital in region z
 WO(z)               Wage rate of type l labor in region z
 WO_lag(z)           Wage rate of type l labor in region z
 WCO(j,z)            Wage rate of industry j composite labor in region z
 WTIO(j,z)           Wage rate paid by industry j for type l labor in region z including payroll taxes
;

*==============================================================================
* Nominal (value)
*==============================================================================
PARAMETER
 CABO(z)             Current account balance of region z
 CTHO(z)             Consumption budget of households in region z
 DEPO(z)             Amount of depreciation (capital consumption allowance) in region z
 GO(z)               Current government expenditures on goods and services in region z
 GDP_BPO(z)          Region z GDP at basic prices
 GDP_BP_WO           World GDP at basic prices
 GDP_FDO(z)          Region z GDP at purchasers prices from the perspective of final demand
 GDP_IBO(z)          Region z GDP at market prices (income-based)
 GDP_MPO(z)          Region z GDP at market prices
 ITO(z)              Total investment expenditures in region z
 RKDO(k,j,z)         Type k capital income in industry j in region z
 SGO(z)              Government savings in region z
 SHO(z)              Household savings in region z
 SROWO(z)            Rest-of-the-world savings with respect to region z
 TDHO(z)             Household income taxes in region z
 TICO(i,z)           Government revenue from indirect taxes on commodity i in region z
 TICTO(z)            Total government receipts of indirect taxes on commodities in region z
 TIKO(k,j,z)         Government revenue from taxes on type k capital used by industry j in region z
 TIKTO(z)            Total government revenue from taxes on capital in region z
 TIMO(i,zj,z)        Government revenue from duties on commodity i imported from region zj by region z
 TIMTO(z)            Total government revenue from import duties in region z
 TIPO(j,z)           Government revenue from taxes on industry j production in region z
 TIPTO(z)            Total government revenue from production taxes in region z
 TIWO(j,z)           Government revenue from payroll taxes on type l labor in industry j of region z
 TIWTO(z)            Total government revenue from payroll taxes in region z
 TIXO(i,z,zj)        Government revenue from export taxes on commodity i exported by region z to region zj
 TIXTO(z)            Total government revenue from export taxes in region z
 TPRCTSO(z)          Total government revenue from taxes on products and imports in region z
 TPRODNO(z)          Total government revenue from other taxes on production in region z
 YDHO(z)             Household disposable income in region z
 YGO(z)              Total government income in region z
 YHO(z)              Household total income in region z
 YHKO(z)             Household capital income in region z
 YHLO(z)             Household labor income in region z
 YROWO(z)            Rest-of-the-world total income from region z
 TIWO_Share(j,z)     Government revenue from payroll taxes on type l labor in industry j of region z
 TIKO_Share(k,j,z)   Government revenue from taxes on type k capital used by industry j in region z
 TIPO_Share(j,z)     Industry production share for tax revenue calibration
;

*==============================================================================
* Rates and intercepts
*==============================================================================
PARAMETER
 phiO(z)             Scale variable (allocation of investment to industries)
 sh0O(z)             Intercept (household savings)
 sh1O(z)             Slope (household savings)
 ttdh0O(z)           Intercept (household income tax)
 ttdh1O(z)           Slope (household income tax)
;

*===============================================================================
* Loading initial point GDX
*===============================================================================
$GDXIN Input_CGE/DATA_AGG-2019_GTAP11c_Regen_V2.gdx
$LOAD F, K, ZR, Z1, 
$LOAD CO, CGO, DDO, DEPO, DIO, DSO, DSO_I, EXO, IMO, INVO, KSTO, LDO, MRGNO, XSO, XSO_I, XSTO, 
$LOAD TOT_POP, g_GDP, g_POP, g_SDR, CTAX_BAU, PERMIT_NDC, PERMIT_NZ, AEEI_BAU, AEEI_NDC, AEEI_NZ, EMPLOY,
$LOAD  CTAX_UserDefined, AEEI_UserDefined, SolarWindTFP_UserDefined,
$LOAD RKDO, TDHO, TICO, TIKO, TIMO, TIPO, TIWO, TIXO, 
$LOAD tmrg, sigma_M1, sigma_M2, sigma_y, sigma_VA, sigma_KLE, POPO

*===============================================================================
* Initial Elasticity Parameter Assignments
*===============================================================================
*CES - KLE(backstop)
 sigma_KLE(BS,z)          = 0.5;
 sigma_KLE('16_TRANSEQ','07_NAM') = 0.5 ; 
 
* CES - composite K-L
 sigma_VA('10_PETROLCOAL',z)   = 0.2;
 sigma_VA('11_CHEMICAL',z)   = 0.2;
 sigma_VA('18_TnD',z)          = 0.2;
 sigma_VA('19_eNuclear',z)     = 0.2;
 sigma_VA('20_eCoal',z)        = 0.2;
 sigma_VA('21_eGas',z)         = 0.2;
 sigma_VA('22_eOil',z)         = 0.2;
 sigma_VA('23_eWind',z)        = 0.2;
 sigma_VA('24_eSolar',z)       = 0.2;
 sigma_VA('25_eHydro',z)       = 0.2;
 sigma_VA('26_eOther',z)      = 0.2;
 sigma_VA(BS,z)                = 0.5;

* CES - composite capital
 sigma_KD(j,z)        = 2*sigma_VA(j,z);
 sigma_KD(BS,Z)       = 0.5;

* CES - composite ENER
 sigma_ENER_elec(j2,z)         = 1.5;
 sigma_ENER_nelec(j2,z)        = 0.5;
 sigma_ENER_coalgas(j2,z)      = 2.0;
 sigma_ENER_oilprod(j2,z)      = 0.5;

* CES - Substitution between different industries producing the same commodity (Dummy)
 sigma_MultiOut(i,z)                 = 2;

* CES - composite Power sector
 sigma_POWER(z)               = 3;
 sigma_POWER('01_KOR')    = 5;
 sigma_POWER('02_CHN')    = 5;
 sigma_POWER('03_JPN')     = 5;
 sigma_POWER('04_RUS')    = 3; 
 sigma_POWER('05_MNG')   = 3; 
 sigma_POWER('06_PRK')    = 0.5;
 sigma_POWER('07_NAM')   = 5;
 sigma_POWER('08_LAM')    = 3;
 sigma_POWER('09_WEU')   = 5;
 sigma_POWER('10_EEU')    = 3;
 sigma_POWER('11_CAS')    = 3;
 sigma_POWER('12_MEA')    = 3;
 sigma_POWER('13_AFR')     = 3; 
 sigma_POWER('14_CLV')     = 3;
 sigma_POWER('15_SAS')     = 3; 
 sigma_POWER('16_APC')     = 3;
 sigma_POWER('17_ANZ')     = 5;   

* CES - composite BS sector
 sigma_BS(BS, Z_GRN)       = 10;

* CES - BS sector VAT
 sigma_VAT('32_BSCHEMICAL',Z_GRN)   = 0.5;
 sigma_VAT('33_BSNONMET',Z_GRN)     = 0.5;
 sigma_VAT('34_BSIRONSTL',Z_GRN)     = 0.5;
 sigma_VAT('35_BS_LTRP',Z_GRN)         = 0.5;
 sigma_VAT('36_BS_WTRP',Z_GRN)        = 0.5;
 sigma_VAT('37_BS_ATRP',Z_GRN)         = 0.5;

* CES - DOM vs.IMP
* sigma_M1('03_OIL','06_PRK') = 0.5;
* sigma_M1('04_GAS',Z) = 6;
* sigma_M1('11_CHEMICAL','05_MNG') = 1.5;
* sigma_M1('13_IRONSTL','05_MNG') = 1.1;
 
* CES - IMP sourcing
* sigma_M2('03_OIL',Z) = 2;
* sigma_M2('04_GAS',Z) = 2;

* CET - Transformation between domestic sales and total exports.
 sigma_X1(i,z)                 = 2;

* CET - Transformation across different export destinations
 sigma_X2(i,z)                 = 2;

* Investment demand elasticity
 sigma_INV(k,j,z)              = 1.5;

* LES parameters - Frisch 
 frisch('01_KOR') = -1.30;
 frisch('02_CHN') = -1.45;
 frisch('03_JPN') = -1.25;
 frisch('04_RUS') = -1.45;
 frisch('05_MNG') = -1.70;
 frisch('06_PRK') = -2.00;
 frisch('07_NAM') = -1.20;
 frisch('08_LAM') = -1.50;
 frisch('09_WEU') = -1.20;
 frisch('10_EEU') = -1.40;
 frisch('11_CAS') = -1.60;
 frisch('12_MEA') = -1.60;
 frisch('13_AFR') = -1.90;
 frisch('14_CLV') = -1.70;
 frisch('15_SAS') = -1.80;
 frisch('16_APC') = -1.50;
 frisch('17_ANZ') = -1.20;

* Labour supply 
 elasLS(z)                     = 0.1;

*==============================================================================
* Rescaling 
*==============================================================================
* GTAP data are in millions of US dollars (10^6 USD)
* With RES = 1000, model results are in Billions of US dollars (1 Billion USD = 10^9 USD)
 RES = 1000;
 CO(i,z)          = CO(i,z) / RES;
 CGO(i,z)         = CGO(i,z) / RES;
 DDO(i,z)         = DDO(i,z) / RES;
 DEPO(z)          = DEPO(z) / RES;
 DIO(i,j,z)       = DIO(i,j,z) / RES;
 DSO(j,i,z)       = DSO(j,i,z) / RES;
 DSO_I(i,z)       = DSO_I(i,z) / RES;
 EXO(i,z,zj)      = EXO(i,z,zj) / RES;
 IMO(i,z,zj)      = IMO(i,z,zj) / RES;
 INVO(i,z)        = INVO(i,z) / RES;
 KSTO(z)          = KSTO(z) / RES;
 LDO(j,z)         = LDO(j,z) / RES;
 MRGNO(i,z)       = MRGNO(i,z) / RES;
 RKDO(k,j,z)      = RKDO(k,j,z) / RES;
 TDHO(z)          = TDHO(z) / RES;
 TICO(i,z)        = TICO(i,z) / RES;
 TIKO(k,j,z)      = TIKO(k,j,z) / RES;
 TIMO(i,z,zj)     = TIMO(i,z,zj) / RES;
 TIPO(j,z)        = TIPO(j,z) / RES;
 TIWO(j,z)        = TIWO(j,z) / RES;
 TIXO(i,z,zj)     = TIXO(i,z,zj) / RES;
 tmrg(i,ij,z,zj)  = tmrg(i,ij,z,zj) / RES;
 XSO_I(i,z)       = XSO_I(i,z) / RES;
 XSO(j,i,z)       = XSO(j,i,z) / RES;
 XSTO(j,z)        = XSTO(j,z) / RES;

*==============================================================================
* Backstop Technology Split & TSF Initialization (Upstream Injection)
*==============================================================================
PARAMETER
 seed(j)                Initial share of the new technology
 TSFO(j, z)             Initial year TSF input for backstop (Value)
 PTSFO(j, z)            Initial year TSF price for backstop
 Green_Markup(j, z)     Initial efficiency penalty for backstop
 SHR_MRGN(j, i, z)      Share of international transport margin for sector j
;

seed(BS) = 0.01;
PTSFO(BS, Z_GRN) = 1.0;       
Green_Markup(BS, Z_GRN) = 1.0;

* Initialize default margin share to 1.0 (100%) for all industries before splitting
SHR_MRGN(j, i, z)$XSO(j, i, z) = 1.0;

LOOP(Z_GRN,
*--------------------------------------------------------------------------
* [1] Split raw data by seed share and preserve identities
*--------------------------------------------------------------------------
  LOOP(MAP_BS(j, jj, i),
* Allocate to backstop industry
    LDO(j, Z_GRN)       = LDO(jj, Z_GRN) * seed(j);
    RKDO(k, j, Z_GRN)   = RKDO(k, jj, Z_GRN) * seed(j);
    TIPO(j, Z_GRN)      = TIPO(jj, Z_GRN) * seed(j);
    TIWO(j, Z_GRN)      = TIWO(jj, Z_GRN) * seed(j);
    TIKO(k, j, Z_GRN)   = TIKO(k, jj, Z_GRN) * seed(j);
    DIO(ii, j, Z_GRN)   = DIO(ii, jj, Z_GRN) * seed(j);
    
    XSO(j, i, Z_GRN)    = (XSO(jj, i, Z_GRN) * seed(j)) / Green_Markup(j, Z_GRN);
    XSTO(j, Z_GRN)      = (XSTO(jj, Z_GRN) * seed(j)) / Green_Markup(j, Z_GRN);
    DSO(j, i, Z_GRN)    = (DSO(jj, i, Z_GRN) * seed(j)) / Green_Markup(j, Z_GRN);
    
* Allocate international margin share to backstop industry by seed share
    SHR_MRGN(j, i, Z_GRN) = seed(j);

* Deduct exact share from conventional industry
    LDO(jj, Z_GRN)      = LDO(jj, Z_GRN) * (1 - seed(j));
    RKDO(k, jj, Z_GRN)  = RKDO(k, jj, Z_GRN) * (1 - seed(j));
    TIPO(jj, Z_GRN)     = TIPO(jj, Z_GRN) * (1 - seed(j));
    TIWO(jj, Z_GRN)     = TIWO(jj, Z_GRN) * (1 - seed(j));
    TIKO(k, jj, Z_GRN)  = TIKO(k, jj, Z_GRN) * (1 - seed(j));
    DIO(ii, jj, Z_GRN)  = DIO(ii, jj, Z_GRN) * (1 - seed(j));
    XSO(jj, i, Z_GRN)   = XSO(jj, i, Z_GRN) * (1 - seed(j));
    XSTO(jj, Z_GRN)     = XSTO(jj, Z_GRN) * (1 - seed(j));
    DSO(jj, i, Z_GRN)   = DSO(jj, i, Z_GRN) * (1 - seed(j));
    
* Deduct international margin share from conventional industry (remaining share)
    SHR_MRGN(jj, i, Z_GRN) = 1.0 - seed(j);
  );

*--------------------------------------------------------------------------
* [2] Technology Specific Factor (TSF) Allocation
*--------------------------------------------------------------------------
  LOOP(BS,
    TSFO(BS, Z_GRN) = (RKDO('cap', BS, Z_GRN) * 0.9) / PTSFO(BS, Z_GRN);
    RKDO('cap', BS, Z_GRN) = RKDO('cap', BS, Z_GRN) - (PTSFO(BS, Z_GRN) * TSFO(BS, Z_GRN));
  );
);

* Calculate initial values for TSF intensity and time series
LOOP(BS,
  v_tsf(BS, Z_GRN)      = TSFO(BS, Z_GRN) / XSTO(BS, Z_GRN);
  TSFS(BS, Z_GRN, time) = TSFO(BS, Z_GRN);
);

*==============================================================================
* 3.3 Exogenous prices and parameters
*==============================================================================
 eta                = 1;
 ttdh0O(z)          = 0;
 eO(z)              = 1;
 PEO(i,z,zj)        = 1;
 PLO(i,z)           = 1;
 PWMGO(i)           = 1;
 WO(z)              = 1;
 WO_lag(z)          = WO(z);

* -------------------------------------------------------------------
* [Dynamic Enhancement] Injecting micro-seeds into zero-output (dormant) sectors
* -------------------------------------------------------------------
SCALAR micro_tol / 0.01 /;

* 1. Calculate temporary PPO (price distortion) for filtering
PARAMETER PPO_TEMP(j,z) "Temporary producer price index for data filtering";
PPO_TEMP(j,z)$XSTO(j,z) = ( TIWO(j,z) + WO(z)*LDO(j,z) 
                          + SUM(k, TIKO(k,j,z) + RKDO(k,j,z)) 
                          + SUM(i, DIO(i,j,z)) ) / XSTO(j,z);

* 2. [Modified] Include cases where output is low (XSTO < 0.01) OR price distortion is extreme (PPO > 2.0)
LOOP((j,z)$( ( (XSTO(j,z) < micro_tol) or (PPO_TEMP(j,z) > 2.0) ) 
             and (PPO_TEMP(j,z) > 1.2 or PPO_TEMP(j,z) < 0.8) 
             and not (BS(j) and Z_OTH(z)) ),
             
* 3. Override with minimum seed if XSTO is near zero; otherwise, maintain scale
    XSTO(j,z) = MAX(XSTO(j,z), 1E-5);
   
* 4. Transplant input structure ratios from identical industries in China (02_CHN)
    LDO(j,z)    = XSTO(j,z) * (LDO(j,'02_CHN') / XSTO(j,'02_CHN'));
    TIWO(j,z)   = XSTO(j,z) * (TIWO(j,'02_CHN') / XSTO(j,'02_CHN'));
    TIPO(j,z)   = XSTO(j,z) * (TIPO(j,'02_CHN') / XSTO(j,'02_CHN'));
    
    LOOP(k, 
        RKDO(k,j,z) = XSTO(j,z) * (RKDO(k,j,'02_CHN') / XSTO(j,'02_CHN'));
        TIKO(k,j,z) = XSTO(j,z) * (TIKO(k,j,'02_CHN') / XSTO(j,'02_CHN'));
    );
    
    LOOP(i, 
        DIO(i,j,z)  = XSTO(j,z) * (DIO(i,j,'02_CHN') / XSTO(j,'02_CHN'));
    );
);

*==============================================================================
* Calibration
*==============================================================================
 YHKO(z)          = SUM[(k,j), RKDO(k,j,z)];
 YHLO(z)          = SUM[(j), LDO(j,z)];
 YHO(z)           = YHLO(z) + YHKO(z) + SUM[BS, PTSFO(BS,z) * TSFO(BS,z)];
 YDHO(z)          = YHO(z) - TDHO(z);
 CTHO(z)          = SUM[i, CO(i,z)];
 SHO(z)           = YDHO(z) - CTHO(z);
 TICTO(z)         = SUM[i, TICO(i,z)];
 TIMTO(z)         = SUM[(i,zj), TIMO(i,zj,z)];
 TIWTO(z)         = SUM[(j), TIWO(j,z)];
 TIKTO(z)         = SUM[(k,j), TIKO(k,j,z)];
 TIPTO(z)         = SUM[j, TIPO(j,z)];
 TIXTO(z)         = SUM[(i,zj), TIXO(i,z,zj)];
 TPRODNO(z)       = TIKTO(z) + TIWTO(z) + TIPTO(z);
 TPRCTSO(z)       = TICTO(z) + TIMTO(z) + TIXTO(z);
 YGO(z)           = TDHO(z) + TPRCTSO(z) + TPRODNO(z);
 GO(z)            = SUM[i, CGO(i,z)];
 SGO(z)           = YGO(z) - GO(z);
 YROWO(z)         = SUM[(i,zj), IMO(i,zj,z)] + SUM[(i,ij,zj), tmrg(i,ij,zj,z)];
 SROWO(z)         = YROWO(z) - SUM[(i,zj), EXO(i,z,zj)] - SUM[i, MRGNO(i,z)];
 CABO(z)          = -SROWO(z);
 ITO(z)           = SHO(z) + SGO(z) + SROWO(z);

*==============================================================================
* Calibration of parameters and other variables
*==============================================================================
 gamma_GVT(i,z)   = CGO(i,z) / SUM[ij, CGO(ij,z)];
 gamma_INV(i,z)   = INVO(i,z) / SUM[ij, INVO(ij,z)];

*==============================================================================
* Calibration of other prices and revised volumes (part 1)
*==============================================================================
 LDO(j,z)         = LDO(j,z) / WO(z);
 LDCO(j,z)        = LDO(j,z);
 LSO(z)           = SUM[j, LDO(j,z)];
 LSTO(z)          = LSO(z);
 LSO_lag(z)       = LSO(z);
 LSTO_lag(z)      = LSO(z);
 EXO(i,z,zj)      = [EXO(i,z,zj) - TIXO(i,z,zj)] / PEO(i,z,zj);
 EXTO(i,z)        = SUM[zj, EXO(i,z,zj)];
 PWXO(i,z,zj)$EXO(i,z,zj)
                  = { [PEO(i,z,zj) * EXO(i,z,zj) + TIXO(i,z,zj)] / EXO(i,z,zj) } / eO(z);
 PETO(i,z)        = SUM[zj, PEO(i,z,zj) * EXO(i,z,zj)] / EXTO(i,z);
 PWMO(i,z,zj)     = PWXO(i,z,zj);
 IMO(i,zj,z)      = EXO(i,zj,z);
 IMTO(i,z)        = SUM[zj, IMO(i,zj,z)];
 DSO(j,i,z)       = DSO(j,i,z) / PLO(i,z);
 DSO_I(i,z)       = SUM(j, DSO(j,i,z));
 DSO_J(j,z)       = SUM(i, DSO(j,i,z));
 QO(i,z)          = IMTO(i,z) + DDO(i,z);
 MRGNO(i,z)$MRGNO(i,z)
                  = MRGNO(i,z) / [eO(z) * PWMGO(i)];
 XSO_I(i,z)       = EXTO(i,z) + DDO(i,z) + MRGNO(i,z);
 XSTO(j,z)        = SUM(i, XSO(j,i,z));
 PO(i,z)          = [ PETO(i,z) * EXTO(i,z) + PLO(i,z) * DSO_I(i,z)
                    + eO(z) * PWMGO(i) * MRGNO(i,z) ] / XSO_I(i,z);
 PO2(j,i,z)$XSO(j,i,z)                  = 1;
 PO2(BS,I_BS,Z_GRN) = Green_Markup(BS,Z_GRN);

 PO3(i,j,z)$XSO(j,i,z)                  = 1;
 PIO(i,z)         = SUM[j$XSO(j,i,z), PO2(J,I,z) * XSO(j,i,z)] / XSO_I(i,z);
 PTO(j,z)$XSTO(j,z) = SUM[i$XSO(j,i,z), PO2(j,i,z) * XSO(j,i,z)] / XSTO(j,z);

 PPO(j,z)$XSTO(j,z) 
    = ( TIWO(j,z) + WO(z) * LDO(j,z)
      + SUM[k, TIKO(k,j,z) + RKDO(k,j,z)]
      + (PTSFO(j,z) * TSFO(j,z))$BS(j)     
      + SUM[nene, DIO(nene,j,z)] 
      + SUM[ene, DIO(ene,j,z)] ) / XSTO(j,z);
 theta2(j,i,z)    = DSO(j,i,z) / SUM(jj, DSO(jj,i,z));
 EXTTO(j,i,z)$DSO(j,i,z) = theta2(j,i,z) * EXTO(i,z);

*==============================================================================
* Calibration of tax rates, margins, prices and volumes
*==============================================================================
 ttixO(i,z,zj)    = [eO(z) * PWXO(i,z,zj) / PEO(i,z,zj)] - 1;
 tticO(i,z)       = TICO(i,z) / 
                    { PLO(i,z) * DDO(i,z)
                    + SUM[zj, IMO(i,zj,z) * eO(z) * PWMO(i,zj,z)
                    + TIMO(i,zj,z) + SUM[ij, tmrg(ij,i,zj,z)]] };
 tmrg(i,ij,zj,z)$IMO(ij,zj,z)
                  = tmrg(i,ij,zj,z) / (PWMGO(i) * eO(z) * IMO(ij,zj,z));
 ttimO(i,zj,z)$IMO(i,zj,z)
                  = TIMO(i,zj,z) / 
                    { IMO(i,zj,z) * eO(z) * (PWMO(i,zj,z)
                    + SUM[ij, PWMGO(ij) * tmrg(ij,i,zj,z)]) };
 ttiwO(j,z)$LDO(j,z)
                  = TIWO(j,z) / [WO(z) * LDO(j,z)];
 ttikO(k,j,z)$RKDO(k,j,z)
                  = TIKO(k,j,z) / RKDO(k,j,z);
 ttipO(j,z)$XSTO(j,z) = [PTO(j,z) / PPO(j,z)] - 1;

 ttdh1O(z)        = [TDHO(z) - ttdh0O(z)] / YHO(z);

*==============================================================================
* Calibration of other prices and revised volumes (part 2)
*==============================================================================
 PDO(i,z)         = PLO(i,z) * (1 + tticO(i,z));
 PMO(i,zj,z)      = eO(z) * (PWMO(i,zj,z) + SUM[ij, PWMGO(ij) * tmrg(ij,i,zj,z)])
                  * (1 + ttimO(i,zj,z)) * (1 + tticO(i,z));
 PMTO(i,z)        = SUM[zj, PMO(i,zj,z) * IMO(i,zj,z)] / IMTO(i,z);
 PCO(i,z)         = [PMTO(i,z) * IMTO(i,z) + PDO(i,z) * DDO(i,z)] / QO(i,z);
 CO(i,z)          = CO(i,z) / PCO(i,z);
 CGO(i,z)         = CGO(i,z) / PCO(i,z);
 DIO(nene,j,z)    = DIO(nene,j,z) / PCO(nene,z);
 DEO(ene,j,z)     = DIO(ene,j,z) / PCO(ene,z);
 DEelecO(j,z)     = DIO('18_ELEC',j,z) / PCO('18_ELEC',z);
 DEnelecO(j,z)    = SUM(ene3, DEO(ene3,j,z));
 DEcoalgasO(j,z)  = SUM(ene5, DEO(ene5,j,z));
 DEcoalO(j,z)     = DEO('02_COAL',j,z);
 DEgasO(j,z)      = DEO('04_GAS',j,z);
 DEoilpetrolO(j,z)= SUM(ene6, DEO(ene6,j,z));
 DEoilO(j,z)      = DEO('03_OIL',j,z);
 DEpetrolO(j,z)   = DEO('10_PETROLCOAL',j,z);
 INVO(i,z)        = INVO(i,z) / PCO(i,z);
 CIO(j,z)         = SUM[nene, DIO(nene,j,z)];
 CEO(j3,z)        = SUM[ene, DEO(ene,j3,z)];
 CEO(j2,z)        = DEelecO(j2,z) + DEnelecO(j2,z);
 DITO(nene,z)     = SUM[j, DIO(nene,j,z)];
 DITO(ene,z)      = SUM[j, DEO(ene,j,z)];
 
 PO4(ene,j,z)     = PCO(ene,z);
 PCIO(j,z)$XSTO(j,z) 
                  = SUM[nene, PCO(nene,z) * DIO(nene,j,z)] / CIO(j,z);
 PCEcoalO(j,z)$XSTO(j,z)   = PO4('02_COAL',j,z);
 PCEgasO(j,z)$XSTO(j,z)    = PO4('04_GAS',j,z);
 PCEoilO(j,z)$XSTO(j,z)    = PO4('03_OIL',j,z);
 PCEpetrolO(j,z)$XSTO(j,z) = PO4('10_PETROLCOAL',j,z);
 PCEoilpetrolO(j,z)$XSTO(j,z)  
    = [ PCEoilO(j,z) * DEoilO(j,z) + PCEpetrolO(j,z) * DEpetrolO(j,z) ] / DEoilpetrolO(j,z);
 PCEcoalgasO(j,z)$XSTO(j,z)  
    = [ PCEcoalO(j,z) * DEcoalO(j,z) + PCEgasO(j,z) * DEgasO(j,z) ] / DEcoalgasO(j,z);
 PCEnelecO(j,z)$XSTO(j,z)  
    = [ PCEcoalgasO(j,z) * DEcoalgasO(j,z) + PCEoilpetrolO(j,z) * DEoilpetrolO(j,z) ] / DEnelecO(j,z);
 PCEelecO(j,z)$XSTO(j,z)   
    = SUM[ene4, PCO(ene4,z) * DEO(ene4,j,z)] / DEelecO(j,z);
 PCEO(j,z)$XSTO(j,z)       
    = [ PCEelecO(j,z) * DEelecO(j,z) + PCEnelecO(j,z) * DEnelecO(j,z) ] / CEO(j,z);
 PCEO(j3,z)$XSTO(j3,z)     
    = SUM[ene, PCO(ene,z) * DEO(ene,j3,z)] / CEO(j3,z);
 WTIO(j,z)$XSTO(j,z)       = WO(z) * (1 + ttiwO(j,z));
 WCO(j,z)$LDCO(j,z)        = (WTIO(j,z) * LDO(j,z)) / LDCO(j,z);

*==============================================================================
* Calibration of dynamic parameters
*==============================================================================
 PKO(z)           = 1;
 KSTO(z)          = KSTO(z) / PKO(z);
 KSTO(z)          = KSTO(z) - SUM((BS,Z_GRN)$sameas(z, Z_GRN), PTSFO(BS,Z_GRN) * TSFO(BS,Z_GRN));
 delta(z)         = DEPO(z) / [PKO(z) * KSTO(z)];
 RO(k,j,z)$RKDO(k,j,z)
                  = SUM[(kj,jj), RKDO(kj,jj,z)] / KSTO(z);
 KDO(k,j,z)$RKDO(k,j,z)
                  = RKDO(k,j,z) / RO(k,j,z);
 KSO(k,z)         = SUM[j, KDO(k,j,z)];
 IRO(z)           = { SUM[(k,j)$RKDO(k,j,z), RKDO(k,j,z)] - DEPO(z) } / [PKO(z) * KSTO(z)];
 UO(z)            = PKO(z) * (IRO(z) + delta(z));
 phiO(z)          = [ITO(z) / PKO(z)] / KSTO(z);
 INDO(k,j,z)$KDO(k,j,z)
                  = phiO(z) * KDO(k,j,z);
 A_K(z)           = 1 / PKO(z) * { PROD[i$gamma_INV(i,z), (PCO(i,z) / gamma_INV(i,z))**gamma_INV(i,z)] };
 KDCO(j,z)        = SUM[k, KDO(k,j,z)];
 RTIO(k,j,z)      = RO(k,j,z) * (1 + ttikO(k,j,z));
 RCO(j,z)$KDCO(j,z)
                  = SUM[k, RTIO(k,j,z) * KDO(k,j,z)] / KDCO(j,z);

*==============================================================================
* Calibration of other prices and revised volumes 
*==============================================================================
 VAO(j,z)       = LDCO(j,z) + KDCO(j,z);
 PVAO(j,z)$XSTO(j,z) 
                   = [ WCO(j,z) * LDCO(j,z) + RCO(j,z) * KDCO(j,z) ] / VAO(j,z);
 KLEO(j,z)$XSTO(j,z)  = CEO(j,z) + VAO(j,z);
 
 PKLEO(j,z)$XSTO(j,z)
                    = [PCEO(j,z) * CEO(j,z) + PVAO(j,z) * VAO(j,z)] / KLEO(j,z);
 VATO(BS, Z_GRN)      = VAO(BS, Z_GRN) + TSFO(BS, Z_GRN);
 PVATO(BS, Z_GRN)
                    = [PVAO(BS, Z_GRN) * VAO(BS, Z_GRN) + PTSFO(BS, Z_GRN) * TSFO(BS, Z_GRN)] / VATO(BS, Z_GRN);
 PIXGDPO(z)           = 1;
 PIXGDP_WO          = 1;
 PIXCONO(z)           = 1;
 PIXCONO_lag(z)     = PIXCONO(z);
 PIXINVO(z)            = 1;
 PIXGVTO(z)           = 1;
 PPOWERO(z)         = 1;
 PBSO(BS, Z_GRN)  = 1.0;

*==============================================================================
* Calibration of LES parameters
*==============================================================================
 sigma_Y(i,z)   = sigma_Y(i,z) / { SUM[ij, sigma_Y(ij,z) * PCO(ij,z) * CO(ij,z)] / CTHO(z) };
 gamma_LES(i,z) = PCO(i,z) * CO(i,z) * sigma_Y(i,z) / CTHO(z);
 CMINO(i,z)     = CO(i,z) + gamma_LES(i,z) * CTHO(z) / {PCO(i,z) * frisch(z)};

*$ontext 
* ==============================================================================
* Calculation of Economy-Wide Ex-ante Own-Price Elasticities for Energy
* (Industries + Households + Government + Investment + Exports)
* ==============================================================================
PARAMETERS
* 1. Industry Nest Shares
    S_E_KLE(j,z), S_NE_E(j,z), S_Elec_E(j,z)
    S_CG_NE(j,z), S_OP_NE(j,z)
    S_Coal_CG(j,z), S_Gas_CG(j,z), S_Oil_OP(j,z), S_Petrol_OP(j,z)
    
* 2. Armington & Demand Shares
    S_DOM(i,z)           Share of Domestic product in composite demand
    W_IND(i,j,z)         Share of Industry j in Total Composite Demand QO
    W_HH(i,z)            Share of Household in Total Composite Demand QO
    W_INV(i,z)           Share of Investment in Total Composite Demand QO
    W_GOV(i,z)           Share of Government in Total Composite Demand QO
    W_DDO(i,z)           Share of Domestic Sales in Total Output
    W_EXTO(i,z)          Share of Export Sales in Total Output
    Val_Total(i,z)       Total Value of Domestic and Export Sales
    
* 3. Composite Price Elasticities by Agent (Imported + Domestic)
    Elas_Comp_IND(ene,j,z) Composite elasticity for Industry
    Elas_Comp_HH(ene,z)    Composite elasticity for Household (LES)
    Elas_Comp_INV(ene,z)   Composite elasticity for Investment (Cobb-Douglas = -1)
    Elas_Comp_GOV(ene,z)   Composite elasticity for Government (Cobb-Douglas = -1)
    
* 4. Domestic Price Elasticities by Agent
    Elas_Dom_IND(ene,j,z)  Domestic elasticity for Industry
    Elas_Dom_HH(ene,z)     Domestic elasticity for Household
    Elas_Dom_INV(ene,z)    Domestic elasticity for Investment
    Elas_Dom_GOV(ene,z)    Domestic elasticity for Government
    Elas_EXP(ene,z)        Export elasticity (based on importer's sigma_M2)
    
* 5. Economy-Wide Price Elasticities
    Elas_Total_DDO(ene,z)  Weighted elasticity of Total Domestic Demand (DDO)
    Elas_Total_ECON(ene,z) Economy-wide Ex-ante Price Elasticity of Energy Commodity
;

* ------------------------------------------------------------------------------
* Step 1. Calculate Shares
* ------------------------------------------------------------------------------
* Industry nest shares
S_E_KLE(j2,z)$(PKLEO(j2,z)*KLEO(j2,z)) = (PCEO(j2,z)*CEO(j2,z)) / (PKLEO(j2,z)*KLEO(j2,z));
S_NE_E(j2,z)$(PCEO(j2,z)*CEO(j2,z))    = (PCEnelecO(j2,z)*DEnelecO(j2,z)) / (PCEO(j2,z)*CEO(j2,z));
S_Elec_E(j2,z)$(PCEO(j2,z)*CEO(j2,z))  = (PCEelecO(j2,z)*DEelecO(j2,z)) / (PCEO(j2,z)*CEO(j2,z));
S_CG_NE(j2,z)$(PCEnelecO(j2,z)*DEnelecO(j2,z)) = (PCEcoalgasO(j2,z)*DEcoalgasO(j2,z)) / (PCEnelecO(j2,z)*DEnelecO(j2,z));
S_OP_NE(j2,z)$(PCEnelecO(j2,z)*DEnelecO(j2,z)) = (PCEoilpetrolO(j2,z)*DEoilpetrolO(j2,z)) / (PCEnelecO(j2,z)*DEnelecO(j2,z));
S_Coal_CG(j2,z)$(PCEcoalgasO(j2,z)*DEcoalgasO(j2,z)) = (PCO('02_COAL',z)*DEO('02_COAL',j2,z)) / (PCEcoalgasO(j2,z)*DEcoalgasO(j2,z));
S_Gas_CG(j2,z)$(PCEcoalgasO(j2,z)*DEcoalgasO(j2,z))  = (PCO('04_GAS',z)*DEO('04_GAS',j2,z)) / (PCEcoalgasO(j2,z)*DEcoalgasO(j2,z));
S_Oil_OP(j2,z)$(PCEoilpetrolO(j2,z)*DEoilpetrolO(j2,z)) = (PCO('03_OIL',z)*DEO('03_OIL',j2,z)) / (PCEoilpetrolO(j2,z)*DEoilpetrolO(j2,z));
S_Petrol_OP(j2,z)$(PCEoilpetrolO(j2,z)*DEoilpetrolO(j2,z)) = (PCO('10_PETROLCOAL',z)*DEO('10_PETROLCOAL',j2,z)) / (PCEoilpetrolO(j2,z)*DEoilpetrolO(j2,z));

* Armington domestic shares (DDO relative to QO)
S_DOM(ene,z)$(PCO(ene,z)*QO(ene,z)) = (PDO(ene,z)*DDO(ene,z)) / (PCO(ene,z)*QO(ene,z));

* Consumption share of each agent in total domestic composite (QO)
W_IND(ene,j,z)$QO(ene,z) = DEO(ene,j,z) / QO(ene,z);
W_HH(ene,z)$QO(ene,z)    = CO(ene,z) / QO(ene,z);
W_INV(ene,z)$QO(ene,z)   = INVO(ene,z) / QO(ene,z);
W_GOV(ene,z)$QO(ene,z)   = CGO(ene,z) / QO(ene,z);

* Share of domestic sales (DDO) and exports (EXTO) in total national output
Val_Total(ene,z) = PDO(ene,z)*DDO(ene,z) + PETO(ene,z)*EXTO(ene,z);
W_DDO(ene,z)$Val_Total(ene,z)  = (PDO(ene,z)*DDO(ene,z)) / Val_Total(ene,z);
W_EXTO(ene,z)$Val_Total(ene,z) = (PETO(ene,z)*EXTO(ene,z)) / Val_Total(ene,z);

* ------------------------------------------------------------------------------
* Step 2. Calculate Composite Price Elasticities by Agent
* ------------------------------------------------------------------------------
* 1. Industry (Only KLE industries have elasticity, Non-KLE is Leontief so 0)
Elas_Comp_IND('02_COAL',j2,z)$DEO('02_COAL',j2,z) = 
    - (1 - S_Coal_CG(j2,z)) * sigma_ENER_coalgas(j2,z) - S_Coal_CG(j2,z) * (1 - S_CG_NE(j2,z)) * sigma_ENER_nelec(j2,z)
    - S_Coal_CG(j2,z) * S_CG_NE(j2,z) * (1 - S_NE_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Coal_CG(j2,z) * S_CG_NE(j2,z) * S_NE_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);
Elas_Comp_IND('04_GAS',j2,z)$DEO('04_GAS',j2,z) = 
    - (1 - S_Gas_CG(j2,z)) * sigma_ENER_coalgas(j2,z) - S_Gas_CG(j2,z) * (1 - S_CG_NE(j2,z)) * sigma_ENER_nelec(j2,z)
    - S_Gas_CG(j2,z) * S_CG_NE(j2,z) * (1 - S_NE_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Gas_CG(j2,z) * S_CG_NE(j2,z) * S_NE_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);
Elas_Comp_IND('03_OIL',j2,z)$DEO('03_OIL',j2,z) = 
    - (1 - S_Oil_OP(j2,z)) * sigma_ENER_oilprod(j2,z) - S_Oil_OP(j2,z) * (1 - S_OP_NE(j2,z)) * sigma_ENER_nelec(j2,z)
    - S_Oil_OP(j2,z) * S_OP_NE(j2,z) * (1 - S_NE_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Oil_OP(j2,z) * S_OP_NE(j2,z) * S_NE_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);
Elas_Comp_IND('10_PETROLCOAL',j2,z)$DEO('10_PETROLCOAL',j2,z) = 
    - (1 - S_Petrol_OP(j2,z)) * sigma_ENER_oilprod(j2,z) - S_Petrol_OP(j2,z) * (1 - S_OP_NE(j2,z)) * sigma_ENER_nelec(j2,z)
    - S_Petrol_OP(j2,z) * S_OP_NE(j2,z) * (1 - S_NE_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Petrol_OP(j2,z) * S_OP_NE(j2,z) * S_NE_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);
Elas_Comp_IND('18_ELEC',j2,z)$DEO('18_ELEC',j2,z) = 
    - (1 - S_Elec_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Elec_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);
Elas_Comp_IND(ene,j3,z)$DEO(ene,j3,z) = 0;

* 2. Household (LES Function)
Elas_Comp_HH(ene,z)$CO(ene,z) = CMINO(ene,z) / CO(ene,z) * (1 - gamma_LES(ene,z)) - 1;

* 3. Investment & Government (Cobb-Douglas Expenditure)
Elas_Comp_INV(ene,z)$INVO(ene,z) = -1.0;
Elas_Comp_GOV(ene,z)$CGO(ene,z)  = -1.0;

* ------------------------------------------------------------------------------
* Step 3. Derive Domestic Energy Price Elasticities by Agent (incorporating Armington effect)
* ------------------------------------------------------------------------------
Elas_Dom_IND(ene,j,z)$DEO(ene,j,z) = - (1 - S_DOM(ene,z)) * sigma_M1(ene,z) + S_DOM(ene,z) * Elas_Comp_IND(ene,j,z);
Elas_Dom_HH(ene,z)$CO(ene,z)       = - (1 - S_DOM(ene,z)) * sigma_M1(ene,z) + S_DOM(ene,z) * Elas_Comp_HH(ene,z);
Elas_Dom_INV(ene,z)$INVO(ene,z)    = - (1 - S_DOM(ene,z)) * sigma_M1(ene,z) + S_DOM(ene,z) * Elas_Comp_INV(ene,z);
Elas_Dom_GOV(ene,z)$CGO(ene,z)     = - (1 - S_DOM(ene,z)) * sigma_M1(ene,z) + S_DOM(ene,z) * Elas_Comp_GOV(ene,z);

* Exports (Weighted average of trading partners' import substitution elasticity sigma_M2)
Elas_EXP(ene,z)$EXTO(ene,z) = SUM(zj$EXO(ene,z,zj), (EXO(ene,z,zj)/EXTO(ene,z)) * (-sigma_M2(ene,zj)));

* ------------------------------------------------------------------------------
* Step 4. Derive Economy-Wide Energy Price Elasticity (Aggregation)
* ------------------------------------------------------------------------------
* Domestic demand aggregation (Weighted Average of Domestic Agents)
Elas_Total_DDO(ene,z) = 
    SUM(j, W_IND(ene,j,z) * Elas_Dom_IND(ene,j,z)) 
    + W_HH(ene,z)  * Elas_Dom_HH(ene,z) 
    + W_INV(ene,z) * Elas_Dom_INV(ene,z) 
    + W_GOV(ene,z) * Elas_Dom_GOV(ene,z);

* Domestic + Export aggregation (Final Economy-Wide Elasticity)
Elas_Total_ECON(ene,z) = 
    W_DDO(ene,z) * Elas_Total_DDO(ene,z) + W_EXTO(ene,z) * Elas_EXP(ene,z);

DISPLAY Elas_Total_ECON, Elas_Total_DDO, Elas_Dom_HH, Elas_EXP;

* ==============================================================================
* Step 0. Set Target Elasticities and Iterative Algorithm Parameters
* ==============================================================================
TABLE Target_Elas(ene,z) Target economy-wide elasticities by region and energy commodity
               01_KOR  02_CHN  03_JPN  04_RUS  05_MNG  06_PRK  07_NAM  08_LAM  09_WEU  10_EEU  11_CAS  12_MEA  13_AFR  14_CLV  15_SAS  16_APC  17_ANZ
02_COAL         -0.88   -0.46   -0.74   -0.30   -0.58   -0.30   -0.97   -0.50   -1.03   -0.85   -0.67   -0.76   -0.82   -0.46   -0.71   -1.12   -0.80
03_OIL          -0.52   -0.34   -0.54   -0.15   -0.66   -0.15   -0.92   -0.58   -0.74   -0.45   -0.15   -0.39   -0.95   -0.34   -0.98   -0.52   -0.99
04_GAS          -0.74   -1.16   -0.52   -0.30   -0.67   -0.15   -0.73   -0.69   -0.85   -0.71   -0.57   -0.62   -0.69   -1.16   -0.18   -0.15   -1.25
10_PETROLCOAL   -0.52   -0.34   -0.54   -0.15   -0.66   -0.15   -0.92   -0.58   -0.74   -0.45   -0.15   -0.39   -0.95   -0.34   -0.98   -0.52   -0.99
18_ELEC         -0.48   -0.42   -0.45   -0.21   -0.35   -0.21   -0.49   -0.47   -0.30   -0.26   -0.21   -0.37   -0.57   -0.42   -0.29   -0.30   -0.29
;

* Set targets based on DDO
Parameter Target_ECON(ene,z);
Target_ECON('02_COAL',z) = Target_Elas('02_COAL',z);
Target_ECON('03_OIL',z) = Target_Elas('03_OIL',z);
Target_ECON('04_GAS',z) = Target_Elas('04_GAS',z);
Target_ECON('10_PETROLCOAL',z) = Target_Elas('10_PETROLCOAL',z);
Target_ECON('18_ELEC',z) = Target_Elas('18_ELEC',z);

SET iter Maximum number of iterations / 1*1000 /;
SCALAR step Update speed (Damping factor) / 0.15 /;
PARAMETER Adj_Ratio(ene,z) Ratio to target;
PARAMETER Ind_Total_Weight(ene,z) Total industry weight;
Ind_Total_Weight(ene,z) = SUM(j, W_IND(ene,j,z));

* ==============================================================================
* Declare temporary parameters before entering the loop (for calculating error weights by industry)
* ==============================================================================
PARAMETER Ind_Err_CG(j,z) Weighted average error of Coal-Gas nest by industry;
PARAMETER Ind_Err_OP(j,z) Weighted average error of Oil products nest by industry;
PARAMETER Ind_Err_NE(j,z) Weighted average error of Non-Elec nest by industry;
PARAMETER Ind_Err_Tot(j,z) Weighted average error of total energy by industry;

* ==============================================================================
* Algorithm Start
* ==============================================================================
LOOP(iter,
* --------------------------------------------------------------------------
* 1. Recalculate elasticity based on currently updated sigma values
* --------------------------------------------------------------------------
    Elas_Comp_IND('02_COAL',j2,z)$DEO('02_COAL',j2,z) = 
        - (1 - S_Coal_CG(j2,z)) * sigma_ENER_coalgas(j2,z) - S_Coal_CG(j2,z) * (1 - S_CG_NE(j2,z)) * sigma_ENER_nelec(j2,z)
        - S_Coal_CG(j2,z) * S_CG_NE(j2,z) * (1 - S_NE_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Coal_CG(j2,z) * S_CG_NE(j2,z) * S_NE_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);

    Elas_Comp_IND('04_GAS',j2,z)$DEO('04_GAS',j2,z) = 
        - (1 - S_Gas_CG(j2,z)) * sigma_ENER_coalgas(j2,z) - S_Gas_CG(j2,z) * (1 - S_CG_NE(j2,z)) * sigma_ENER_nelec(j2,z)
        - S_Gas_CG(j2,z) * S_CG_NE(j2,z) * (1 - S_NE_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Gas_CG(j2,z) * S_CG_NE(j2,z) * S_NE_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);

    Elas_Comp_IND('03_OIL',j2,z)$DEO('03_OIL',j2,z) = 
        - (1 - S_Oil_OP(j2,z)) * sigma_ENER_oilprod(j2,z) - S_Oil_OP(j2,z) * (1 - S_OP_NE(j2,z)) * sigma_ENER_nelec(j2,z)
        - S_Oil_OP(j2,z) * S_OP_NE(j2,z) * (1 - S_NE_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Oil_OP(j2,z) * S_OP_NE(j2,z) * S_NE_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);

    Elas_Comp_IND('10_PETROLCOAL',j2,z)$DEO('10_PETROLCOAL',j2,z) = 
        - (1 - S_Petrol_OP(j2,z)) * sigma_ENER_oilprod(j2,z) - S_Petrol_OP(j2,z) * (1 - S_OP_NE(j2,z)) * sigma_ENER_nelec(j2,z)
        - S_Petrol_OP(j2,z) * S_OP_NE(j2,z) * (1 - S_NE_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Petrol_OP(j2,z) * S_OP_NE(j2,z) * S_NE_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);

    Elas_Comp_IND('18_ELEC',j2,z)$DEO('18_ELEC',j2,z) = 
        - (1 - S_Elec_E(j2,z)) * sigma_ENER_elec(j2,z) - S_Elec_E(j2,z) * (1 - S_E_KLE(j2,z)) * sigma_KLE(j2,z);

    Elas_Dom_IND(ene,j,z)$DEO(ene,j,z) = - (1 - S_DOM(ene,z)) * sigma_M1(ene,z) + S_DOM(ene,z) * Elas_Comp_IND(ene,j,z);
    Elas_Dom_HH(ene,z)$CO(ene,z)       = - (1 - S_DOM(ene,z)) * sigma_M1(ene,z) + S_DOM(ene,z) * Elas_Comp_HH(ene,z);
    Elas_Dom_INV(ene,z)$INVO(ene,z)    = - (1 - S_DOM(ene,z)) * sigma_M1(ene,z) + S_DOM(ene,z) * Elas_Comp_INV(ene,z);
    Elas_Dom_GOV(ene,z)$CGO(ene,z)     = - (1 - S_DOM(ene,z)) * sigma_M1(ene,z) + S_DOM(ene,z) * Elas_Comp_GOV(ene,z);

    Elas_Total_DDO(ene,z) = 
        SUM(j, W_IND(ene,j,z) * Elas_Dom_IND(ene,j,z)) 
        + W_HH(ene,z)  * Elas_Dom_HH(ene,z) 
        + W_INV(ene,z) * Elas_Dom_INV(ene,z) 
        + W_GOV(ene,z) * Elas_Dom_GOV(ene,z);

    Elas_EXP(ene,z)$EXTO(ene,z) = SUM(zj$EXO(ene,z,zj), (EXO(ene,z,zj)/EXTO(ene,z)) * (-sigma_M2(ene,zj)));
    Elas_Total_ECON(ene,z) = W_DDO(ene,z) * Elas_Total_DDO(ene,z) + W_EXTO(ene,z) * Elas_EXP(ene,z);

* --------------------------------------------------------------------------
* 2. Calculate error ratio at the national level (Initialize first, keep 1.0 for fuels without target)
* --------------------------------------------------------------------------
    Adj_Ratio(ene,z) = 1.0;
    Adj_Ratio(ene,z)$(Elas_Total_ECON(ene,z) ne 0 and Target_ECON(ene,z) ne 0) = Target_ECON(ene,z) / Elas_Total_ECON(ene,z);
    Adj_Ratio(ene,z) = max(0.2, min(5.0, Adj_Ratio(ene,z)));

* --------------------------------------------------------------------------
* 3. Parameter Update (Reflecting high-precision industry-specific nest weights)
* --------------------------------------------------------------------------
    sigma_M1(ene,z)$(1 - S_DOM(ene,z) > 0.05) = sigma_M1(ene,z) * (1 + step * (Adj_Ratio(ene,z) - 1));

    LOOP(j2,
* A. Derive weighted average error by nest within each industry (j2) (Follow the error of the fuel heavily consumed by the industry)
        Ind_Err_CG(j2,z)  = S_Coal_CG(j2,z)*Adj_Ratio('02_COAL',z) + S_Gas_CG(j2,z)*Adj_Ratio('04_GAS',z);
        Ind_Err_OP(j2,z)  = S_Oil_OP(j2,z)*Adj_Ratio('03_OIL',z)   + S_Petrol_OP(j2,z)*Adj_Ratio('10_PETROLCOAL',z);
        Ind_Err_NE(j2,z)  = S_CG_NE(j2,z)*Ind_Err_CG(j2,z)         + S_OP_NE(j2,z)*Ind_Err_OP(j2,z);
        Ind_Err_Tot(j2,z) = S_Elec_E(j2,z)*Adj_Ratio('18_ELEC',z)  + S_NE_E(j2,z)*Ind_Err_NE(j2,z);

* B. Parameter modification (Cross-application according to mathematical partial derivative structure)
* Lower nests dominate the elasticity of minority fuels, so track errors inversely (Cross)
        sigma_ENER_coalgas(j2,z) = sigma_ENER_coalgas(j2,z) * (1 + step * ( S_Coal_CG(j2,z)*Adj_Ratio('04_GAS',z) + S_Gas_CG(j2,z)*Adj_Ratio('02_COAL',z) - 1 ));
        sigma_ENER_oilprod(j2,z) = sigma_ENER_oilprod(j2,z) * (1 + step * ( S_Oil_OP(j2,z)*Adj_Ratio('10_PETROLCOAL',z) + S_Petrol_OP(j2,z)*Adj_Ratio('03_OIL',z) - 1 ));

* Upper nests dominate the elasticity of majority fuels, so track the weighted average of the nest
        sigma_ENER_nelec(j2,z) = sigma_ENER_nelec(j2,z) * (1 + step * (Ind_Err_NE(j2,z) - 1));

* Cross nest (Cross-application of errors between electricity and non-electricity)
        sigma_ENER_elec(j2,z) = sigma_ENER_elec(j2,z) * (1 + step * ( S_NE_E(j2,z)*Adj_Ratio('18_ELEC',z) + S_Elec_E(j2,z)*Ind_Err_NE(j2,z) - 1 ));

* Top KLE elasticity tracks the integrated energy error of the entire industry
        sigma_KLE(j2,z) = sigma_KLE(j2,z) * (1 + (step/2) * (Ind_Err_Tot(j2,z) - 1));
    );

* --------------------------------------------------------------------------
* 4. Logical Constraints for Parameters
* --------------------------------------------------------------------------
    sigma_M1(ene,z) = max(0.5, min(15.0, sigma_M1(ene,z)));
    sigma_M2(ene,z) = max(0.5, min(30.0, sigma_M2(ene,z)));    
    sigma_ENER_coalgas(j,z) = max(0.5, min(3.0, sigma_ENER_coalgas(j,z)));
    sigma_ENER_oilprod(j,z) = max(0.5, min(3.0, sigma_ENER_oilprod(j,z)));
    sigma_ENER_nelec(j,z)   = max(0.5, min(3.0, sigma_ENER_nelec(j,z)));  
    sigma_ENER_elec(j,z)    = max(0.5, min(3.0, sigma_ENER_elec(j,z)));
    sigma_KLE(j,z)          = max(0.5, min(3.0, sigma_KLE(j,z)));

* [Step 2] Add deadzone constraints to avoid elasticities near 1.0 (0.9 ~ 1.1)
* Fix to 0.9 if value is > 0.9 and <= 1.0
* Fix to 1.1 if value is > 1.0 and < 1.1

    sigma_M1(ene,z)$(sigma_M1(ene,z) > 0.9 and sigma_M1(ene,z) <= 1.0) = 0.9;
    sigma_M1(ene,z)$(sigma_M1(ene,z) > 1.0 and sigma_M1(ene,z) <  1.1) = 1.1;

    sigma_M2(ene,z)$(sigma_M2(ene,z) > 0.9 and sigma_M2(ene,z) <= 1.0) = 0.9;
    sigma_M2(ene,z)$(sigma_M2(ene,z) > 1.0 and sigma_M2(ene,z) <  1.1) = 1.1;

    sigma_ENER_coalgas(j,z)$(sigma_ENER_coalgas(j,z) > 0.9 and sigma_ENER_coalgas(j,z) <= 1.0) = 0.9;
    sigma_ENER_coalgas(j,z)$(sigma_ENER_coalgas(j,z) > 1.0 and sigma_ENER_coalgas(j,z) <  1.1) = 1.1;

    sigma_ENER_oilprod(j,z)$(sigma_ENER_oilprod(j,z) > 0.9 and sigma_ENER_oilprod(j,z) <= 1.0) = 0.9;
    sigma_ENER_oilprod(j,z)$(sigma_ENER_oilprod(j,z) > 1.0 and sigma_ENER_oilprod(j,z) <  1.1) = 1.1;

    sigma_ENER_nelec(j,z)$(sigma_ENER_nelec(j,z) > 0.9 and sigma_ENER_nelec(j,z) <= 1.0) = 0.9;
    sigma_ENER_nelec(j,z)$(sigma_ENER_nelec(j,z) > 1.0 and sigma_ENER_nelec(j,z) <  1.1) = 1.1;

    sigma_ENER_elec(j,z)$(sigma_ENER_elec(j,z) > 0.9 and sigma_ENER_elec(j,z) <= 1.0) = 0.9;
    sigma_ENER_elec(j,z)$(sigma_ENER_elec(j,z) > 1.0 and sigma_ENER_elec(j,z) <  1.1) = 1.1;

    sigma_KLE(j,z)$(sigma_KLE(j,z) > 0.9 and sigma_KLE(j,z) <= 1.0) = 0.9;
    sigma_KLE(j,z)$(sigma_KLE(j,z) > 1.0 and sigma_KLE(j,z) <  1.1) = 1.1;

);
*$offtext
*==============================================================================
* Calibration of function parameters
*==============================================================================
 io(j,z)$XSTO(j,z)         = CIO(j,z) / XSTO(j,z);
 io2(j,z)$XSTO(j,z)        = CEO(j,z) / XSTO(j,z);
 v(j,z)$XSTO(j,z)          = VAO(j,z) / XSTO(j,z);
 v2(j,z)$XSTO(j,z)         = (CEO(j,z) + VAO(j,z)) / XSTO(j,z);
 aij(nene,j,z)$XSTO(j,z)   = DIO(nene,j,z) / CIO(j,z);
 aij2(ene,j,z)$XSTO(j,z)   = DEO(ene,j,z) / CEO(j,z);
 aij_t(nene,j,z,time)      = aij(nene,j,z);
 aij2_t(ene,j,z,time)      = aij2(ene,j,z);

*==============================================================================
* Calibration of CET parameters
*==============================================================================
 rho_X1(i,z) = (1 + sigma_X1(i,z)) / sigma_X1(i,z);
 beta_EX_X1(i,z)$MRGNO(i,z)
    = [ PETO(i,z) * EXTO(i,z)$EXTO(i,z)**(1 - rho_X1(i,z)) ] /
      [ PETO(i,z) * EXTO(i,z)$EXTO(i,z)**(1 - rho_X1(i,z))
      + PLO(i,z)  * DSO_I(i,z)**(1 - rho_X1(i,z))
      + eO(z)     * PWMGO(i) * MRGNO(i,z)$MRGNO(i,z)**(1 - rho_X1(i,z)) ];
 beta_EX_X1(i,z)$(MRGNO(i,z) eq 0)
    = [ PETO(i,z) * EXTO(i,z)$EXTO(i,z)**(1 - rho_X1(i,z)) ] /
      [ PETO(i,z) * EXTO(i,z)$EXTO(i,z)**(1 - rho_X1(i,z))
      + PLO(i,z)  * DSO_I(i,z)**(1 - rho_X1(i,z)) ];
 beta_D_X1(i,z)$MRGNO(i,z)
    = [ PLO(i,z) * DSO_I(i,z)**(1 - rho_X1(i,z)) ] /
      [ PETO(i,z) * EXTO(i,z)**(1 - rho_X1(i,z))
      + PLO(i,z)  * DSO_I(i,z)**(1 - rho_X1(i,z))
      + eO(z)     * PWMGO(i) * MRGNO(i,z)**(1 - rho_X1(i,z)) ];
 beta_D_X1(i,z)$(MRGNO(i,z) eq 0)
    = [ PLO(i,z) * DSO_I(i,z)**(1 - rho_X1(i,z)) ] /
      [ PETO(i,z) * EXTO(i,z)**(1 - rho_X1(i,z))
      + PLO(i,z)  * DSO_I(i,z)**(1 - rho_X1(i,z)) ];
 B_X1(i,z)
    = XSO_I(i,z) / 
      [ beta_EX_X1(i,z) * EXTO(i,z)**rho_X1(i,z)
      + beta_D_X1(i,z)  * DSO_I(i,z)**rho_X1(i,z)
      + (1 - beta_EX_X1(i,z) - beta_D_X1(i,z)) * MRGNO(i,z)**rho_X1(i,z) 
      ]**(1 / rho_X1(i,z));

*==============================================================================
* CET between exports to different trading partners
*==============================================================================
 rho_X2(i,z) = (1 + sigma_X2(i,z)) / sigma_X2(i,z);
 beta_X2(i,z,zj)$EXO(i,z,zj)
    = [ PEO(i,z,zj) * EXO(i,z,zj)**(1 - rho_X2(i,z)) ] /
      SUM[zjj$EXO(i,z,zjj), PEO(i,z,zjj) * EXO(i,z,zjj)**(1 - rho_X2(i,z)) ];
 B_X2(i,z)
    = EXTO(i,z) / 
      { SUM[zj, beta_X2(i,z,zj) * EXO(i,z,zj)**rho_X2(i,z)]**(1 / rho_X2(i,z)) };

*==============================================================================
* Calibration of CES parameters
*==============================================================================
*Multi Output
 rho_MultiOut(i,z) = (1 - sigma_MultiOut(i,z)) / sigma_MultiOut(i,z);
 beta_MultiOut(j,i,z)$XSO(j,i,z)
    = [ PO2(j,i,z) * XSO(j,i,z)**(1 + rho_MultiOut(i,z)) ] /
      SUM[jj$XSO(jj,i,z), PO2(jj,i,z) * XSO(jj,i,z)**(1 + rho_MultiOut(i,z)) ];
 B_MultiOut(i,z)
    = XSO_I(i,z) / 
      SUM[jj$XSO(jj,i,z), beta_MultiOut(jj,i,z) * XSO(jj,i,z)**(-rho_MultiOut(i,z))]**(-1 / rho_MultiOut(i,z));

*Aggregated Electricity
 QPOWERO(z) = SUM(POWER, XSO(power,'18_ELEC',z));
 rho_POWER(z)  = (1 - sigma_POWER(z)) / sigma_POWER(z);
 beta_POWER(power,z)
    = [ PO2(power,'18_ELEC',z) * XSO(power,'18_ELEC',z)**(1 + rho_POWER(z)) ] /
      SUM[powerr$XSO(powerr,'18_ELEC',z), PO2(powerr,'18_ELEC',z) * XSO(powerr,'18_ELEC',z)**(1 + rho_POWER(z)) ];
 B_POWER(z)
    = QPOWERO(z) / 
      SUM[powerr$XSO(powerr,'18_ELEC',z), beta_POWER(powerr,z) * XSO(powerr,'18_ELEC',z)**(-rho_POWER(z))]**(-1 / rho_POWER(z));
 TnDShare(z) = XSO('18_TnD','18_ELEC',z) / XSO_I('18_ELEC',z);

 
*Backstop
LOOP(MAP_BS(bs, conv, I_BS),

    QBSO(bs, Z_GRN) = XSO(conv, I_BS, Z_GRN) + XSO(bs, I_BS, Z_GRN);

    rho_BS(bs, Z_GRN) = (1 - sigma_BS(bs, Z_GRN)) / sigma_BS(bs, Z_GRN);
    
    beta_BS(conv, I_BS, Z_GRN) 
        = [ PO2(conv, I_BS, Z_GRN) * XSO(conv, I_BS, Z_GRN)**(1 + rho_BS(bs, Z_GRN)) ] /
          ( [ PO2(conv, I_BS, Z_GRN) * XSO(conv, I_BS, Z_GRN)**(1 + rho_BS(bs, Z_GRN)) ] +
            [ PO2(bs, I_BS, Z_GRN) * XSO(bs, I_BS, Z_GRN)**(1 + rho_BS(bs, Z_GRN)) ] );

    beta_BS(bs, I_BS, Z_GRN) 
        = [ PO2(bs, I_BS, Z_GRN) * XSO(bs, I_BS, Z_GRN)**(1 + rho_BS(bs, Z_GRN)) ] /
          ( [ PO2(conv, I_BS, Z_GRN) * XSO(conv, I_BS, Z_GRN)**(1 + rho_BS(bs, Z_GRN)) ] +
            [ PO2(bs, I_BS, Z_GRN) * XSO(bs, I_BS, Z_GRN)**(1 + rho_BS(bs, Z_GRN)) ] );

    B_BS(bs, Z_GRN)
        = QBSO(bs, Z_GRN) / 
          ( beta_BS(conv, I_BS, Z_GRN) * XSO(conv, I_BS, Z_GRN)**(-rho_BS(bs, Z_GRN)) +
            beta_BS(bs, I_BS, Z_GRN) * XSO(bs, I_BS, Z_GRN)**(-rho_BS(bs, Z_GRN)) )**(-1 / rho_BS(bs, Z_GRN));
            
    beta_BS_t(conv, I_BS, Z_GRN, time) = beta_BS(conv, I_BS, Z_GRN);
    beta_BS_t(bs, I_BS, Z_GRN, time)   = beta_BS(bs, I_BS, Z_GRN);
);

*==============================================================================
* Composite good
*==============================================================================
 rho_M1(i,z) = (1 - sigma_M1(i,z)) / sigma_M1(i,z);
 beta_M1(i,z)
    = PMTO(i,z) * IMTO(i,z)**(rho_M1(i,z) + 1) /
      { PDO(i,z)  * DDO(i,z)**(rho_M1(i,z) + 1)
      + PMTO(i,z) * IMTO(i,z)**(rho_M1(i,z) + 1) };
 B_M1(i,z)
    = QO(i,z) / 
      { beta_M1(i,z) * IMTO(i,z)**(-rho_M1(i,z))
      + (1 - beta_M1(i,z)) * DDO(i,z)**(-rho_M1(i,z)) }**(-1 / rho_M1(i,z));

*==============================================================================
* CES between imports from different trading partners
*==============================================================================
 rho_M2(i,z) = (1 - sigma_M2(i,z)) / sigma_M2(i,z);
 beta_M2(i,zj,z)$IMO(i,zj,z)
    = [ PMO(i,zj,z) * IMO(i,zj,z)**(rho_M2(i,z) + 1) ] /
      SUM[zjj$IMO(i,zjj,z), PMO(i,zjj,z) * IMO(i,zjj,z)**(rho_M2(i,z) + 1) ];
 B_M2(i,z)
    = IMTO(i,z) / 
      { SUM[zj$IMO(i,zj,z), beta_M2(i,zj,z) * IMO(i,zj,z)**(-rho_M2(i,z))]**(-1 / rho_M2(i,z)) };

*==============================================================================
* Composite capital
*==============================================================================
 rho_KD(j,z) = (1 - sigma_KD(j,z)) / sigma_KD(j,z);
 beta_KD(k,j,z)$KDO(k,j,z)
    = [ RTIO(k,j,z) * KDO(k,j,z)**(1 + rho_KD(j,z)) ] /
      SUM[kj$KDO(kj,j,z), RTIO(kj,j,z) * KDO(kj,j,z)**(1 + rho_KD(j,z)) ];
 B_KD(j,z)$KDCO(j,z)
    = KDCO(j,z) / 
      { SUM[k$KDO(k,j,z), beta_KD(k,j,z) * KDO(k,j,z)**(-rho_KD(j,z))]**(-1 / rho_KD(j,z)) };

*===============================================================================
* Composite E
*===============================================================================
* Level 5_1 (Coal/Gas)
 rho_ENER_coalgas(j2,z) = (1 - sigma_ENER_coalgas(j2,z)) / sigma_ENER_coalgas(j2,z);
 beta_ENER_coalgas(ene5,j2,z)
    = [ PO4(ene5,j2,z) * DEO(ene5,j2,z)**(1 + rho_ENER_coalgas(j2,z)) ] /
      SUM[enee5, PO4(enee5,j2,z) * DEO(enee5,j2,z)**(1 + rho_ENER_coalgas(j2,z)) ];
 B_ENER_coalgas(j2,z)
    = DEcoalgasO(j2,z) / 
      { SUM[ene5, beta_ENER_coalgas(ene5,j2,z) * DEO(ene5,j2,z)**(-rho_ENER_coalgas(j2,z))] }**(-1 / rho_ENER_coalgas(j2,z));

* Level 5_2 (Oil/Petrol)
 rho_ENER_oilprod(j2,z) = (1 - sigma_ENER_oilprod(j2,z)) / sigma_ENER_oilprod(j2,z);
 beta_ENER_oilprod(ene6,j2,z)
    = [ PO4(ene6,j2,z) * DEO(ene6,j2,z)**(1 + rho_ENER_oilprod(j2,z)) ] /
      SUM[enee6, PO4(enee6,j2,z) * DEO(enee6,j2,z)**(1 + rho_ENER_oilprod(j2,z)) ];
 B_ENER_oilprod(j2,z)
    = DEoilpetrolO(j2,z) / 
      { SUM[ene6, beta_ENER_oilprod(ene6,j2,z) * DEO(ene6,j2,z)**(-rho_ENER_oilprod(j2,z))] }**(-1 / rho_ENER_oilprod(j2,z));

* Level 4 (Coal-Gas / Oil-Petrol)
 rho_ENER_nelec(j2,z) = (1 - sigma_ENER_nelec(j2,z)) / sigma_ENER_nelec(j2,z);
 beta_ENER_nelec(j2,z)
    = PCEcoalgasO(j2,z) * DEcoalgasO(j2,z)**(rho_ENER_nelec(j2,z) + 1) /
      { PCEcoalgasO(j2,z) * DEcoalgasO(j2,z)**(rho_ENER_nelec(j2,z) + 1)
      + PCEoilpetrolO(j2,z) * DEoilpetrolO(j2,z)**(rho_ENER_nelec(j2,z) + 1) };
 B_ENER_nelec(j2,z)
    = DEnelecO(j2,z) / 
      { [ beta_ENER_nelec(j2,z) * DEcoalgasO(j2,z)**(-rho_ENER_nelec(j2,z))
        + (1 - beta_ENER_nelec(j2,z)) * DEoilpetrolO(j2,z)**(-rho_ENER_nelec(j2,z)) ] }**(-1 / rho_ENER_nelec(j2,z));

* Level 2 (Elec / Non-Elec)
 rho_ENER_elec(j2,z) = (1 - sigma_ENER_elec(j2,z)) / sigma_ENER_elec(j2,z);
 beta_ENER_elec(j2,z)
    = PCEelecO(j2,z) * DEelecO(j2,z)**(rho_ENER_elec(j2,z) + 1) /
      { PCEelecO(j2,z) * DEelecO(j2,z)**(rho_ENER_elec(j2,z) + 1)
      + PCEnelecO(j2,z) * DEnelecO(j2,z)**(rho_ENER_elec(j2,z) + 1) };
 B_ENER_elec(j2,z)
    = CEO(j2,z) / 
      { [ beta_ENER_elec(j2,z) * DEelecO(j2,z)**(-rho_ENER_elec(j2,z))
        + (1 - beta_ENER_elec(j2,z)) * DEnelecO(j2,z)**(-rho_ENER_elec(j2,z)) ] }**(-1 / rho_ENER_elec(j2,z));

*==============================================================================
* Value added
*==============================================================================
 rho_VA(j,z) = (1 - sigma_VA(j,z)) / sigma_VA(j,z);
 beta_VA(j,z)$KDCO(j,z)
    = WCO(j,z) * LDCO(j,z)**(rho_VA(j,z) + 1) /
      { WCO(j,z) * LDCO(j,z)**(rho_VA(j,z) + 1)
      + RCO(j,z) * KDCO(j,z)**(rho_VA(j,z) + 1) };
 B_VA(j,z)$KDCO(j,z)
    = VAO(j,z) / 
      { [ beta_VA(j,z) * LDCO(j,z)**(-rho_VA(j,z))
        + (1 - beta_VA(j,z)) * KDCO(j,z)**(-rho_VA(j,z)) ] }**(-1 / rho_VA(j,z));
 B_VA_t(j,z,time) = B_VA(j,z);

*==============================================================================
* Calibration of VAT nest for ALL Backstop Sectors (BS)
*==============================================================================
rho_VAT(BS, Z_GRN)   = (1 - sigma_VAT(BS, Z_GRN)) / sigma_VAT(BS, Z_GRN);
 beta_VAT(BS, Z_GRN)  
    = ( PVAO(BS, Z_GRN) * VAO(BS, Z_GRN)**(1 + rho_VAT(BS, Z_GRN)) ) / 
      ( PVAO(BS, Z_GRN) * VAO(BS, Z_GRN)**(1 + rho_VAT(BS, Z_GRN)) 
      + PTSFO(BS, Z_GRN) * TSFO(BS, Z_GRN)**(1 + rho_VAT(BS, Z_GRN)) );
 B_VAT(BS, Z_GRN)     
    = VATO(BS, Z_GRN) / 
      ( beta_VAT(BS, Z_GRN) * VAO(BS, Z_GRN)**(-rho_VAT(BS, Z_GRN)) 
      + (1 - beta_VAT(BS, Z_GRN)) * TSFO(BS, Z_GRN)**(-rho_VAT(BS, Z_GRN)) )**(-1 / rho_VAT(BS, Z_GRN));
 v_vat(BS, Z_GRN)     = VATO(BS, Z_GRN) / XSTO(BS, Z_GRN);
 
 B_VAT_t(BS, Z_GRN, time) = B_VAT(BS, Z_GRN);

*==============================================================================
* Composite KLE
*==============================================================================
 rho_KLE(j,z) = (1 - sigma_KLE(j,z)) / sigma_KLE(j,z);
 beta_KLE(j,z)$KLEO(j,z)
    = PVAO(j,z) * VAO(j,z)**(rho_KLE(j,z) + 1) /
      { PVAO(j,z) * VAO(j,z)**(rho_KLE(j,z) + 1)
      + PCEO(j,z) * CEO(j,z)**(rho_KLE(j,z) + 1) };
 beta_KLE2(j,z)$KLEO(j,z)
    = 1 - beta_KLE(j,z);

 B_KLE(j,z)$KLEO(j,z)
    = KLEO(j,z) / 
      { [ beta_KLE(j,z) * VAO(j,z)**(-rho_KLE(j,z))
        + beta_KLE2(j,z) * CEO(j,z)**(-rho_KLE(j,z)) ] }**(-1 / rho_KLE(j,z));

*==============================================================================
* Calibration of gross domestic products
*==============================================================================
 GDP_BPO(z)     = SUM[j, PVAO(j,z) * VAO(j,z)] + SUM[BS, PTSFO(BS,z) * TSFO(BS,z)] + TIPTO(z);
 GDP_MPO(z)     = GDP_BPO(z) + TPRCTSO(z);

 GDP_IBO(z)     
    = SUM[(j), WO(z) * LDO(j,z)] 
    + SUM[(k,j), RO(k,j,z) * KDO(k,j,z)]
    + SUM[BS, PTSFO(BS,z) * TSFO(BS,z)]
    + TPRODNO(z) 
    + TPRCTSO(z);
 GDP_FDO(z)     
    = SUM[i, PCO(i,z) * (CO(i,z) + CGO(i,z) + INVO(i,z))]
    + eO(z) * SUM[(i,zj), PWXO(i,z,zj) * EXO(i,z,zj)]
    + eO(z) * SUM[i, PWMGO(i) * MRGNO(i,z)]
    - eO(z) * SUM[(i,zj), IMO(i,zj,z) * (PWMO(i,zj,z) + SUM{ij, PWMGO(ij) * tmrg(ij,i,zj,z)})];
 GDP_BP_WO      = SUM[z, GDP_BPO(z) / eO(z)];

*==============================================================================
* Calibration of real (volume) variables computed from price indices
*==============================================================================
 CABXO(z)       = CABO(z) / [PIXGDP_WO * eO(z)];
 CABXsur(z,T1)  = CABXO(z)$[CABXO(z) gt 0];
 CABXdef(z,T1)  = CABXO(z)$[CABXO(z) lt 0];
 CABXsur(z,time)$[ord(time) gt 1] = CABXO(z) * (1 + g_GDP(z,time))$[CABXO(z) gt 0];
 CABXdef(z,time)$[ord(time) gt 1] = CABXO(z) * (1 + g_GDP(z,time))$[CABXO(z) lt 0];
 Bal(time)      = SUM(zj, CABXsur(zj,time)) + SUM(zj, CABXdef(zj,time));
 mu(time)       = SUM(zj, CABXsur(zj,time)) / 
                  { SUM(zj, CABXsur(zj,time)) + SUM(zj, ABS(CABXdef(zj,time))) };
 CABXsur(z,time) = CABXsur(z,time) * { 1 - mu(time) * Bal(time) / SUM(zj, CABXsur(zj,time)) };
 CABXdef(z,time) = CABXdef(z,time) * { 1 - [1 - mu(time)] * Bal(time) / SUM(zj, CABXdef(zj,time)) };
 CABix(z,time)   = [ CABXsur(z,time) + CABXdef(z,time) ] / CABXO(z);

 CTH_REALO(z)   = CTHO(z) / PIXCONO(z);
 G_REALO(z)     = GO(z) / PIXGVTO(z);
 GDP_BP_REALO(z)= GDP_BPO(z) / PIXGDPO(z);
 GDP_BP_W_REALO = GDP_BP_WO / PIXGDP_WO;
 GDP_MP_REALO(z)= GDP_MPO(z) / PIXCONO(z);
 IT_REALO(z)    = ITO(z) / PIXINVO(z);
 sh1O(z)        = [SHO(z) + SGO(z)] / GDP_IBO(z);
 sh0O(z)        = SHO(z) - sh1O(z) * YDHO(z);
 sh0O(z)        = sh0O(z) / PIXCONO(z)**eta;
 ttdh0O(z)      = ttdh0O(z) / PIXCONO(z)**eta;
 OBJO           = 1;
 growthz(z)    = 0.02;

*==============================================================================
* Energy & CO2 emission
*==============================================================================
$INCLUDE Input_CGE/DATA_WEB.gms
$INCLUDE Input_CGE/DATA_CO2coef.gms

*==============================================================================
* Carbon tax & Permit
*============================================================================== 
PARAMETER
 CTAXO(z)           Initial Carbon tax 100$ per ton CO2
 TCTAXO(z)          Initial Government Revenue from Carbon tax
 PERMITO(j,z)       ton CO2 emissions 
 PERMIT_TOTALO(z)   Total CO2 emissions (billion ton)
;
 CTAXO(z)           = 0;
 TCTAXO(z)          = 0;
 PERMITO(j,z)       = SUM(ene, CO2FACTOR(ene,j,z) * DEO(ene,j,z));
 PERMIT_TOTALO(z)   = SUM(j, PERMITO(j,z));

*==============================================================================
* Marginal Abatement Curves(MAC) for emissions
*============================================================================== 
PARAMETER
 alpha_CO2(ene,j,z)             Emissions responsiveness parameter
 gamma_CO2(ene,j,z)             Adjustment speed parameter
 MINCO2FACTOR(ene,j,z)          Minimum CO2 emission factor
 CTAX_CO2(ene,j,z,time)
 CO2FACTOR2_Star(ene,j,z,time)
;
 alpha_CO2(ene,j,z)     = 0.15;
 gamma_CO2(ene,j,z)     = 1.5;
 MINCO2FACTOR(ene,j,z)  = CO2FACTOR(ene,j,z) * 0.01;

SCALAR
 adjustment_factor
 trigger_price
 SolarWind_TFP_BAU
 SolarWind_TFP_NDC
 SolarWind_TFP_NZ
 residual_ratio
;

 adjustment_factor = 0.3;
 trigger_price     = 1.0;
 SolarWind_TFP_BAU = 0.02;
 SolarWind_TFP_NDC = 0.02;
 SolarWind_TFP_NZ  = 0.04;
 residual_ratio    = 0.05;

 TIWO_Share(j,z)   = LDO(j,z) / LSO(z);
 TIKO_Share(k,j,z) = KDO(k,j,z) / KSO(k,z);
 TIPO_Share(j,z)   = XSTO(j,z) / SUM(jj, XSTO(jj,z));

*==============================================================================
* Direct Air Capture (DAC)
*============================================================================== 
PARAMETER
 DAC_TRIGGER            DAC trigger Price (100$ per tCO2) 
 DAC_MAX(z)             Maximum DAC yearly
 DAC_growth_rate(z,time)
 DAC_Max_Pen(z)         Maximum Penetration
 DAC_Logistic_Coeff(z)  Logistic Growth Rate
 DAC_Inflection(z)      Inflection Lapse
 DAC_Start_Year(z)      First Triggered Year
 DAC_Tech_Coeff(i)  
 switchDAC(z,time)      Binary parameter
 ;
 SCALAR DAC_Unit_Scale       100MilliontCO2 to tCO2 / 100000000 /;
 SCALAR DAC_Elec_Intensity   MWh needed per ton CO2 / 2.5 /;
 SCALAR Price_USD_MWh        USD per MWh / 107.14 /;

 DAC_TRIGGER                 = 5.0;
 DAC_MAX(z)                  = sum(j,PERMITO(j,z))*0.2;
 DAC_MAX('07_NAM')           = sum(j,PERMITO(j,'07_NAM'))*0.6;
 DAC_MAX('09_WEU')           = sum(j,PERMITO(j,'09_WEU'))*0.6;
 DAC_MAX('17_ANZ')           = sum(j,PERMITO(j,'17_ANZ'))*0.6;
 DAC_growth_rate(z,time)     = 0;
 DAC_Max_Pen(z)              = 1.0;
 DAC_Logistic_Coeff(z)       = 0.2;
 DAC_Inflection(z)           = 15;
 DAC_Start_Year(z)           = 0;
 DAC_Tech_Coeff('18_ELEC')   = (DAC_Unit_Scale * DAC_Elec_Intensity * Price_USD_MWh) / 10**10;
 switchDAC(z,time)           = 0;

*==============================================================================
* Labour Supply
*============================================================================== 
PARAMETER
 W_lag(z,time)         Wage rate of type l labor in region z
 PIXCON_lag(z,time)    Consumer price index in region z
 LS_lag(z,time)        Supply of type l labor in region z (T-1)
 LST_lag(z,time)       Supply of type l labor in region z (Trend T-1)
;

*==============================================================================
* Residual
*============================================================================== 
Parameter MRGN_RES(i) "Residual to absorb initial data discrepancies in global margin supply/demand";
* Calculate difference between initial total supply and total demand as a fixed value
MRGN_RES(i) = SUM(z$MRGNO(i,z), MRGNO(i,z)) 
            - SUM((z,zj,ij)$IMO(ij,zj,z), tmrg(i,ij,zj,z) * IMO(ij,zj,z));

Parameter YROW_RES(z) "Residual for decimal error in initial data of YROW total revenue";
* Calculate minor difference between book total revenue (YROWO) and sum of individual trade values as a fixed value
YROW_RES(z) = YROWO(z) 
            - { 1.0 * SUM((i,zj)$IMO(i,zj,z), IMO(i,zj,z) * [PWMO(i,zj,z) + SUM(ij, PWMGO(ij) * tmrg(ij,i,zj,z))]) };

*==============================================================================
* [Terms of Trade Calibration] Base Year FOB / CIF Values and Weights
*============================================================================== 
PARAMETER
  VFOB0(i,z,zj)   "Base year FOB value of exports"
  VCIF0(i,zj,z)   "Base year CIF value of imports"
  W_EXP(i,z,zj)   "Bilateral export weight (Laspeyres)"
  W_IMP(i,zj,z)   "Bilateral import weight (Laspeyres)"
  PWX0(i,z,zj)    "Base year World FOB price"
  PCIF0(i,zj,z)   "Base year World CIF price"
  PX_INDEXO(z)    "Base year export price index"
  PM_INDEXO(z)    "Base year import price index"
  TOTO(z)         "Base year terms of trade"
;

* FOB value = export volume * international export price * exchange rate
 VFOB0(i,z,zj) = eO(z) * PWXO(i,z,zj) * EXO(i,z,zj);
* CIF value = import volume * (international import price + international transport margin) * exchange rate
 VCIF0(i,zj,z) = eO(z) * IMO(i,zj,z) * (PWMO(i,zj,z) + SUM(ij, PWMGO(ij) * tmrg(ij,i,zj,z)));

* 2. Derive weights (share of each route to total export/import of country z)
 W_EXP(i,z,zj)$SUM((ii,zjj), VFOB0(ii,z,zjj)) = VFOB0(i,z,zj) / SUM((ii,zjj), VFOB0(ii,z,zjj));
 W_IMP(i,zj,z)$SUM((ii,zjj), VCIF0(ii,zjj,z)) = VCIF0(i,zj,z) / SUM((ii,zjj), VCIF0(ii,zjj,z));

* 3. Store base year prices (for index denominator)
 PWX0(i,z,zj) = PWXO(i,z,zj);
 PCIF0(i,zj,z) = PWMO(i,zj,z) + SUM(ij, PWMGO(ij) * tmrg(ij,i,zj,z));

 PX_INDEXO(z) = SUM((i,zj)$VFOB0(i,z,zj), W_EXP(i,z,zj) * (PWXO(i,z,zj) / PWX0(i,z,zj)));
 PM_INDEXO(z) = SUM((i,zj)$VCIF0(i,zj,z), W_IMP(i,zj,z) * ( (PWMO(i,zj,z) + SUM(ij, PWMGO(ij) * tmrg(ij,i,zj,z))) / PCIF0(i,zj,z) ));

 TOTO(z)$PM_INDEXO(z) = PX_INDEXO(z) / PM_INDEXO(z);
 
*==============================================================================
* Scenario Parameter
*==============================================================================
PARAMETER
    A_VA_RES(z,time)                        "Value of A_VA to reproduce real GDP projections"
    GX(z,time)                              "Current government expenditures on goods and services in region z"
    G_REALX(z,time)                         "Current real government expenditures on goods and services in region z"
    INDX(k,j,z,time)                        "Volume of new type k capital investment to industry j in region z"
    sh0X(z,time)                            "Intercept (household savings)"
    sh1X(z,time)                            "Household savings rate"
    phi_trans(time)                         "Transition scalar for structural change"
    
    delta_t(j, z, time)                     "Annual depreciation rate by industry and region"
    delta_base(z)                           "Base macro depreciation rate"
    penalty_rate(j)                         "Early retirement (stranded asset) penalty rate"
    
    Signal(BS, Z_GRN, time)                 "Price signal for backstop technology adoption"
    alpha_val(BS)                           "Alpha parameter for TSF multiplier"
    Shift_Factor(time)                      "Exogenous shift factor over time"
    
    Transfer_Amount(BS, Conv, I_BS, Z_GRN)  "Total Beta share transferred from Conventional to Backstop"
    gr_BVAT(time)                           "Annual growth rate of new technology productivity"
    Temp_Cap(BS, Z_GRN, time)               "Temporary capacity limit for backstop adoption"
;

SCALAR Target_Conv_Beta / 0.10 /; 

*==============================================================================
* IAMC Reporting Parameter
*==============================================================================
Scalar
GWhtoEJ GWh to EJ
ktoetoEJ ktoe to EJ
USD2019toUSD2010
;

GWhtoEJ  = 3.6/(10**6);
ktoetoEJ = 4.1868/(10**5) ;
USD2019toUSD2010 = 86.5/100 ;
*https://stats.oecd.org/index.aspx?DataSetCode=DACDEFL

*Scalar ktoetoEJ / 0.000041868 / ;
* 1 ktoe = 4.1868e-5 EJ
Scalar ttoMt    / 0.000001 / ;
Scalar ktoMt    / 0.001 / ;
* 1 tCO2 = 1e-6 MtCO2

Parameter gdpelas(z) GDP Elasticity ;
gdpelas(z) = 0.8 ;

Parameter ghgelas(z) GHG Elasticity ;
ghgelas(z) = -0.5 ;


*Parameter ghgelas(IPCC06_CODE,Substance,z) GHG Elasticity ;
*ghgelas(IPCC06_CODE,Substance,z) = -0.5 ;

*NONCO2_coef('1.B.1','CO2',Country)


execute_unload 'Output_CGE\Baseyear_Calibration.gdx' ;
