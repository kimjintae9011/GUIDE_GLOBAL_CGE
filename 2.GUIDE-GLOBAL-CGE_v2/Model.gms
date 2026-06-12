$TITLE     GUIDE_GLOBAL_CGE Model GTAP11c
*==============================================================================
* GUIDE_GLOBAL_CGE GTAP11c Model                   
* Version: 2.0                                                 
* Author: Jintae Kim                                                 
* Original Code Authors: Veronique Robichaud, Andre Lemelin,        
* Helene Maisonnave, Bernard Decaluwe (PEP-w-1)                     
* * Except where otherwise noted, this work is licensed under         
* the Creative Commons Attribution-NonCommercial-ShareAlike 3.0     
* (CC BY-NC-SA 3.0) License.
* https://creativecommons.org/licenses/by-nc-sa/3.0/                                                                                
*==============================================================================
*==============================================================================
* Variables (Grouped for Readability)
*==============================================================================
VARIABLES
* --- [1] Volume Variables (Real Quantities) ---
 C(i,z,time)             Consumption of commodity i by households in region z
 CABX(z,time)            Current account balance of region z in terms of the international currency
 CG(i,z,time)            Public consumption of commodity i in region z
 CI(j,z,time)            Total intermediate consumption of industry j in region z
 CE(j,z,time)            Total intermediate consumption of industry j in region z
 CMIN(i,z,time)          Minimum consumption of commodity i by households in region z
 CTH_REAL(z,time)        Real household consumption in region z
 DD(i,z,time)            Domestic demand for commodity i produced locally in region z
 DI(i,j,z,time)          Intermediate consumption of commodity i by industry j in region z
 DE(i,j,z,time)          Intermediate energy consumption of commodity i by industry j in region z
 DEelec(j2,z,time)       Intermediate energy consumption of commodity i by industry j in region z
 DEnelec(j2,z,time)      Intermediate energy consumption of commodity i by industry j in region z  
 DEcoalgas(j2,z,time)    Intermediate energy consumption of commodity i by industry j in region z  
 DEoilpetrol(j2,z,time)  Intermediate energy consumption of commodity i by industry j in region z  
 DIT(i,z,time)           Total intermediate demand of commodity i in region z
 DS(j,i,z,time)          Supply of commodity i by sector j to the domestic market
 DS_I(i,z,time)          Supply of commodity i to the domestic market of region z
 EX(i,z,zj,time)         Quantity of product i exported by country z to country zj
 EXT(i,z,time)           Supply of composite commodity i by region z to the export market
 EXTT(j,i,z,time)        Supply of activity j to the export market i of region z
 G_REAL(z,time)          Current real government expenditures on goods and services in region z
 GDP_BP_REAL(z,time)     Real GDP at basic prices
 GDP_BP_W_REAL(time)     Real world GDP at basic prices
 GDP_MP_REAL(z,time)     Real GDP at market prices
 IM(i,zj,z,time)         Quantity of product i imported by country z from country zj
 IMT(i,z,time)           Quantity demanded of composite imports of commodity i by region z
 IND(k,j,z,time)         Volume of new type k capital investment to industry j in region z
 INV(i,z,time)           Final demand of commodity i for investment purposes (GFCF) in region z
 IT_REAL(z,time)         Real gross fixed capital formation
 KD(k,j,z,time)          Demand for type k capital by industry j in region z
 K_idle(k,j,z,time)      Idel Capital Slack variable
 KDC(j,z,time)           Demand for composite capital by industry j in region z
 KS(k,z,time)            Supply of type k capital in region z
 LD(j,z,time)            Demand for type l labor by industry j in region z
 LDC(j,z,time)           Demand for composite labor by industry j in region z
 LS(z,time)              Supply of type l labor in region z
 LST(z,time)             Supply of type l labor in region z (Trend)
 MRGN(i,z,time)          Domestic production of commodity i in region z exported as international margin services
 Q(i,z,time)             Quantity demanded of composite commodity i in region z
 VA(j,z,time)            Value added of industry j in region z
 KLE(j,z,time)           KLE of industry j in region z
 XS(j,i,z,time)          Total output of industry j by commodity in region z
 XS_I(i,z,time)          Total output of commodity i in region z
 XST(j,z,time)           Total aggregate output of industry j in region z
 QPOWER(z,time)          Total power output in region z
 QBS(BS,Z_GRN,time)      Total ironstl output in region z
 QDAC(z,time)            Direct Air Capture (DAC) volume (100ktCO2)
 TSFD(j,Z_GRN,time)      Demand for Technology Specific Factor (TSF) in backstop sectors
 VAT(BS,Z_GRN,time)      Quantity of Value-Added and TSF composite

* --- [2] Price Variables ---
 e(z,time)               Exchange rate (price of international currency in terms of region z local currency)
 IR(z,time)              Interest rate 
 P(i,z,time)             Basic price of commodity i in region z
 P2(j,i,z,time)          Basic price of industry js production of commodity i
 P3(i,j,z,time)          Basic price of power industry js production of commodity i
 P4(ene,j,z,time)        Basic energy commodity price of industry js production of commodity i
 PPOWER(z,time)          Basic price of composite power commodity in region z
 PBS(BS,Z_GRN,time)      Basic price of composite BS commodity in region z
 PI(i,z,time)            Basic price of composite activity commodity in region z
 PT(j,z,time)            Basic price of industry js output
 PC(i,z,time)            Purchaser price of composite commodity i (including all taxes and margins) in region z
 PCI(j,z,time)           Intermediate consumption price index of industry j in region z
 PCE(j,z,time)           Intermediate energy consumption price index of industry j in region z
 PCEelec(j2,z,time)      Intermediate energy consumption price index of industry j in region z
 PCEnelec(j2,z,time)     Intermediate energy consumption price index of industry j in region z
 PCEcoalgas(j2,z,time)   Intermediate energy consumption price index of industry j in region z
 PCEoilpetrol(j2,z,time) Intermediate energy consumption price index of industry j in region z
 PD(i,z,time)            Price of local product i sold on region z domestic market (including all taxes)
 PE(i,z,zj,time)         Price received for commodity i exported to region zj by region z (excluding export taxes)
 PET(i,z,time)           Border price of composite commodity i exported by region z
 PIXCON(z,time)          Consumer price index in region z
 PIXGDP(z,time)          GDP deflator in region z
 PIXGDP_W(time)          World GDP deflator
 PIXGVT(z,time)          Public expenditures price index in region z
 PIXINV(z,time)          Investment price index in region z
 PK(z,time)              Price of new capital in region z
 PL(i,z,time)            Price of local product i (excluding all taxes on products) in region z
 PM(i,zj,z,time)         Price of commodity i imported by region z from region zj (including all taxes duties and margins)
 PMT(i,z,time)           Price of composite commodity i imported by region z (including all taxes duties and margins)
 PP(j,z,time)            Unit cost of industry j in region z including taxes directly related to capital and labor
 PVA(j,z,time)           Price of industry j value added in region z (including taxes on production directly related to capital and labor)
 PKLE(j,z,time)          Price of industry j KLE in region z 
 PWM(i,zj,z,time)        World price of commodity i imported from country zj by region z (expressed in international currency)
 PWMG(i,time)            World price of margin i (expressed in international currency)
 PWX(i,z,zj,time)        World price of commodity i exported to country zj by region z (expressed in international currency)
 R(k,j,z,time)           Rental rate of type k capital in industry j of region z
 RC(j,z,time)            Rental rate of industry j composite capital in region z
 RTI(k,j,z,time)         Rental rate paid by industry j for type k capital in region z including capital taxes
 U(z,time)               User cost of capital in region z
 W(z,time)               Wage rate of type l labor in region z
 WC(j,z,time)            Wage rate of industry j composite labor in region z
 WTI(j,z,time)           Wage rate paid z by industry j for type l labor in region including payroll taxes
 PVAT(BS,Z_GRN,time)     Price of VAT composite
 PTSF(BS,Z_GRN,time)     Price of TSF
 PX_INDEX(z,time)        Export price index (World FOB base)
 PM_INDEX(z,time)        Import price index (World CIF base)
 TOT(z,time)             Terms of Trade (PX_INDEX  PM_INDEX)

* --- [3] Nominal (Value) Variables ---
 CAB(z,time)             Current account balance of region z
 CTH(z,time)             Consumption budget of households in region z
 DEP(z,time)             Amount of depreciation (capital consumption allowance) in region z
 G(z,time)               Current government expenditures on goods and services in region z
 GDP_BP(z,time)          Region z GDP at basic prices
 GDP_BP_W(time)          World GDP at basic prices
 GDP_FD(z,time)          Region z GDP at purchasers prices from the perspective of final demand
 GDP_IB(z,time)          Region z GDP at market prices (income-based)
 GDP_MP(z,time)          Region z GDP at market prices
 IT(z,time)              Total investment expenditures in region z
 SG(z,time)              Government savings in region z
 SH(z,time)              Household savings in region z
 SROW(z,time)            Rest-of-the-world savings with respect to region z
 TDH(z,time)             Household income taxes in region z
 TIC(i,z,time)           Government revenue from indirect taxes on commodity i in region z
 TICT(z,time)            Total government receipts of indirect taxes on commodities in region z
 TIK(k,j,z,time)         Government revenue from taxes on type k capital used by industry j in region z
 TIKT(z,time)            Total government revenue from from taxes on capital in region z
 TIM(i,zj,z,time)        Government revenue from duties on commodity i imported from region zj by region z
 TIMT(z,time)            Total government revenue from import duties in region z
 TIP(j,z,time)           Government revenue from taxes on industry j production in region z
 TIPT(z,time)            Total government revenue from production taxes in region z
 TIW(j,z,time)           Government revenue from payroll taxes on type l labor in industry j of region z
 TIWT(z,time)            Total government revenue from payroll taxes in region z
 TIX(i,z,zj,time)        Government revenue from export taxes on commodity i exported by region z to region zj
 TIXT(z,time)            Total government revenue from export taxes in region z
 TPRCTS(z,time)          Total government revenue from taxes on products and imports in region z
 TPRODN(z,time)          Total government revenue from other taxes on production in region z
 YDH(z,time)             Household disposable income in region z
 YG(z,time)              Total government income in region z
 YH(z,time)              Household total income in region z
 YHK(z,time)             Household capital income in region z
 YHL(z,time)             Household labor income in region z
 YROW(z,time)            Rest-of-the-world total income from region z

* --- [4] Policy & Other Variables ---
 CTAX(z,time)               Carbon tax in region z
 TCTAX(z,time)              Government revenue from Carbon tax
 GLOBAL_CTAX(time)          Global uniform carbon tax
 NEA_CTAX(time)             Uniform carbon tax for the Northeast Asia (NEA) region 
 NEACJK_CTAX(time)          Uniform carbon tax for the Northeast Asia (CJK) region 
 PERMIT(j,z,time)           Emission permits used allocated by sector j in region z
 PERMIT_TOTAL(z,time)       Total emission permits in region z
 REBATE(z,time)             Carbon tax revenue rebate recycling amount in region z
 REVENUE_SHARE_VAR(z,time)  Regional share of global linked carbon tax revenue
 NEW_PERMIT_CAP_VAR(z,time) Adjusted permit cap capacity for region z
 NTRD_PERMIT(z,time)        Net traded permits in region z (Global market)
 NTRD_NEA_PERMIT(z,time)    Net traded permits within the Northeast Asia (NEA) market
 NTRD_NEACJK_PERMIT(z,time) Net traded permits within the Northeast Asia (NEACJK) market
 phi(z,time)             Scale variable (allocation of investment to industries)
 sh0(z,time)             Intercept (household savings)
 sh1(z,time)             Slope (household savings)
 ttdh0(z,time)           Intercept (household income tax)
 ttdh1(z,time)           Slope (household income tax)
 ttic(i,z,time)          Tax rate on commodity i
 ttik(k,j,z,time)        Tax rate on capital k used in industry j
 ttim(i,zj,z,time)       Rate of taxes and duties on imports of commodity i from country zj
 ttip(j,z,time)          Tax rate on the production of industry j
 ttiw(j,z,time)          Tax rate on type l worker compensation in industry j
 ttix(i,z,zj,time)       Export tax rate on exported commodity i
 A_VA(z,time)            Multifactor productivity
 LEON(z,time)            Excess supply on the last market in region z
 OBJ                     Objective function variable
;

*==============================================================================
* Equations Declaration
*==============================================================================
EQUATIONS
* --- Production and Inputs ---
 EQ_PRD_VA(j,z,time)           Leontief - demand for value added
 EQ_PRD_KLE(j,z,time)          Leontief - demand for KLE (Industries) 
 EQ_PRD_INT(j,z,time)          Leontief - demand for intermediate consumption
 EQ_PRD_INT_ENE(j,z,time)      Leontief - demand for intermediate energy consumption (Energy Industries)
 EQ_PRD_CES_VA(j,z,time)       CES - combination of labor and capital
 EQ_PRD_CES_KLE(j,z,time)      CES - combination of composite energy and value added
 EQ_PRD_CES_LDC(j,z,time)      CES - demand for composite labor
 EQ_PRD_CES_VA_ENE(j,z,time)   Demand for value added relative to composite energy
 EQ_PRD_CES_LD(j,z,time)       CES between labor categories
 EQ_PRD_CES_KDC(j,z,time)      CES between capital categories
 EQ_PRD_CES_KD(k,j,z,time)     Demand for capital
 EQ_PRD_LEO_DI(i,j,z,time)     Leontief - demand for commodity i by sector j
 EQ_PRD_LEO_DE(ene,j3,z,time)  Energy nesting
 EQ_PRD_CES_ENE_LVL1(j2,z,time) Nested CES - Level 1
 EQ_PRD_CES_ENE_LVL2(j2,z,time) Nested CES - Level 2
 EQ_PRD_CES_ENE_LVL3(j2,z,time) Nested CES - Level 3
 EQ_PRD_CES_ENE_LVL4(j2,z,time) Nested CES - Level 4
 EQ_PRD_CES_ENE_LVL5(ene2,j2,z,time) Nested CES - Level 5
 EQ_PRD_CES_ENE_LVL6(ene5,j2,z,time) Nested CES - Level 6
 EQ_PRD_CES_ENE_LVL7(ene6,j2,z,time) Nested CES - Level 7

* --- Income and Savings ---
 EQ_INC_YH(z,time)             Household total income
 EQ_INC_YHL(z,time)            Household labor income
 EQ_INC_YHK(z,time)            Household capital income
 EQ_INC_YDH(z,time)            Household disposable income
 EQ_SAV_CTH(z,time)            Household consumption budget
 EQ_SAV_SH(z,time)             Household savings
 EQ_INC_YG(z,time)             Government total income
 EQ_TAX_TCTAX(z,time)          Government revenue from Ctax
 EQ_TAX_TPRODN(z,time)         Total government receipts of taxes on production
 EQ_TAX_TIWT(z,time)           Government receipts of indirect taxes on wages
 EQ_TAX_TIKT(z,time)           Government receipts of indirect taxes on capital
 EQ_TAX_TIPT(z,time)           Government receipts of indirect taxes on production
 EQ_TAX_TPRCTS(z,time)         Total government receipts of taxes on products and imports
 EQ_TAX_TICT(z,time)           Government receipts of indirect taxes on consumption
 EQ_TAX_TIMT(z,time)           Government receipts of indirect taxes on imports
 EQ_TAX_TIXT(z,time)           Government receipts of indirect taxes on exports
 EQ_TAX_TDH(z,time)            Household income taxes
 EQ_TAX_TIW(j,z,time)          Government receipts of indirect taxes on wages
 EQ_TAX_TIK(k,j,z,time)        Government receipts of indirect taxes on capital
 EQ_TAX_TIP(j,z,time)          Government receipts of indirect taxes on production of industry j
 EQ_TAX_TIC(i,z,time)          Government receipts of indirect taxes on commodity i
 EQ_TAX_TIM(i,zj,z,time)       Government receipts of indirect taxes on imports of commodity i
 EQ_TAX_TIX(i,z,zj,time)       Government receipts of indirect taxes on exports of commodity i
 EQ_SAV_SG(z,time)             Government savings
 EQ_INC_YROW(z,time)           Rest of the world total income
 EQ_SAV_SROW(z,time)           Rest of the world savings
 EQ_SAV_CAB(z,time)            Equivalence between current account balance and savings

* --- Demand and Trade ---
 EQ_DMD_C(i,z,time)            Household consumption of commodity i
 EQ_DMD_INV(i,z,time)          Final demand of commodity i for investment purposes
 EQ_DMD_CG(i,z,time)           Public final consumption of commodity i
 EQ_DMD_DIT_NENE(i,z,time)     Total intermediate consumption of commodity i
 EQ_DMD_DIT_ENE1(i,z,time)     Total intermediate consumption of commodity i
 EQ_DMD_DIT_ENE2(i,z,time)     Total intermediate consumption of commodity i
 EQ_TRD_DS_I(i,z,time)         Domestic supply by commdities
 EQ_TRD_XST(j,z,time)          Total supply by commdities
 EQ_TRD_CET_DOM(i,z,time)      CET function between exports local production and margins
 EQ_TRD_EXT(i,z,time)          Supply of composite exports
 EQ_TRD_MRGN(i,z,time)         Supply of margins
 EQ_TRD_CET_EXP(i,z,time)      CET function between exports by trading partner
 EQ_TRD_EX(i,z,zj,time)        Supply of exports by trading partner
 EQ_TRD_CES_IMP(i,z,time)      CES function between composite imports and local production
 EQ_TRD_IMT(i,z,time)          Demand for composite imports
 EQ_TRD_CES_ORG(i,z,time)      CES function between imports by origin
 EQ_TRD_IM(i,zj,z,time)        Demand for imports by origin

* --- Prices ---
 EQ_PRC_PP_ENE(j,z,time)       Producer price in energy industries j after production taxes
 EQ_PRC_PP_IND(j,z,time)       Producer price in industry j after production taxes
 EQ_PRC_PT(j,z,time)           Basic price of industry j production
 EQ_PRC_PCI(j,z,time)          Price index of industry j intermediate consumption
 EQ_PRC_PCE(j2,z,time)         Price index nested CES
 EQ_PRC_PCE_ENE(j3,z,time)     Price index nested CES
 EQ_PRC_PCE_ELEC(j2,z,time)    Price index nested CES
 EQ_PRC_PCE_NELEC(j2,z,time)   Price index nested CES
 EQ_PRC_PCE_COALGAS(j2,z,time) Price index nested CES
 EQ_PRC_PCE_OILPETROL(j2,z,time) Price index nested CES
 EQ_PRC_PVA(j,z,time)          Value added price
 EQ_PRC_PKLE(j,z,time)         KLE price
 EQ_PRC_WC(j,z,time)           Price of composite labor in industry j
 EQ_PRC_WTI(j,z,time)          Wages including taxes
 EQ_PRC_P4(ene,j,z,time)       Energy commodity prices
 EQ_PRC_RTI(k,j,z,time)        Rental rate including taxes
 EQ_PRC_P(i,z,time)            Producer price is a weighted sum of PE and PL
 EQ_PRC_PE(i,z,zj,time)        Border price of exported commodity i
 EQ_PRC_PD(i,z,time)           Price of local product i (including all taxes and margins)
 EQ_PRC_PM(i,zj,z,time)        Price of imported commodity i (including all taxes and duties)
 EQ_PRC_PC(i,z,time)           Consumer price is a weighted sum of PD and PM
 EQ_MAC_PIXGDP(z,time)         GDP deflator (Fischer index)
 EQ_MAC_PIXGDP_W(time)         World GDP deflator (Fischer index)
 EQ_MAC_PIXCON(z,time)         Consumer price index (Laspeyres)
 EQ_MAC_PIXINV(z,time)         Investment price index (derived from investment function)
 EQ_MAC_PIXGVT(z,time)         Public expenditure price index

* --- Equilibrium and Macro ---
 EQ_MKT_Q(i1,z,time)           Domestic absorbtion
 EQ_MKT_LS(z,time)             Labor supply equals labor demand
 EQ_MKT_KS(k,z,time)           Capital supply equals capital demand
 EQ_MKT_IT(z,time)             Total investment equals total savings
 EQ_MAC_DEP(z,time)            Depreciation
 EQ_MKT_DS(i,z,time)           Supply of domestic production equals demand
 EQ_MKT_EX(i,z,zj,time)        Exports supply equals imports demand
 EQ_MKT_PWX(i,z,zj,time)       Exports price equals imports price
 EQ_MKT_MRGN(i,time)           World demand for margins equals world supply
 EQ_MAC_GDP_BP(z,time)         GDP at basic prices
 EQ_MAC_GDP_MP(z,time)         GDP at market prices
 EQ_MAC_GDP_IB(z,time)         GDP at market prices (income-based)
 EQ_MAC_GDP_FD(z,time)         GDP at market prices (expenditure-based)
 EQ_MAC_GDP_BP_W(time)         World GDP
 EQ_MAC_CTH_REAL(z,time)       Real consumption budget of type h households
 EQ_MAC_G_REAL(z,time)         Real current government expenditures on goods and services
 EQ_MAC_GDP_BP_REAL(z,time)    Real GDP at basic prices
 EQ_MAC_GDP_BP_W_REAL(time)    Real world GDP at basic prices
 EQ_MAC_GDP_MP_REAL(z,time)    Real GDP at market prices
 EQ_MAC_IT_REAL(z,time)        Real gross fixed capital formation
 EQ_MAC_CABX(z,time)           Current account balance of region z in terms of the reference currency
 EQ_MKT_WALRAS(z,time)         Walras law verification

* --- Nested Trade & Output ---
 EQ_TRD_TnD(z,time)            Top Nest - Leontief function Aggregated-Electricity
 EQ_TRD_ELEC(Z,time)           Top Nest - Leontief function Aggregated-Electricity
 EQ_TRD_BS_GRN(BS, Conv, I_BS, Z_GRN, time)       Top Nest - Other
 EQ_TRD_BS_OTH(BS, Conv, I_BS, Z_OTH, time)       Top Nest - OTH IRONSTAL
 EQ_TRD_QPOWER(z,time)         Second Nest - CES function - Aggregated-Electricity 
 EQ_TRD_POWER(POWER,i,z,time)  Second Nest - CES function - Aggregated-Electricity
 EQ_TRD_QBS(BS, Conv, I_BS, Z_GRN, time)          Second Nest - CES function - Aggregated-Backstop
 EQ_TRD_CONV(BS, Conv, I_BS, Z_GRN, time)
 EQ_TRD_BS(BS, Conv, I_BS, Z_GRN, time)
 EQ_TRD_XS_I(i2,z,time)        Industry j production of commodity i (CES)
 EQ_TRD_XS(j,i2,z,time)        Industry j production
 EQ_TRD_P2_PT(j,i,z,time)      Total producer price is equal to P if there is only one product
 EQ_TRD_P2_VAL(j,i,z,time)     Basic price of industry js production of commodity i
 EQ_TRD_EXTT(j,i,z,time)       Supply of exports for compsite activity

* --- Dynamics and Labor ---
 EQ_DYN_IT(z,time)             Total investment expenditure constraint
 EQ_DYN_PK(z,time)             Aggregate price of capital
 EQ_DYN_IND(k,bus,z,time)      Investment demand by industry
 EQ_DYN_IR(z,time)             Interest rate (weighted average rate of return on capital)
 EQ_DYN_U(z,time)              User cost of capital
 EQ_DYN_LS(z,time)             Labor supply

* --- Climate Policy (CTAX, Permits, DAC) ---
 EQ_OBJ                                 Objective function 
 EQ_POL_PERMIT(j,z,time)                Emissions permit allocation or requirement by sector (j) and region (z)
 EQ_POL_PERMIT_TOT(z,time)              Total domestic emissions permit cap for region (z)
 EQ_POL_Global_Cap(time)                Global carbon emissions cap across all regions
 EQ_POL_Global_PriceSync(z,time)        Spatial price equalization condition for a unified global carbon market
 EQ_POL_PERMIT_NetTrade(z,time)         Net exports imports of emissions permits in the global market
 EQ_POL_Rev_Share(z,time)               International permit trading revenue sharing rule among regions
 EQ_POL_NewCap_VAR(z,time)              Endogenous adjustment equation for regional caps based on trading transfers
 EQ_POL_NEA_PERMIT(time)                Aggregate regional emissions cap for the entire Northeast Asia (NEA) bloc
 EQ_POL_NEA_PriceSync(z,time)           Carbon price equalization among participating NEA regions
 EQ_POL_NEA_PERMIT_NetTrade(z,time)     Net permit trade balance within the NEA regional market
 EQ_POL_NONNEA_PERMIT(z,time)           Independent domestic emissions constraints for non-participating NEA regions
 EQ_POL_NEACJK_PERMIT(time)             Aggregate regional emissions cap strictly for China Japan and Korea (CJK)
 EQ_POL_NEACJK_PriceSync(z,time)        Carbon price equalization exclusively within the CJK trilateral bloc
 EQ_POL_NEACJK_PERMIT_NetTrade(z,time)  Net permit trade balance among CJK countries
 EQ_POL_NONNEACJK_PERMIT(z,time)        Independent domestic emissions constraints for all non-CJK regions
 EQ_POL_REBATE(z,time)                  Carbon tax revenue recycling or permit auction proceeds rebate mechanism
 EQ_POL_QDAC(z,time)                    Endogenous volume of Direct Air Capture (DAC) deployment

* --- Green Steel (VAT Nest) ---
 EQ_TSFMKT(BS,Z_GRN,time)   TSF Market clearing condition
 EQ_TSFD(BS,Z_GRN,time)     Demand function for TSF (Leontief)
 EQ_VAT_REQ(BS,Z_GRN, time) VAT composite requirement
 EQ_PVAT(BS,Z_GRN, time)    Price of VAT composite
 EQ_VA_GRN(BS,Z_GRN, time)  Value added for Green Steel
 EQ_PP_GRN(BS,Z_GRN, time)  Producer price for Green Steel
 
* --- Terms of Trade ---
 EQ_PX_INDEX(z,time)     Export price index equation
 EQ_PM_INDEX(z,time)     Import price index equation
 EQ_TOT(z,time)          Terms of Trade equation 
;

*==============================================================================
* Equation Definitions
*==============================================================================

*==============================================================================
* Production
*==============================================================================
EQ_PRD_VA(j3,z,t)$[not BS(j3)]..
    VA(j3,z,t) =e= v(j3,z) * XST(j3,z,t);

EQ_PRD_KLE(j2,z,t)..
    KLE(j2,z,t) =e= v2(j2,z) * XST(j2,z,t);

EQ_PRD_INT(j,z,t)..
    CI(j,z,t) =e= io(j,z) * XST(j,z,t);

EQ_PRD_INT_ENE(j3,z,t)..
    CE(j3,z,t) =e= io2(j3,z) * XST(j3,z,t);

EQ_PRD_CES_VA(j,z,t)$[XSTO(j,z)]..
    VA(j,z,t) =e= A_VA(z,t) * B_VA_t(j,z,t) * {
                  [beta_VA(j,z) * LDC(j,z,t)**(-rho_VA(j,z))]$LDCO(j,z)
                + [(1 - beta_VA(j,z)) * KDC(j,z,t)**(-rho_VA(j,z))]$KDCO(j,z)
                }**(-1 / rho_VA(j,z));

EQ_PRD_CES_KLE(j2,z,t)..
    KLE(j2,z,t) =e= B_KLE(j2,z) * {
                    [beta_KLE(j2,z) * VA(j2,z,t)**(-rho_KLE(j2,z))]$VAO(j2,z)
                  + [(1 - beta_KLE(j2,z)) * CE(j2,z,t)**(-rho_KLE(j2,z))]$CEO(j2,z)
                  }**(-1 / rho_KLE(j2,z));

EQ_PRD_CES_VA_ENE(j2,z,t)$[VAO(j2,z) and CEO(j2,z)]..
    VA(j2,z,t) * (beta_KLE2(j2,z)**sigma_KLE(j2,z)) * (PVA(j2,z,t)**sigma_KLE(j2,z)) 
    =e= ((1 - beta_KLE2(j2,z))**sigma_KLE(j2,z)) * (PCE(j2,z,t)**sigma_KLE(j2,z)) * CE(j2,z,t);

EQ_PRD_CES_LDC(j,z,t)$[LDCO(j,z) and KDCO(j,z)]..
    LDC(j,z,t) =e= {[beta_VA(j,z) / (1 - beta_VA(j,z))]
                   *[RC(j,z,t) / WC(j,z,t)]}**sigma_VA(j,z) * KDC(j,z,t);

EQ_PRD_CES_LD(j,z,t)$LDCO(j,z)..
    LDC(j,z,t) =e= LD(j,z,t);

EQ_PRD_CES_KDC(j,z,t)$KDCO(j,z)..
    KDC(j,z,t) =e= B_KD(j,z) * SUM[k$KDO(k,j,z), beta_KD(k,j,z)
                   * KD(k,j,z,t)**(-rho_KD(j,z))]**(-1 / rho_KD(j,z));

EQ_PRD_CES_KD(k,j,z,t)$KDO(k,j,z)..
    KD(k,j,z,t) =e= [beta_KD(k,j,z) * RC(j,z,t) / RTI(k,j,z,t)]**sigma_KD(j,z) 
                  * B_KD(j,z)**(sigma_KD(j,z) - 1) * KDC(j,z,t);

EQ_PRD_LEO_DI(nene,j,z,t)..
    DI(nene,j,z,t) =e= aij_t(nene,j,z,t) * CI(j,z,t);

EQ_PRD_LEO_DE(ene,j3,z,t)..
    DE(ene,j3,z,t) =e= aij2_t(ene,j3,z,t) * CE(j3,z,t) ;

*============================= Level 1, 2, 3 (CES Energy Nesting) =====================
EQ_PRD_CES_ENE_LVL1(j2,z,t)..
    CE(j2,z,t) =e= B_ENER_elec(j2,z) * {
                   [(beta_ENER_elec(j2,z)) * DEelec(j2,z,t)**(-rho_ENER_elec(j2,z))]
                 + [(1 - beta_ENER_elec(j2,z)) * DEnelec(j2,z,t)**(-rho_ENER_elec(j2,z))]
                 }**(-1 / rho_ENER_elec(j2,z));

EQ_PRD_CES_ENE_LVL2(j2,z,t)..
    DEnelec(j2,z,t) =e= {[(1 - beta_ENER_elec(j2,z)) / (beta_ENER_elec(j2,z))]
                        *[PCEelec(j2,z,t) / PCEnelec(j2,z,t)]}**sigma_ENER_elec(j2,z) * DEelec(j2,z,t);

EQ_PRD_CES_ENE_LVL3(j2,z,t)..
    DEnelec(j2,z,t) =e= B_ENER_nelec(j2,z) * {
                        [(beta_ENER_nelec(j2,z)) * DEcoalgas(j2,z,t)**(-rho_ENER_nelec(j2,z))]
                      + [(1 - beta_ENER_nelec(j2,z)) * DEoilpetrol(j2,z,t)**(-rho_ENER_nelec(j2,z))]
                      }**(-1 / rho_ENER_nelec(j2,z));

EQ_PRD_CES_ENE_LVL4(j2,z,t)..
    DEoilpetrol(j2,z,t) =e= {[(1 - beta_ENER_nelec(j2,z)) / (beta_ENER_nelec(j2,z))]
                            *[PCEcoalgas(j2,z,t) / PCEoilpetrol(j2,z,t)]}**sigma_ENER_nelec(j2,z) * DEcoalgas(j2,z,t);

EQ_PRD_CES_ENE_LVL5(ene2,j2,z,t)..
    DE(ene2,j2,z,t) =e= DEelec(j2,z,t) ;  
 
EQ_PRD_CES_ENE_LVL6(ene5,j2,z,t)..
    DE(ene5,j2,z,t) =e= [beta_ENER_coalgas(ene5,j2,z) * PCEcoalgas(j2,z,t) / (P4(ene5,j2,z,t) + P4(ene5,j2,z,t) * CTAX(z,t) * CO2FACTOR2(ene5,j2,z,t))]
                        **sigma_ENER_coalgas(j2,z) * B_ENER_coalgas(j2,z)**(sigma_ENER_coalgas(j2,z) - 1)
                        * DEcoalgas(j2,z,t);

EQ_PRD_CES_ENE_LVL7(ene6,j2,z,t)..
    DE(ene6,j2,z,t) =e= [beta_ENER_oilprod(ene6,j2,z) * PCEoilpetrol(j2,z,t) / (P4(ene6,j2,z,t) + P4(ene6,j2,z,t) * CTAX(z,t) * CO2FACTOR2(ene6,j2,z,t))]
                        **sigma_ENER_oilprod(j2,z) * B_ENER_oilprod(j2,z)**(sigma_ENER_oilprod(j2,z) - 1)
                        * DEoilpetrol(j2,z,t);

*==============================================================================
* Income and savings
*==============================================================================
EQ_INC_YH(z,t)..
    YH(z,t) =e= YHL(z,t) + YHK(z,t) + REBATE(z,t) * recycle_hou(z,t) 
              + SUM((BS, Z_GRN)$sameas(z, Z_GRN), PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t));

EQ_INC_YHL(z,t)..
    YHL(z,t) =e= SUM[(j)$LDO(j,z), W(z,t) * (LD(j,z,t))];

EQ_INC_YHK(z,t)..
    YHK(z,t) =e= SUM[(k,j)$KDO(k,j,z), R(k,j,z,t) * (KD(k,j,z,t))];

EQ_INC_YDH(z,t)..
    YDH(z,t) =e= YH(z,t) - TDH(z,t);

EQ_SAV_CTH(z,t)..
    CTH(z,t) =e= YDH(z,t) - SH(z,t);

EQ_SAV_SH(z,t)..
    SH(z,t) =e= PIXCON(z,t)**eta * sh0(z,t) + sh1(z,t) * YDH(z,t);

*==============================================================================
* Government
*==============================================================================
EQ_INC_YG(z,t)..
    YG(z,t) =e= TDH(z,t) + TPRODN(z,t) + TPRCTS(z,t) + REBATE(z,t) * recycle_gov(z,t) - SUM(i1, PC(i1,z,t) * QDAC(z,t) * DAC_Tech_Coeff(i1));

EQ_TAX_TCTAX(z,t)..
    TCTAX(z,t) =e= SUM((ene,j), PC(ene,z,t) * CTAX(z,t) * CO2FACTOR2(ene,j,z,t) * DE(ene,j,z,t));

EQ_TAX_TPRODN(z,t)..
    TPRODN(z,t) =e= TIWT(z,t) + TIKT(z,t) + TIPT(z,t);

EQ_TAX_TIWT(z,t)..
    TIWT(z,t) =e= SUM[(j)$LDO(j,z), TIW(j,z,t)] ;

EQ_TAX_TIKT(z,t)..
    TIKT(z,t) =e= SUM[(k,j)$KDO(k,j,z), TIK(k,j,z,t)] ;

EQ_TAX_TIPT(z,t)..
    TIPT(z,t) =e= SUM[j, TIP(j,z,t)] ;

EQ_TAX_TPRCTS(z,t)..
    TPRCTS(z,t) =e= TICT(z,t) + TIMT(z,t) + TIXT(z,t);

EQ_TAX_TICT(z,t)..
    TICT(z,t) =e= SUM[i, TIC(i,z,t)];

EQ_TAX_TIMT(z,t)..
    TIMT(z,t) =e= SUM[(i,zj)$IMO(i,zj,z), TIM(i,zj,z,t)];

EQ_TAX_TIXT(z,t)..
    TIXT(z,t) =e= SUM[(i,zj)$EXO(i,z,zj), TIX(i,z,zj,t)];

EQ_TAX_TDH(z,t)..
    TDH(z,t) =e= PIXCON(z,t)**eta * ttdh0(z,t) + ttdh1(z,t) * YH(z,t);

EQ_TAX_TIW(j,z,t)$LDO(j,z)..
    TIW(j,z,t) =e= ttiw(j,z,t) * W(z,t) * (LD(j,z,t)) ;

EQ_TAX_TIK(k,j,z,t)$KDO(k,j,z)..
    TIK(k,j,z,t) =e= ttik(k,j,z,t) * R(k,j,z,t) * (KD(k,j,z,t));

EQ_TAX_TIP(j,z,t)..
    TIP(j,z,t) =e= ttip(j,z,t) * PP(j,z,t) * XST(j,z,t);

EQ_TAX_TIC(i,z,t)..
    TIC(i,z,t) =e= ttic(i,z,t) * {
                   [PL(i,z,t) * DD(i,z,t)]$DDO(i,z)
                 + [SUM[zj$IMO(i,zj,z), (1 + ttim(i,zj,z,t)) * IM(i,zj,z,t) * e(z,t)
                   *(PWM(i,zj,z,t) + SUM(ij, PWMG(ij,t) * tmrg(ij,i,zj,z)))]]
                 };

EQ_TAX_TIM(i,zj,z,t)$IMO(i,zj,z)..
    TIM(i,zj,z,t) =e= ttim(i,zj,z,t) * IM(i,zj,z,t) * e(z,t) * (PWM(i,zj,z,t) + SUM[ij, PWMG(ij,t) * tmrg(ij,i,zj,z)]);

EQ_TAX_TIX(i,z,zj,t)$EXO(i,z,zj)..
    TIX(i,z,zj,t) =e= ttix(i,z,zj,t) * PE(i,z,zj,t) * EX(i,z,zj,t);

EQ_SAV_SG(z,t)..
    SG(z,t) =e= YG(z,t) - G(z,t);

*==============================================================================
* Rest of the world
*==============================================================================
EQ_INC_YROW(z,t)..
    YROW(z,t) =e= e(z,t) * SUM{(i,zj)$IMO(i,zj,z), IM(i,zj,z,t) * [PWM(i,zj,z,t) + SUM(ij, PWMG(ij,t) * tmrg(ij,i,zj,z))]}+YROW_RES(z);

EQ_SAV_SROW(z,t)..
    SROW(z,t) =e= YROW(z,t) - e(z,t) * SUM[(i,zj)$EXO(i,z,zj), EX(i,z,zj,t) * PWX(i,z,zj,t)]
                  - e(z,t) * SUM[i$MRGNO(i,z), MRGN(i,z,t) * PWMG(i,t)]
                  - SW_GLOBAL*[(NTRD_PERMIT(z,t)) * GLOBAL_CTAX(t)]
                  - SW_NEAICM*[NTRD_NEA_PERMIT(z,t)*NEA_CTAX(t)]$NEA(z)
                  - SW_NEAICMCJK *[NTRD_NEACJK_PERMIT(z,t) * NEACJK_CTAX(t)]$CJK(z);

EQ_SAV_CAB(z,t)..
    SROW(z,t) =e= -CAB(z,t);

*==============================================================================
* Demand
*==============================================================================
EQ_DMD_C(i,z,t)..
    PC(i,z,t) * C(i,z,t) =e= PC(i,z,t) * (CMIN(i,z,t))
                           + gamma_LES(i,z) * {CTH(z,t) - SUM[ij, PC(ij,z,t) * (CMIN(ij,z,t))]};

EQ_DMD_INV(i,z,t)..
    PC(i,z,t) * INV(i,z,t) =e= gamma_INV(i,z) * IT(z,t);

EQ_DMD_CG(i,z,t)..
    PC(i,z,t) * CG(i,z,t) =e= gamma_GVT(i,z) * G(z,t);

EQ_DMD_DIT_NENE(nene,z,t)..
    DIT(nene,z,t) =e= SUM[j, DI(nene,j,z,t)];

EQ_DMD_DIT_ENE1(ene1,z,t)..
    DIT(ene1,z,t) =e= SUM[j, DE(ene1,j,z,t)];

EQ_DMD_DIT_ENE2(ene2,z,t)..
    DIT(ene2,z,t) =e= SUM[j, DE(ene2,j,z,t)];

*==============================================================================
* International trade
*==============================================================================
EQ_TRD_TnD(z,t)..
    XS('18_TnD','18_ELEC',z,t) =e= TnDShare(z) * XS_I('18_ELEC',z,t);

EQ_TRD_ELEC(z,t)..
    XS_I('18_ELEC',z,t) =e= XS('18_TnD','18_ELEC',z,t) + QPOWER(z,t);

EQ_TRD_BS_GRN(BS, Conv, I_BS, Z_GRN, t)$MAP_BS(BS, Conv, I_BS)..
    XS_I(I_BS, Z_GRN, t) =e= QBS(BS, Z_GRN, t);

EQ_TRD_BS_OTH(BS, Conv, I_BS, Z_OTH, t)$MAP_BS(BS, Conv, I_BS)..
    XS_I(I_BS, Z_OTH, t) =e= XS(Conv, I_BS, Z_OTH, t);

EQ_TRD_QPOWER(z,t)..
    QPOWER(z,t) =e= B_POWER(z) * SUM[POWER, beta_POWER(power,z) * XS(POWER,'18_ELEC',z,t)**(-rho_POWER(z))]**(-1 / rho_POWER(z));

EQ_TRD_POWER(power,'18_ELEC',z,t)..
    XS(POWER,'18_ELEC',z,t) =e= QPOWER(z,t) / B_POWER(z)**(1 - sigma_POWER(z)) *
                                [beta_POWER(power,z) * PPOWER(z,t) / P2(POWER,'18_ELEC',z,t)]**sigma_POWER(z);

EQ_TRD_QBS(BS, Conv, I_BS, Z_GRN, t)$MAP_BS(BS, Conv, I_BS)..
    QBS(BS, Z_GRN, t) =e= B_BS(BS, Z_GRN) * (
          beta_BS_t(Conv, I_BS, Z_GRN, t) * XS(Conv, I_BS, Z_GRN, t)**(-rho_BS(BS, Z_GRN))
        + beta_BS_t(BS, I_BS, Z_GRN, t) * XS(BS, I_BS, Z_GRN, t)**(-rho_BS(BS, Z_GRN))
    )**(-1 / rho_BS(BS, Z_GRN));

EQ_TRD_CONV(BS, Conv, I_BS, Z_GRN, t)$MAP_BS(BS, Conv, I_BS)..
    XS(Conv, I_BS, Z_GRN, t) =e= QBS(BS, Z_GRN, t) / B_BS(BS, Z_GRN)**(1 - sigma_BS(BS, Z_GRN)) *
        [beta_BS_t(Conv, I_BS, Z_GRN, t) * PBS(BS, Z_GRN, t) / P2(Conv, I_BS, Z_GRN, t)]**sigma_BS(BS, Z_GRN);

EQ_TRD_BS(BS, Conv, I_BS, Z_GRN, t)$MAP_BS(BS, Conv, I_BS)..
    XS(BS, I_BS, Z_GRN, t) =e= QBS(BS, Z_GRN, t) / B_BS(BS, Z_GRN)**(1 - sigma_BS(BS, Z_GRN)) *
        [beta_BS_t(BS, I_BS, Z_GRN, t) * PBS(BS, Z_GRN, t) / P2(BS, I_BS, Z_GRN, t)]**sigma_BS(BS, Z_GRN);

EQ_TRD_XS_I(i2,z,t)..
    XS_I(i2,z,t) =e= B_MultiOut(i2,z) * SUM[j$XSO(j,i2,z), beta_MultiOut(j,i2,z) * XS(j,i2,z,t)**(-rho_MultiOut(i2,z))]**(-1 / rho_MultiOut(i2,z));

EQ_TRD_XS(j,i2,z,t)${DSO(j,i2,z) and [DSO(j,i2,z) ne DSO_I(i2,z)]}..
    XS(j,i2,z,t) =e= XS_I(i2,z,t) / B_MultiOut(i2,z)**(1 - sigma_MultiOut(i2,z)) *[beta_MultiOut(j,i2,z) * P(i2,z,t) / P2(j,i2,z,t)]**sigma_MultiOut(i2,z);

EQ_TRD_P2_PT(j,i,z,t)${DSO(j,i,z)}..
    P2(j,i,z,t) =e= PT(j,z,t);

EQ_TRD_P2_VAL(j,i,z,t)$DSO(j,i,z)..
    P2(j,i,z,t) * XS(j,i,z,t) =e= [PET(i,z,t) * EXTT(j,i,z,t)]$EXTTO(j,i,z)
                                + [e(z,t) * MRGN(i,z,t) * PWMG(i,t)*SHR_MRGN(j,i,z)]$MRGNO(i,z)  
                                + [PL(i,z,t) * DS(j,i,z,t)]$DSO(j,i,z);

EQ_TRD_EXTT(j,i,z,t)$DSO(j,i,z)..
    EXTT(j,i,z,t) =e= theta2(j,i,z) * EXT(i,z,t);

EQ_TRD_DS_I(i,z,t)..
    DS_I(i,z,t) =e= SUM(j, DS(j,i,z,t)$DSO(j,i,z));

EQ_TRD_XST(j,z,t)..
    XST(j,z,t)  =e= SUM(i, XS(j,i,z,t)$XSO(j,i,z));

EQ_TRD_CET_DOM(i,z,t)..
    XS_I(i,z,t) =e= B_X1(i,z) * {
                    [beta_EX_X1(i,z) * EXT(i,z,t)**rho_X1(i,z)]$EXTO(i,z)
                  + [beta_D_X1(i,z) * DS_I(i,z,t)**rho_X1(i,z)]$DSO_I(i,z)
                  + [(1 - beta_EX_X1(i,z) - beta_D_X1(i,z)) * MRGN(i,z,t)**rho_X1(i,z)]$MRGNO(i,z)
                  }**(1 / rho_X1(i,z));

EQ_TRD_EXT(i,z,t)$[EXTO(i,z) and DSO_I(i,z)]..
    EXT(i,z,t) =e= {[beta_D_X1(i,z) / beta_EX_X1(i,z)] * [PET(i,z,t) / PL(i,z,t)]}**sigma_X1(i,z) * DS_I(i,z,t);

EQ_TRD_MRGN(i,z,t)$[MRGNO(i,z) and DSO_I(i,z)]..
    MRGN(i,z,t) =e= {[beta_D_X1(i,z) / (1 - beta_EX_X1(i,z) - beta_D_X1(i,z))] * [e(z,t) * PWMG(i,t) / PL(i,z,t)]}**sigma_X1(i,z) * DS_I(i,z,t);

EQ_TRD_CET_EXP(i,z,t)$EXTO(i,z)..
    EXT(i,z,t) =e= B_X2(i,z) * SUM[zj$EXO(i,z,zj), beta_X2(i,z,zj) * EX(i,z,zj,t)**rho_X2(i,z)]**(1 / rho_X2(i,z));

EQ_TRD_EX(i,z,zj,t)$EXO(i,z,zj)..
    EX(i,z,zj,t) =e= EXT(i,z,t) / B_X2(i,z)**(1 + sigma_X2(i,z)) *
                     [PE(i,z,zj,t) / (beta_X2(i,z,zj) * PET(i,z,t))]**sigma_X2(i,z);

EQ_TRD_CES_IMP(i,z,t)..
    Q(i,z,t) =e= B_M1(i,z) * {
                 [beta_M1(i,z) * IMT(i,z,t)**(-rho_M1(i,z))]$IMTO(i,z)
               + [(1 - beta_M1(i,z)) * DD(i,z,t)**(-rho_M1(i,z))]$DDO(i,z)
                 }**(-1 / rho_M1(i,z));

EQ_TRD_IMT(i,z,t)$[IMTO(i,z) and DDO(i,z)]..
    IMT(i,z,t) =e= {[beta_M1(i,z) / (1 - beta_M1(i,z))] * [PD(i,z,t) / PMT(i,z,t)]}**sigma_M1(i,z) * DD(i,z,t);

EQ_TRD_CES_ORG(i,z,t)$IMTO(i,z)..
    IMT(i,z,t) =e= B_M2(i,z) * SUM[zj$IMO(i,zj,z), beta_M2(i,zj,z) * IM(i,zj,z,t)**(-rho_M2(i,z))]**(-1 / rho_M2(i,z));

EQ_TRD_IM(i,zj,z,t)$IMO(i,zj,z)..
    IM(i,zj,z,t) =e= IMT(i,z,t) / B_M2(i,z)**(1 - sigma_M2(i,z)) *
                     [beta_M2(i,zj,z) * PMT(i,z,t) / PM(i,zj,z,t)]**sigma_M2(i,z);

*==============================================================================
* Prices
*==============================================================================
EQ_PRC_PP_ENE(j2,z,t)..
    PP(j2,z,t) * XST(j2,z,t) =e= PKLE(j2,z,t) * KLE(j2,z,t) + PCI(j2,z,t) * CI(j2,z,t);

EQ_PRC_PP_IND(j3,z,t)$[not BS(j3)]..    
    PP(j3,z,t) * XST(j3,z,t) =e= PVA(j3,z,t) * VA(j3,z,t) + PCI(j3,z,t) * CI(j3,z,t) + PCE(j3,z,t) * CE(j3,z,t);

EQ_PRC_PT(j,z,t)..
    PT(j,z,t) =e= (1 + ttip(j,z,t)) * PP(j,z,t);

EQ_PRC_PCI(j,z,t)..
    PCI(j,z,t) * CI(j,z,t) =e= SUM[nene, PC(nene,z,t) * DI(nene,j,z,t)];

EQ_PRC_PCE_ENE(j3,z,t)..
    PCE(j3,z,t) * CE(j3,z,t) =e= SUM[ene, PC(ene,z,t) * DE(ene,j3,z,t) + PC(ene,z,t) * CTAX(z,t) * CO2FACTOR2(ene,j3,z,t) * DE(ene,j3,z,t)];

EQ_PRC_PCE(j2,z,t)..
    PCE(j2,z,t) * CE(j2,z,t) =e= [PCEelec(j2,z,t) * DEelec(j2,z,t) + PCEnelec(j2,z,t) * DEnelec(j2,z,t)];

EQ_PRC_PCE_ELEC(j2,z,t)..
    PCEelec(j2,z,t) * DEelec(j2,z,t) =e= PC("18_ELEC",z,t) * DE("18_ELEC",j2,z,t);

EQ_PRC_PCE_NELEC(j2,z,t)..
    PCEnelec(j2,z,t) * DEnelec(j2,z,t) =e= [PCEcoalgas(j2,z,t) * DEcoalgas(j2,z,t) + PCEoilpetrol(j2,z,t) * DEoilpetrol(j2,z,t)];

EQ_PRC_PCE_COALGAS(j2,z,t)..
    PCEcoalgas(j2,z,t) * DEcoalgas(j2,z,t) =e= [PC("02_COAL",z,t) * DE("02_COAL",j2,z,t) + PC("02_COAL",z,t) * CTAX(z,t) * CO2FACTOR2("02_COAL",j2,z,t) * DE("02_COAL",j2,z,t)
                                             + PC("04_GAS",z,t) * DE("04_GAS",j2,z,t) + PC("04_GAS",z,t) * CTAX(z,t) * CO2FACTOR2("04_GAS",j2,z,t) * DE("04_GAS",j2,z,t)];

EQ_PRC_PCE_OILPETROL(j2,z,t)..
    PCEoilpetrol(j2,z,t) * DEoilpetrol(j2,z,t) =e= [PC("03_OIL",z,t) * DE("03_OIL",j2,z,t) + PC("03_OIL",z,t) * CTAX(z,t) * CO2FACTOR2("03_OIL",j2,z,t) * DE("03_OIL",j2,z,t)
                                                 + PC("10_PETROLCOAL",z,t) * DE("10_PETROLCOAL",j2,z,t) + PC("10_PETROLCOAL",z,t) * CTAX(z,t) * CO2FACTOR2("10_PETROLCOAL",j2,z,t) * DE("10_PETROLCOAL",j2,z,t)];

EQ_PRC_PVA(j,z,t)..
    PVA(j,z,t) * VA(j,z,t) =e= [WC(j,z,t) * LDC(j,z,t)]$LDCO(j,z)
                             + [RC(j,z,t) * KDC(j,z,t)]$KDCO(j,z);

EQ_PRC_PKLE(j2,z,t)..
    PKLE(j2,z,t) * KLE(j2,z,t) =e= [PVA(j2,z,t) * VA(j2,z,t)]$VAO(j2,z)
                                 + [PCE(j2,z,t) * CE(j2,z,t)]$CEO(j2,z);

EQ_PRC_WC(j,z,t)..
    WC(j,z,t) * LDC(j,z,t) =e= WTI(j,z,t) * (LD(j,z,t));

EQ_PRC_WTI(j,z,t)$LDO(j,z)..
    WTI(j,z,t) * LD(j,z,t) =e= W(z,t) * (1 + ttiw(j,z,t)) * LD(j,z,t) ;

EQ_PRC_P4(ene,j2,z,t)$DEO(ene,j2,z)..
    P4(ene,j2,z,t) =e= PC(ene,z,t);

EQ_PRC_RTI(k,j,z,t)$KDO(k,j,z)..
    RTI(k,j,z,t) =e= R(k,j,z,t) * (1 + ttik(k,j,z,t));

EQ_PRC_P(i,z,t)..
    P(i,z,t) * XS_I(i,z,t) =e= [PL(i,z,t) * DS_I(i,z,t)]$DSO_I(i,z)
                             + [PET(i,z,t) * EXT(i,z,t)]$EXTO(i,z)
                             + [e(z,t) * PWMG(i,t) * MRGN(i,z,t)]$MRGNO(i,z);

EQ_PRC_PE(i,z,zj,t)$EXO(i,z,zj)..
    PE(i,z,zj,t) * (1 + ttix(i,z,zj,t)) =e= e(z,t) * PWX(i,z,zj,t);

EQ_PRC_PD(i,z,t)$DDO(i,z)..
    PD(i,z,t) =e= (1 + ttic(i,z,t)) * PL(i,z,t);

EQ_PRC_PM(i,zj,z,t)$IMO(i,zj,z)..
    PM(i,zj,z,t) =e= (1 + ttic(i,z,t)) * (1 + ttim(i,zj,z,t)) * e(z,t) * (PWM(i,zj,z,t) + SUM[ij, PWMG(ij,t) * tmrg(ij,i,zj,z)]);

EQ_PRC_PC(i,z,t)..
    PC(i,z,t) * Q(i,z,t) =e= [PD(i,z,t) * DD(i,z,t)]$DDO(i,z) + [PMT(i,z,t) * IMT(i,z,t)]$IMTO(i,z);

EQ_MAC_PIXGDP(z,t)..
    PIXGDP(z,t) =e= { 
      ( SUM[j$XSTO(j,z), {(PVA(j,z,t) * VA(j,z,t) + TIP(j,z,t)) / VA(j,z,t)} * VAO(j,z)] 
        + SUM[(BS, Z_GRN)$(sameas(z, Z_GRN) and XSTO(BS, Z_GRN)), PTSF(BS, Z_GRN, t) * TSFO(BS, Z_GRN)] )
      / 
      ( SUM[j$XSTO(j,z), {(PVAO(j,z) * VAO(j,z) + TIPO(j,z)) / VAO(j,z)} * VAO(j,z)] 
        + SUM[(BS, Z_GRN)$(sameas(z, Z_GRN) and XSTO(BS, Z_GRN)), PTSFO(BS, Z_GRN) * TSFO(BS, Z_GRN)] )
      * ( SUM[j$XSTO(j,z), {(PVA(j,z,t) * VA(j,z,t) + TIP(j,z,t)) / VA(j,z,t)} * VA(j,z,t)] 
        + SUM[(BS, Z_GRN)$(sameas(z, Z_GRN) and XSTO(BS, Z_GRN)), PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t)] )
      / 
      ( SUM[j$XSTO(j,z), {(PVAO(j,z) * VAO(j,z) + TIPO(j,z)) / VAO(j,z)} * VA(j,z,t)] 
        + SUM[(BS, Z_GRN)$(sameas(z, Z_GRN) and XSTO(BS, Z_GRN)), PTSFO(BS, Z_GRN) * TSFD(BS, Z_GRN, t)] ) 
    }**0.5;

EQ_MAC_PIXGDP_W(t)..
    PIXGDP_W(t) =e= { 
      ( SUM[(j,z)$XSTO(j,z), {(PVA(j,z,t) * VA(j,z,t) + TIP(j,z,t)) / VA(j,z,t)} * VAO(j,z) / e(z,t)]
        + SUM[(BS, Z_GRN)$XSTO(BS, Z_GRN), PTSF(BS, Z_GRN, t) * TSFO(BS, Z_GRN) / e(Z_GRN, t)] )
      / 
      ( SUM[(j,z)$XSTO(j,z), {(PVAO(j,z) * VAO(j,z) + TIPO(j,z)) / VAO(j,z)} * VAO(j,z) / eO(z)]
        + SUM[(BS, Z_GRN)$XSTO(BS, Z_GRN), PTSFO(BS, Z_GRN) * TSFO(BS, Z_GRN) / eO(Z_GRN)] )
      * ( SUM[(j,z)$XSTO(j,z), {(PVA(j,z,t) * VA(j,z,t) + TIP(j,z,t)) / VA(j,z,t)} * VA(j,z,t) / e(z,t)]
        + SUM[(BS, Z_GRN)$XSTO(BS, Z_GRN), PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t) / e(Z_GRN, t)] )
      / 
      ( SUM[(j,z)$XSTO(j,z), {(PVAO(j,z) * VAO(j,z) + TIPO(j,z)) / VAO(j,z)} * VA(j,z,t) / eO(z)]
        + SUM[(BS, Z_GRN)$XSTO(BS, Z_GRN), PTSFO(BS, Z_GRN) * TSFD(BS, Z_GRN, t) / eO(Z_GRN)] ) 
    }**0.5;

EQ_MAC_PIXCON(z,t)..
    PIXCON(z,t) =e= SUM[i, PC(i,z,t) * CO(i,z)] / SUM[i, PCO(i,z) * CO(i,z)];

EQ_MAC_PIXINV(z,t)..
    PIXINV(z,t) =e= PROD[i$gamma_INV(i,z), (PC(i,z,t) / PCO(i,z))**gamma_INV(i,z)];

EQ_MAC_PIXGVT(z,t)..
    PIXGVT(z,t) =e= PROD[i$gamma_GVT(i,z), (PC(i,z,t) / PCO(i,z))**gamma_GVT(i,z)];

*==============================================================================
* Equilibrium Market Clearing Condtion
*==============================================================================
EQ_MKT_Q(i1,z,t)..
    Q(i1,z,t) =e= C(i1,z,t) + CG(i1,z,t) + INV(i1,z,t) + DIT(i1,z,t) + (QDAC(z,t) * DAC_Tech_Coeff(i1)) ;

EQ_MKT_LS(z,t)..
    LS(z,t) =e= SUM[j$LDO(j,z), LD(j,z,t)] ;

EQ_MKT_KS(k,z,t)$KSO(k,z)..
    KS(k,z,t) =e= SUM[j$KDO(k,j,z), KD(k,j,z,t)+K_idle(k,j,z,t)] ;

EQ_MKT_IT(z,t)..
    IT(z,t) =e= SH(z,t) + SG(z,t) - CAB(z,t);

EQ_MAC_DEP(z,t)..
    DEP(z,t) =e= PK(z,t) * delta(z) * SUM[k$KSO(k,z), KS(k,z,t)];

EQ_MKT_DS(i,z,t)$DDO(i,z)..
    SUM[j$DSO(j,i,z), DS(j,i,z,t)] =e= DD(i,z,t);

EQ_MKT_EX(i,z,zj,t)$EXO(i,z,zj)..
    EX(i,z,zj,t) =e= IM(i,z,zj,t);

EQ_MKT_PWX(i,z,zj,t)$EXO(i,z,zj)..
    PWX(i,z,zj,t) =e= PWM(i,z,zj,t);

EQ_MKT_MRGN(i,t)..
    SUM[z$MRGNO(i,z), MRGN(i,z,t)] =e= SUM[(z,zj,ij)$IMO(ij,zj,z), tmrg(i,ij,zj,z) * IM(ij,zj,z,t)]+MRGN_RES(i) ;

*==============================================================================
* Gross domestic product
*==============================================================================
EQ_MAC_GDP_BP(z,t)..
    GDP_BP(z,t) =e= SUM[j, PVA(j,z,t) * VA(j,z,t)] + TIPT(z,t)
                  + SUM((BS, Z_GRN)$sameas(z, Z_GRN), PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t));

EQ_MAC_GDP_MP(z,t)..
    GDP_MP(z,t) =e= GDP_BP(z,t) + TPRCTS(z,t) + TCTAX(z,t);

EQ_MAC_GDP_IB(z,t)..
    GDP_IB(z,t) =e= SUM[(j)$LDO(j,z), W(z,t) * (LD(j,z,t))]
                  + SUM[(k,j)$KDO(k,j,z), R(k,j,z,t) * (KD(k,j,z,t))]
                  + SUM((BS, Z_GRN)$sameas(z, Z_GRN), PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t))
                  + TPRCTS(z,t) + TPRODN(z,t) + TCTAX(z,t);

EQ_MAC_GDP_FD(z,t)..
    GDP_FD(z,t) =e= SUM[i, PC(i,z,t) * (C(i,z,t) + CG(i,z,t) + INV(i,z,t))]
                  + SUM[(i,zj)$EXO(i,z,zj), e(z,t) * PWX(i,z,zj,t) * EX(i,z,zj,t)]
                  + SUM[i$MRGNO(i,z), e(z,t) * PWMG(i,t) * MRGN(i,z,t)]
                  - SUM[(i,zj)$IMO(i,zj,z), e(z,t) * IM(i,zj,z,t) * (PWM(i,zj,z,t) + SUM[ij, PWMG(ij,t) * tmrg(ij,i,zj,z)])]
                  + SUM(i1, PC(i1,z,t) * QDAC(z,t) * DAC_Tech_Coeff(i1));

EQ_MAC_GDP_BP_W(t)..
    GDP_BP_W(t) =e= SUM[z, GDP_BP(z,t) / e(z,t)];

*==============================================================================
* Real (volume) variables computed from price indices
*==============================================================================
EQ_MAC_CTH_REAL(z,t)..
    CTH_REAL(z,t) =e= CTH(z,t) / PIXCON(z,t);

EQ_MAC_G_REAL(z,t)..
    G_REAL(z,t) =e= G(z,t) / PIXGVT(z,t);

EQ_MAC_GDP_BP_REAL(z,t)..
    GDP_BP_REAL(z,t) =e= GDP_BP(z,t) / PIXGDP(z,t);

EQ_MAC_GDP_BP_W_REAL(t)..
    GDP_BP_W_REAL(t) =e= GDP_BP_W(t) / PIXGDP_W(t);

EQ_MAC_GDP_MP_REAL(z,t)..
    GDP_MP_REAL(z,t) =e= GDP_MP(z,t) / PIXCON(z,t);

EQ_MAC_IT_REAL(z,t)..
    IT_REAL(z,t) =e= IT(z,t) / PIXINV(z,t);

EQ_MAC_CABX(z,t)..
    CABX(z,t) =e= CAB(z,t) / [PIXGDP_W(t) * e(z,t)];

*==============================================================================
* Dynamic equations
*==============================================================================
EQ_DYN_IT(z,t)..
    IT(z,t) =e= PK(z,t) * SUM[(k,j)$KDO(k,j,z), IND(k,j,z,t)];

EQ_DYN_PK(z,t)..
    PK(z,t) =e= 1 / A_K(z) * PROD[i$gamma_INV(i,z), (PC(i,z,t) / gamma_INV(i,z))**gamma_INV(i,z)];

EQ_DYN_IND(k,bus,z,t)$KDO(k,bus,z)..
    IND(k,bus,z,t) =e= phi(z,t) * [R(k,bus,z,t) / U(z,t)]**sigma_INV(k,bus,z) * (KD(k,bus,z,t));

EQ_DYN_IR(z,t)..
    IR(z,t) =e= {SUM[(k,j)$KDO(k,j,z), R(k,j,z,t) * (KD(k,j,z,t))] - DEP(z,t)} /
                {PK(z,t) * SUM[(k,j)$KDO(k,j,z), (KD(k,j,z,t))]};

EQ_DYN_U(z,t)..
    U(z,t) =e= PK(z,t) * (delta(z) + IR(z,t));

*==============================================================================
* LEON
*==============================================================================
EQ_MKT_WALRAS(z,t)..
    LEON(z,t) =e= Q('01_AGRICULT',z,t) - C('01_AGRICULT',z,t) - CG('01_AGRICULT',z,t) - INV('01_AGRICULT',z,t) - DIT('01_AGRICULT',z,t);

*================================================================================
* Labour Supply
*================================================================================
EQ_DYN_LS(z,t)..
    LS(z,t) =e= LST(z,t) * ((W(z,t) / PIXCON(z,t)) / (W_lag(z,t) / PIXCON_lag(z,t)))**elasLS(z);

*==============================================================================
* PERMIT
*==============================================================================
EQ_POL_PERMIT(j,z,t)..
    PERMIT(j,z,t) =e= SUM(ene, CO2FACTOR2(ene,j,z,t) * DE(ene,j,z,t));

EQ_POL_PERMIT_TOT(z,t)..
    PERMIT_TOTAL(z,t) =e= SUM(j, PERMIT(j,z,t)) - QDAC(z,t) * switchDAC(z,t);

*Global Integrated Carbon Market
EQ_POL_Global_PriceSync(z,t)$SW_GLOBAL..
    CTAX(z,t) =e= GLOBAL_CTAX(t);

EQ_POL_Global_Cap(t)$SW_GLOBAL.. 
    SUM(z, PERMIT_TOTAL(z,t)) =e= NZ_GLOBALEMISSION(t)/10;

EQ_POL_Rev_Share(z,t)$SW_GLOBAL..
    REVENUE_SHARE_VAR(z,t) =e= (BAU_EMISSION(z,t)/10 - PERMIT_TOTAL(z,t))/(SUM(zj, BAU_EMISSION(zj,t)/10 - PERMIT_TOTAL(zj,t)));

EQ_POL_NewCap_VAR(z,t)$SW_GLOBAL..
    NEW_PERMIT_CAP_VAR(z,t) =e= (NZ_GLOBALEMISSION(t)/10)*REVENUE_SHARE_VAR(z,t);

EQ_POL_PERMIT_NetTrade(z,t)$SW_GLOBAL..
    NTRD_PERMIT(z,t) =e= (NEW_PERMIT_CAP_VAR(z,t) - PERMIT_TOTAL(z,t));

*NEA Integrated Carbon Market
EQ_POL_NEA_PriceSync(z,t)$(SW_NEAICM and NEA(z))..
    CTAX(z, t) =e= NEA_CTAX(t);

EQ_POL_NEA_PERMIT(t)$SW_NEAICM.. 
    SUM(z$NEA(z), PERMIT_TOTAL(z, t)) =e= NZ_NEAEMISSION(t)/10;

EQ_POL_NONNEA_PERMIT(z,t)$(SW_NEAICM and not NEA(z))..
    PERMIT_TOTAL(z, t) =e= NZ_EMISSION(z, t)/10;

EQ_POL_NEA_PERMIT_NetTrade(z,t)$(SW_NEAICM and NEA(z))..
    NTRD_NEA_PERMIT(z,t) =e= (NZ_EMISSION(z,t)/10 - PERMIT_TOTAL(z,t));

*NEA CJK Integrated Carbon Market
EQ_POL_NEACJK_PriceSync(z,t)$(SW_NEAICMCJK and CJK(z))..
    CTAX(z, t) =e= NEACJK_CTAX(t);

EQ_POL_NEACJK_PERMIT(t)$SW_NEAICMCJK.. 
    SUM(z$CJK(z), PERMIT_TOTAL(z, t)) =e= NZ_NEACJKEMISSION(t)/10;

EQ_POL_NONNEACJK_PERMIT(z,t)$(SW_NEAICMCJK and not CJK(z))..
    PERMIT_TOTAL(z, t) =e= NZ_EMISSION(z, t)/10;

EQ_POL_NEACJK_PERMIT_NetTrade(z,t)$(SW_NEAICMCJK and CJK(z))..
    NTRD_NEACJK_PERMIT(z,t) =e= (NZ_EMISSION(z,t)/10 - PERMIT_TOTAL(z,t));
      
*==============================================================================
* Carbon Tax Revenue Recycling
*==============================================================================
EQ_POL_REBATE(z,t)..
    REBATE(z,t) =e= TCTAX(z,t)
                          + SW_GLOBAL * (NTRD_PERMIT(z,t) * GLOBAL_CTAX(t))
                          + SW_NEAICM *[ (NTRD_NEA_PERMIT(z,t) * NEA_CTAX(t))]$NEA(z)
                          + SW_NEAICMCJK *[ (NTRD_NEACJK_PERMIT(z,t) * NEACJK_CTAX(t))]$CJK(z);
                          
*==============================================================================
* DAC
*==============================================================================
EQ_POL_QDAC(z,t)..
    QDAC(z,t) =e= DAC_MAX(z) * DAC_growth_rate(z,t) * switchDAC(z,t);

EQ_OBJ..
    OBJ =e= 1.0;

*==============================================================================
* TSF Equations - CES
*==============================================================================
EQ_PP_GRN(BS, Z_GRN, t)..
    PP(BS, Z_GRN, t) * XST(BS, Z_GRN, t) =e= PVAT(BS, Z_GRN, t) * VAT(BS, Z_GRN, t)
                                           + PCI(BS, Z_GRN, t) * CI(BS, Z_GRN, t)
                                           + PCE(BS, Z_GRN, t) * CE(BS, Z_GRN, t);

EQ_VA_GRN(BS, Z_GRN, t)..
    VA(BS, Z_GRN, t) =e= VAT(BS, Z_GRN, t) 
                       * (beta_VAT(BS, Z_GRN) * PVAT(BS, Z_GRN, t) / PVA(BS, Z_GRN, t))**sigma_VAT(BS, Z_GRN) 
                       * (B_VAT_t(BS, Z_GRN, t))**(sigma_VAT(BS, Z_GRN) - 1);

EQ_VAT_REQ(BS, Z_GRN, t)..
    VAT(BS, Z_GRN, t) =e= v_vat(BS, Z_GRN) * XST(BS, Z_GRN, t);

EQ_PVAT(BS, Z_GRN, t)..
    PVAT(BS, Z_GRN, t) * VAT(BS, Z_GRN, t) =e= PVA(BS, Z_GRN, t) * VA(BS, Z_GRN, t)
                                             + PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t);

EQ_TSFD(BS, Z_GRN, t)..
    TSFD(BS, Z_GRN, t) =e= VAT(BS, Z_GRN, t) 
                         * ((1 - beta_VAT(BS, Z_GRN)) * PVAT(BS, Z_GRN, t) / PTSF(BS, Z_GRN, t))**sigma_VAT(BS, Z_GRN) 
                         * (B_VAT_t(BS, Z_GRN, t))**(sigma_VAT(BS, Z_GRN) - 1);

EQ_TSFMKT(BS, Z_GRN, t)..
    TSFS(BS, Z_GRN, t) =e= TSFD(BS, Z_GRN, t);

* ===================================================================
* Terms of Trade (ToT) Equations (Bilateral World Prices)
* ===================================================================
EQ_PX_INDEX(z,t)..
    PX_INDEX(z,t) =e= SUM((i,zj)$VFOB0(i,z,zj), W_EXP(i,z,zj) * (PWX(i,z,zj,t) / PWX0(i,z,zj)));

EQ_PM_INDEX(z,t)..
    PM_INDEX(z,t) =e= SUM((i,zj)$VCIF0(i,zj,z), W_IMP(i,zj,z) * ( (PWM(i,zj,z,t) + SUM(ij, PWMG(ij,t) * tmrg(ij,i,zj,z))) / PCIF0(i,zj,z) ));

EQ_TOT(z,t)..
    TOT(z,t) * PM_INDEX(z,t) =e= PX_INDEX(z,t);
