*==============================================================================
*   6.2.3.1 Declaration of parameters to store results
*==============================================================================
PARAMETER

 valA_VA(z,time,scen)        Multifactor productivity
 valC(i,z,time,scen)         Consumption of commodity i by households in region z
 valCAB(z,time,scen)         Current account balance of region z
 valCABX(z,time,scen)        Current account balance or region z in terms of the international currency
 valCG(i,z,time,scen)        Public consumption of commodity i in region z
 valCI(j,z,time,scen)        Total intermediate consumption of industry j in region z
 valCE(j,z,time,scen)
 valCMIN(i,z,time,scen)      Minimum consumption of commodity i by households in region z
 valCTH(z,time,scen)         Consumption budget of households in region z
 valCTH_REAL(z,time,scen)    Real household consumption in region z
 valDD(i,z,time,scen)        Domestic demand for commodity i produced locally in region z
 valDEP(z,time,scen)         Amount of depreciation (capital consumption allowance) in region z
 valDI(i,j,z,time,scen)      Intermediate consumption of commodity i by industry j in region z
 valDE(i,j,z,time,scen)
 valDIT(i,z,time,scen)       Total intermediate demand of commodity i in region z
 valDS(j,i,z,time,scen)      Supply of inudstry i to the domestic market of region z
 valDS_I(i,z,time,scen)      Supply of commodity j to the domestic market of region z
 vale(z,time,scen)           Exchange rate (price of international currency in terms of region z local currency)
 valEX(i,z,zj,time,scen)     Quantity of product i exported by country z to country zj
 valEXT(i,z,time,scen)       Supply of composite commodity i by region z to the export market
 valG(z,time,scen)           Current government expenditures on goods and services in region z
 ValG_REAL(z,time,scen)      Current real government expenditures on goods and services in region z
 valGDP_BP(z,time,scen)      Region z GDP at basic prices
 valGDP_BP_REAL(z,time,scen) Region z real GDP at basic prices
 valGDP_BP_W(time,scen)      World GDP at basic prices
 valGDP_BP_W_REAL(time,scen) World real GDP at basic prices
 valGDP_FD(z,time,scen)      Region z GDP at purchasers prices from the perspective of final demand
 valGDP_IB(z,time,scen)      Region z GDP at market prices (income-based)
 valGDP_MP(z,time,scen)      Region z GDP at market prices
 valGDP_MP_REAL(z,time,scen) Real GDP at market prices
 valIM(i,zj,z,time,scen)     Quantity of product i imported by country z from country zj
 valIMT(i,z,time,scen)       Quantity demanded of composite imports of commodity i by region z
 valIND(k,j,z,time,scen)     Volume of new type k capital investment to industry j in region z
 valINV(i,z,time,scen)       Final demand of commodity i for investment purposes (GFCF) in region z
 valIR(z,time,scen)          Interest rate
 valIT(z,time,scen)          Total investment expenditures in region z
 valIT_REAL(z,time,scen)     Real gross fixed capital formation
 valKD(k,j,z,time,scen)      Demand for type k capital by industry j in region z
 valKDC(j,z,time,scen)       Demand for composite capital by industry j in region z
 valKS(k,z,time,scen)        Supply of type k capital in region z
 valLD(j,z,time,scen)        Demand for type l labor by industry j in region z
 valLDC(j,z,time,scen)       Demand for composite labor by industry j in region z
 valLS(z,time,scen)          Supply of type l labor in region z
 valLS2(z,time,scen)          Supply of type l labor in region z
 valLST(z,time,scen)         Supply of type l labor in region z
 valMRGN(i,z,time,scen)      Domestic production of commodity i in region z exported as international margin services
 valP(i,z,time,scen)         Basic price of industry j production in region z
 valPC(i,z,time,scen)        Purchaser price of composite commodity i (including all taxes and margins) in region z
 valPCI(j,z,time,scen)       Intermediate consumption price index of industry j in region z
 valPCE(j,z,time,scen)       Intermediate energy consumption price index of industry j in region z
 valPD(i,z,time,scen)        Price of local product i sold on region z domestic market (including all taxes)
 valPE(i,z,zj,time,scen)     Price received for commodity i exported to region zj by region z (excluding export taxes)
 valPET(i,z,time,scen)       Border price of composite commodity i exported by region z
 valphi(z,time,scen)         Scale variable (allocation of investment to industries)
 valPIXCON(z,time,scen)      Consumer price index in region z
 valPIXGDP(z,time,scen)      GDP deflator in region z
 valPIXGDP_W(time,scen)      World GDP deflator
 valPIXGVT(z,time,scen)      Public expenditures price index in region z
 valPIXINV(z,time,scen)      Investment price index in region z
 valPK(z,time,scen)          Price of new capital in region z
 valPL(i,z,time,scen)        Price of local product i (excluding all taxes on products) in region z
 valPM(i,zj,z,time,scen)     Price of commodity i imported by region z from region zj (including all taxes duties and margins)
 valPMT(i,z,time,scen)       Price of composite commodity i imported by region z (including all taxes duties and margins)
 valPP(j,z,time,scen)        Unit cost of industry j in region z including taxes directly related to the use of capital and labor but excluding other taxes on production
 valPT(j,z,time,scen)        Basic price of industry js output
 valPVA(j,Z,time,scen)       Price of industry j value added in region z (including taxes on production directly related to the use of capital and labor)
 valPWM(i,zj,z,time,scen)    World price of commodity i imported from country zj by region z (expressed in international currency)
 valPWMG(i,time,scen)        World price of margin i (expressed in international currency)
 valPWX(i,z,zj,time,scen)    World price of commodity i exported to country zj by region z (expressed in international currency)
 valQ(i,z,time,scen)         Quantity demanded of composite commodity i in region z
 valR(k,j,z,time,scen)       Rental rate of type k capital in industry j of region z
 valRC(j,z,time,scen)        Rental rate of industry j composite capital in region z
 valRTI(k,j,z,time,scen)     Rental rate paid by industry j for type k capital in region z including capital taxes
 valSG(z,time,scen)          Government savings in region z
 valSH(z,time,scen)          Household savings in region z
 valsh0(z,time,scen)         Intercept (household savings)
 valsh1(z,time,scen)         Slope (household savings)
 valSROW(z,time,scen)        Rest-of-the-world savings with respect to region z
 valTDH(z,time,scen)         Household income taxes in region z
 valTIC(i,z,time,scen)       Government revenue from indirect taxes on commodity i in region z
 valTICT(z,time,scen)        Total government receipts of indirect taxes on commodities in region z
 valTIK(k,j,z,time,scen)     Government revenue from taxes on type k capital used by industry j in region z
 valTIKT(z,time,scen)        Total government revenue from from taxes on capital in region z
 valTIM(i,zj,z,time,scen)    Government revenue from duties on commodity i imported from region zj by region z
 valTIMT(z,time,scen)        Total government revenue from import duties in region z
 valTIP(j,z,time,scen)       Government revenue from taxes on industry j production in region z (excluding taxes directly related to the use of capital and labor)
 valTIPT(z,time,scen)        Total government revenue from production taxes in region z (excluding taxes directly related to the use of capital and labor)
 valTIW(j,z,time,scen)       Government revenue from payroll taxes on type l labor in industry j of region z
 valTIWT(z,time,scen)        Total government revenue from payroll taxes in region z
 valTIX(i,z,zj,time,scen)    Government revenue from export taxes on commodity i exported by region z to region zj
 valTIXT(z,time,scen)        Total government revenue from export taxes in region z
 valTPRCTS(z,time,scen)      Total government revenue from taxes on products and imports in region z
 valTPRODN(z,time,scen)      Total government revenue from other taxes on production in region z
 valttdh0(z,time,scen)       Intercept (household income tax)
 valttdh1(z,time,scen)       Slope (household income tax)
 valttic(i,z,time,scen)      Tax rate on commodity i
 valttik(k,j,z,time,scen)    Tax rate on capital k used in industry j
 valttim(i,zj,z,time,scen)   Rate of taxes and duties on imports of commodity i from country zj
 valttip(j,z,time,scen)      Tax rate on the production of industry j
 valttiw(j,z,time,scen)      Tax rate on type l worker compensation in industry j
 valttix(i,z,zj,time,scen)   Export tax rate on exported commodity i
 valU(z,time,scen)           User cost of capital in region z
 valVA(j,z,time,scen)        Value added of industry j in region z
 valKLE(j,z,time,scen)       Value added of industry j in region z
 valW(z,time,scen)           Wage rate of type l labor in region z
 valWC(j,z,time,scen)        Wage rate of industry j composite labor in region z
 valWTI(j,z,time,scen)       Wage rate paid z by industry j for type l labor in region including payroll taxes
 valXS(j,i,z,time,scen)      Total output of commodity i by industry j in region z
 valXS_I(i,z,time,scen)      Total output of commodity i in region z
 valXST(j,z,time,scen)       Total output of industry j in region z
 valXST2(j,z,time,scen)      Total output of industry j in region z including backstop
 valYDH(z,time,scen)         Household disposable income in region z
 valYG(z,time,scen)          Total government income in region z
 valYH(z,time,scen)          Household total income in region z
 valYHK(z,time,scen)         Household capital income in region z
 valYHL(z,time,scen)         Household labor income in region z
 valYROW(z,time,scen)        Rest-of-the-world total income from region z
 valYROW2(z,time,scen)
 valYROW3(z,time,scen)
 valPERMIT_TOTAL(z,time,scen) Total emissions
 valPERMIT_NEA_TOTAL(time,scen) Total emissions
 valPERMIT(j,z,time,scen)
 valCO2FACTOR(ene,j,z,time,scen) CO2 FACTOR
 valAbateCost(j,z,time,scen)
 valLEON(z,time,scen)
 valKD2(k,j,z,time,scen)      Demand for type k capital by industry j in region z
 valKDC2(j,z,time,scen)       Demand for composite capital by industry j in region z
 valLD2(j,z,time,scen)        Demand for type l labor by industry j in region z
 valLDC2(j,z,time,scen)       Demand for composite labor by industry j in region z

*=================== Energy ================================================================== 
 valAEEI(z,time,scen)         AEEI
 valEE(product,j,z,time,scen) Industry's energy consumption by regions 
 valNE(product,j,z,time,scen) Non-energy consumption by energy products 
 valEH(product,z,time,scen)   Household energy consumption by energy products
 valTFC_product(product,time,z, scen)
 valTFC(time,z,scen)  Total final energy consumption by regions
 valNEA_TFC(product,time,scen) NEA's total final energy consumption by energy products
 valKOR_TFC(product,time,scen) Korea's total final energy consumption by energy products
 valCHN_TFC(product,time,scen) China's total final energy consumption by energy products
 valJPN_TFC(product,time,scen) Japan's total final energy consumption by energy products
 valTES_coal(z,time, scen) Total Energy Supply coal
 valTES_gas(z,time, scen) Total Energy Supply gas
 valTES_oil(z,time, scen) Total Energy Supply oil
 valTES(z,time, scen) Total Energy Supply

*================== CO2 emission ==============================================================
 valCO2I(product,j,z,time,scen)  Industry CO2 emissions by products
 valCO2NE(product,j,z,time,scen) Industry non-energy consumption CO2 emissions by products
 valCO2H(product,z,time,scen)    Household CO2 emission by products  
 valCO2I2(j,z,time,scen)  Industry non-energy consumption CO2 emissions by regions
 valCO2NE2(j,z,time,scen) Non-energy consumption CO2 emission by industries and regions
 valCO2I3(j,z,time,scen) Industry non-energy consumption CO2 emissions by regions
 valTCO2I(z,time,scen)  Total industrial CO2 emission by regions
 valTCO2NE(z,time,scen) Total CO2 emission from non-energy consumption by regions
 valTCO2H(z,time,scen) Household CO2 emission by regions
 valTCO2(z,time,scen) Total CO2 emission by regions
 valCO2I2_FUELCOMB(j,z,time,scen) 
 valTCO2H_FUELCOMB(z,time,scen)  
 valTCO2I_FUELCOMB(z,time,scen)      
 valTCO2NE_FUELCOMB(z,time,scen)       
 valTCO2_FUELCOMB(z,time,scen)        
 valEndo_CO2(ene,j,z,time,scen) ktCO2
 valEndo_TotalCO2(z,time,scen)  ktCO2

*================== CH4 emission ================================================================
 valCH4I(product,j,z,time,scen) Industry CH4 emissions by regions and products (CO2eq)
 valCh4NE(product,j,z,time,scen) Industry non-energy consumption CH4 emissions by products (CO2eq)
 valCH4I2(j,z,time,scen) Industry CH4 emissions by regions (CO2eq)
 valCH4NE2(j,z,time,scen) Non-energy consumption CH4 emission by industries and regions (CO2eq)
 valCH4I3(j,z,time,scen) Industry non-energy consumption CH4 emissions by regions (CO2eq) 
 valTCH4I(z,time,scen) Total industrial CH4 emission by regions (CO2eq)
 valTCH4NE(z,time,scen) Total CH4 emission from non-energy consumption by regions (CO2eq)
 valCH4H(product,z,time,scen) Household CH4 emission by regions (CO2eq)
 valTCH4H(z,time,scen) Household CH4 emission by regions (CO2eq)
 valTCH4(z,time,scen) Total CH4 emission by regions (CO2eq) 

*================== N2O emission ================================================================
 valN2OI(product,j,z,time,scen) Industry N2O emissions by regions and products (CO2eq)
 valN2ONE(product,j,z,time,scen) Industry non-energy consumption N2O emissions by products (CO2eq)
 valN2OI2(j,z,time,scen) Industry N2O emissions by regions (CO2eq)
 valN2ONE2(j,z,time,scen) Non-energy consumption N2O emission by industries and regions (CO2eq)
 valN2OI3(j,z,time,scen) Industry non-energy consumption N2O emissions by regions (CO2eq) 
 valTN2OI(z,time,scen) Total industrial N2O emission by regions (CO2eq)
 valTN2ONE(z,time,scen) Total N2O emission from non-energy consumption by regions (CO2eq)
 valN2OH(product,z,time,scen) Household N2O emission by regions (CO2eq)
 valTN2OH(z,time,scen) Household N2O emission by regions (CO2eq)
 valTN2O(z,time,scen) Total N2O emission by regions (CO2eq) 

*================== Global GHGs emission =========================================================
 valGlobal_CO2(time,scen)      Globally total CO2 emission
 valGlobal_CH4(time,scen)      Globally total CH4 emission (CO2eq) 
 valGlobal_N2O(time,scen)      Globally total NO2 emission (CO2eq)
 valGlobal_Fgases(time,scen)   Globally total Fgases emission (CO2eq)
 
*================== Power Generation ==============================================================
 valPOWER(power,i,z,time,scen) Economic Output by power plants
 valElecGen(*,z,time,scen) Electricity generation by power plants

*================== Carbon Tax ====================================================================
 valCTAX(z,time,scen) CTAX
 valTCTAX(z,time,scen) CTAX
 valTIW_Share(j,z,time,scen)
 valTIK_Share(j,z,time,scen)
 valTIP_Share(j,z,time,scen)
 valdeltatiw(j,z,time,scen)
 valdeltatik(j,z,time,scen)
 valdeltatip(j,z,time,scen)
 valrebatetot(z,time,scen)

*================== DAC ===========================================================
 valQ_DAC(z,time,scen)
 valDAC_growth_rate(z,time,scen)
 valDAC_elec(z,time,scen) 
 valswitchDAC(z,time,scen)
 
*================== Other ===========================================================
 valaij2_t(ene,j,z,time,scen)
 
;

*==============================================================================
*   6.2.3.2 Assignment of solution values to result parameters
*==============================================================================
 valA_VA(z,time,'NZ')       = A_VA.l(z,time);
 valC(i,z,time,'NZ')        = C.l(i,z,time);
 valCAB(z,time,'NZ')        = CAB.l(z,time);
 valCABX(z,time,'NZ')       = CABX.l(z,time);
 valCG(i,z,time,'NZ')       = CG.l(i,z,time);
 valCI(j,z,time,'NZ')       = CI.l(j,z,time);
 valCE(j,z,time,'NZ')       = CE.l(j,z,time);
 valCMIN(i,z,time,'NZ')     = CMIN.l(i,z,time);
 valCTH(z,time,'NZ')        = CTH.l(z,time);
 valCTH_REAL(z,time,'NZ')   = CTH_REAL.l(z,time);
 valDD(i,z,time,'NZ')       = DD.l(i,z,time);
 valDEP(z,time,'NZ')        = DEP.l(z,time);
 valDI(i,j,z,time,'NZ')     = DI.l(i,j,z,time);
 valDE(i,j,z,time,'NZ')     = DE.l(i,j,z,time);
 valDIT(i,z,time,'NZ')      = DIT.l(i,z,time);
 valDS(j,i,z,time,'NZ')     = DS.l(j,i,z,time);
 valDS_I(i,z,time,'NZ')     = DS_I.l(i,z,time);
 vale(z,time,'NZ')          = e.l(z,time);
 valEX(i,z,zj,time,'NZ')    = EX.l(i,z,zj,time);
 valEXT(i,z,time,'NZ')      = EXT.l(i,z,time);
 valG(z,time,'NZ')          = G.l(z,time);
 ValG_REAL(z,time,'NZ')     = G_REAL.L(z,time);
 valGDP_BP(z,time,'NZ')     = GDP_BP.l(z,time);
 valGDP_BP_REAL(z,time,'NZ')= GDP_BP_REAL.l(z,time);
 valGDP_BP_W(time,'NZ')     = GDP_BP_W.l(time);
 valGDP_BP_W_REAL(time,'NZ')= GDP_BP_W_REAL.l(time);
 valGDP_FD(z,time,'NZ')     = GDP_FD.l(z,time);
 valGDP_IB(z,time,'NZ')     = GDP_IB.l(z,time);
 valGDP_MP(z,time,'NZ')     = GDP_MP.l(z,time);
 valGDP_MP_REAL(z,time,'NZ')= GDP_MP_REAL.l(z,time);
 valIM(i,zj,z,time,'NZ')    = IM.l(i,zj,z,time);
 valIMT(i,z,time,'NZ')      = IMT.l(i,z,time);
 valIND(k,j,z,time,'NZ')    = IND.l(k,j,z,time);
 valINV(i,z,time,'NZ')      = INV.l(i,z,time);
 valIR(z,time,'NZ')         = IR.l(z,time);
 valIT(z,time,'NZ')         = IT.l(z,time);
 valIT_REAL(z,time,'NZ')    = IT_REAL.l(z,time);
 valKD(k,j,z,time,'NZ')     = KD.l(k,j,z,time);
 valKDC(j,z,time,'NZ')      = KDC.l(j,z,time);
 valKS(k,z,time,'NZ')       = KS.l(k,z,time);
 valLD(j,z,time,'NZ')       = LD.l(j,z,time);
 valLDC(j,z,time,'NZ')      = LDC.l(j,z,time);
 valLS(z,time,'NZ')         = LS.l(z,time);
 valLST(z,time,'NZ')        = LST.l(z,time);
 valMRGN(i,z,time,'NZ')     = MRGN.l(i,z,time);
 valP(i,z,time,'NZ')        = P.l(i,z,time);
 valPC(i,z,time,'NZ')       = PC.l(i,z,time);
 valPCI(j,z,time,'NZ')      = PCI.l(j,z,time);
 valPCE(j,z,time,'NZ')      = PCE.l(j,z,time);
 valPD(i,z,time,'NZ')       = PD.l(i,z,time);
 valPE(i,z,zj,time,'NZ')    = PE.l(i,z,zj,time);
 valPET(i,z,time,'NZ')      = PET.l(i,z,time);
 valphi(z,time,'NZ')        = phi.l(z,time);
 valPIXCON(z,time,'NZ')     = PIXCON.l(z,time);
 valPIXGDP(z,time,'NZ')     = PIXGDP.l(z,time);
 valPIXGDP_W(time,'NZ')     = PIXGDP_W.l(time);
 valPIXGVT(z,time,'NZ')     = PIXGVT.l(z,time);
 valPIXINV(z,time,'NZ')     = PIXINV.l(z,time);
 valPK(z,time,'NZ')         = PK.l(z,time);
 valPL(i,z,time,'NZ')       = PL.l(i,z,time);
 valPM(i,zj,z,time,'NZ')    = PM.l(i,zj,z,time);
 valPMT(i,z,time,'NZ')      = PMT.l(i,z,time);
 valPP(j,z,time,'NZ')       = PP.l(j,z,time);
 valPT(j,z,time,'NZ')       = PT.l(j,z,time);
 valPVA(j,Z,time,'NZ')      = PVA.l(j,Z,time);
 valPWM(i,zj,z,time,'NZ')   = PWM.l(i,zj,z,time);
 valPWMG(i,time,'NZ')       = PWMG.l(i,time);
 valPWX(i,z,zj,time,'NZ')   = PWX.l(i,z,zj,time);
 valQ(i,z,time,'NZ')        = Q.l(i,z,time);
 valR(k,j,z,time,'NZ')      = R.l(k,j,z,time);
 valRC(j,z,time,'NZ')       = RC.l(j,z,time);
 valRTI(k,j,z,time,'NZ')    = RTI.l(k,j,z,time);
 valSG(z,time,'NZ')         = SG.l(z,time);
 valSH(z,time,'NZ')         = SH.l(z,time);
 valsh0(z,time,'NZ')        = sh0.l(z,time);
 valsh1(z,time,'NZ')        = sh1.l(z,time);
 valSROW(z,time,'NZ')       = SROW.l(z,time);
 valTDH(z,time,'NZ')        = TDH.l(z,time);
 valTIC(i,z,time,'NZ')      = TIC.l(i,z,time);
 valTICT(z,time,'NZ')       = TICT.l(z,time);
 valTIK(k,j,z,time,'NZ')    = TIK.l(k,j,z,time);
 valTIKT(z,time,'NZ')       = TIKT.l(z,time);
 valTIM(i,zj,z,time,'NZ')   = TIM.l(i,zj,z,time);
 valTIMT(z,time,'NZ')       = TIMT.l(z,time);
 valTIP(j,z,time,'NZ')      = TIP.l(j,z,time);
 valTIPT(z,time,'NZ')       = TIPT.l(z,time);
 valTIW(j,z,time,'NZ')      = TIW.l(j,z,time);
 valTIWT(z,time,'NZ')       = TIWT.l(z,time);
 valTIX(i,z,zj,time,'NZ')   = TIX.l(i,z,zj,time);
 valTIXT(z,time,'NZ')       = TIXT.l(z,time);
 valTPRCTS(z,time,'NZ')     = TPRCTS.l(z,time);
 valTPRODN(z,time,'NZ')     = TPRODN.l(z,time);
 valttdh0(z,time,'NZ')      = ttdh0.l(z,time);
 valttdh1(z,time,'NZ')      = ttdh1.l(z,time);
 valttic(i,z,time,'NZ')     = ttic.l(i,z,time);
 valttik(k,j,z,time,'NZ')   = ttik.l(k,j,z,time);
 valttim(i,zj,z,time,'NZ')  = ttim.l(i,zj,z,time);
 valttip(j,z,time,'NZ')     = ttip.l(j,z,time);
 valttiw(j,z,time,'NZ')     = ttiw.l(j,z,time);
 valttix(i,z,zj,time,'NZ')  = ttix.l(i,z,zj,time);
 valU(z,time,'NZ')          = U.l(z,time);
 valVA(j,z,time,'NZ')       = VA.l(j,z,time);
 valKLE(j,z,time,'NZ')      = KLE.l(j,z,time);
 valW(z,time,'NZ')         = W.l(z,time);
 valWC(j,z,time,'NZ')      = WC.l(j,z,time);
 valWTI(j,z,time,'NZ')     = WTI.l(j,z,time);
 valXS(j,i,z,time,'NZ')    = XS.l(j,i,z,time);
 valXS_I(i,z,time,'NZ')    = XS_I.l(i,z,time);
 valXST(j,z,time,'NZ')     = XST.l(j,z,time);
 valYDH(z,time,'NZ')       = YDH.l(z,time);
 valYG(z,time,'NZ')        = YG.l(z,time);
 valYH(z,time,'NZ')        = YH.l(z,time);
 valYHK(z,time,'NZ')       = YHK.l(z,time);
 valYHL(z,time,'NZ')       = YHL.l(z,time);
 valYROW(z,time,'NZ')      = YROW.l(z,time);
 valYROW2(z,time,'NZ')     = -1*e.l(z,time)*SUM[(i,zj)$EXO(i,z,zj), EX.l(i,z,zj,time)*PWX.l(i,z,zj,time)] ;
 valYROW3(z,time,'NZ')     = -1*e.l(z,time)*SUM[i$MRGNO(i,z),MRGN.l(i,z,time)*PWMG.l(i,time)] ;
 valPERMIT_TOTAL(PERMIT_Z,time,'NZ') = PERMIT_TOTAL.l(PERMIT_Z,time);
 valPERMIT_NEA_TOTAL(time,'NZ') =  PERMIT_NEA_TOTAL.l(time);
 valPERMIT(j,z,time,'NZ')     = PERMIT.l(j,z,time);
* valTIW_Share(j,z,time,'NZ') = TIW_Share.l(j,z,time); 
* valTIK_Share(k,j,z,time,'NZ') = TIK_Share.l(k,j,z,time); 
 valCO2FACTOR(ene,j,z,time,'NZ') = CO2FACTOR2(ene,j,z,time);
 valLEON(z,time,'NZ') = LEON.l(z,time);
*=============================== Energy =====================================================================
 valAEEI(z,time,'NZ')                  = AEEI(z,time);
 valEE(p_coal,j,z,time,'NZ')           =  EEI(p_coal,j,z)*DE.L('02_COAL',j,z,time);
 valEE(p_oil,j,z,time,'NZ')            =  EEI(p_oil,j,z)*DE.L('03_OIL',j,z,time);
 valEE(p_gas,j,z,time,'NZ')            =  EEI(p_gas,j,z)*DE.L('04_GAS',j,z,time);
 valEE(p_oilproduct,j,z,time,'NZ')     =  EEI(p_oilproduct,j,z)*DE.L('10_PETROLCOAL',j,z,time);
 valEE(p_elecheat,j,z,time,'NZ')       =  EEI(p_elecheat,j,z)*DE.L('18_ELEC',j,z,time);
 valEE(p_waste,j,z,time,'NZ')          =  EEI(p_waste,j,z)*valXST(j,z,time,'NZ') ;
 valEE(p_bio,j,z,time,'NZ')            =  EEI(p_bio,j,z)*valXST(j,z,time,'NZ') ;
 valEE(p_charcoal,j,z,time,'NZ')       =  EEI(p_charcoal,j,z)*valXST(j,z,time,'NZ');
 valEE(p_solar,j,z,time,'NZ')          =  EEI(p_solar,j,z)*valXST(j,z,time,'NZ');
 valEE(p_geo,j,z,time,'NZ')            =  EEI(p_geo,j,z)*valXST(j,z,time,'NZ') ;   

 valNE(p_coal,j,z,time,'NZ')           =  NEI(p_coal,j,z)*DE.L('02_COAL',j,z,time);
 valNE(p_oil,j,z,time,'NZ')            =  NEI(p_oil,j,z)*DE.L('03_OIL',j,z,time);
 valNE(p_gas,j,z,time,'NZ')            =  NEI(p_gas,j,z)*DE.L('04_GAS',j,z,time);
 valNE(p_oilproduct,j,z,time,'NZ')     =  NEI(p_oilproduct,j,z)*DE.L('10_PETROLCOAL',j,z,time);
 valNE(p_elecheat,j,z,time,'NZ')       =  NEI(p_elecheat,j,z)*DE.L('18_ELEC',j,z,time);

 valEH(p_coal,z,time,'NZ')             =  EHI(p_coal,z)*C.L('02_COAL',z,time);
 valEH(p_oil,z,time,'NZ')              =  EHI(p_oil,z)*C.L('03_OIL',z,time);
 valEH(p_gas,z,time,'NZ')              =  EHI(p_gas,z)*C.L('04_GAS',z,time); 
 valEH(p_oilproduct,z,time,'NZ')       =  EHI(p_oilproduct,z)*C.L('10_PETROLCOAL',z,time);
 valEH(p_elecheat,z,time,'NZ')         =  EHI(p_elecheat,z)*C.L('18_ELEC',z,time);
 valEH(p_waste,z,time,'NZ')            =  EHI(p_waste,z)*TOT_POP(z,time) ;
 valEH(p_bio,z,time,'NZ')              =  EHI(p_bio,z)*TOT_POP(z,time) ;
 valEH(p_charcoal,z,time,'NZ')         =  EHI(p_charcoal,z)*TOT_POP(z,time) ;
 valEH(p_solar,z,time,'NZ')            =  EHI(p_solar,z)*TOT_POP(z,time) ;
 valEH(p_geo,z,time,'NZ')              =  EHI(p_geo,z)*TOT_POP(z,time) ;

 valTFC_product(product,time,z,'NZ')   = valEH(product,z,time,'NZ') + Sum(j4,valEE(product,j4,z,time,'NZ'))+Sum(j,valNE(product,j,z,time,'NZ'));
 valTFC(time,z,'NZ')                   = sum(product, valEH(product,z,time,'NZ') + Sum(j4,valEE(product,j4,z,time,'NZ'))+Sum(j,valNE(product,j,z,time,'NZ')));

 valNEA_TFC(product,time,'NZ')         = sum(NEA,valEH(product,NEA,time,'NZ')) + Sum((j4,NEA),valEE(product,j4,NEA,time,'NZ'))+Sum((j,NEA),valNE(product,j,NEA,time,'NZ'));
 valKOR_TFC(product,time,'NZ')         = valEH(product,'01_KOR',time,'NZ') + Sum(j4,valEE(product,j4,'01_KOR',time,'NZ'))+Sum(j,valNE(product,j,'01_KOR',time,'NZ'));
 valCHN_TFC(product,time,'NZ')         = valEH(product,'02_CHN',time,'NZ') + Sum(j4,valEE(product,j4,'02_CHN',time,'NZ'))+Sum(j,valNE(product,j,'02_CHN',time,'NZ'));
 valJPN_TFC(product,time,'NZ')         = valEH(product,'03_JPN',time,'NZ') + Sum(j4,valEE(product,j4,'03_JPN',time,'NZ'))+Sum(j,valNE(product,j,'03_JPN',time,'NZ'));

 valTES_coal(z,time,'NZ')              = sum(p_coal_TES,TES_coal(p_coal_TES,z))*[valQ('02_COAL',z,time,'NZ')/valQ('02_COAL',z,'2019','NZ')]; 
 valTES_oil(z,time,'NZ')               = sum(p_oil,TES_oil(p_oil,z))*[valQ('03_OIL',z,time,'NZ')/valQ('03_OIL',z,'2019','NZ')]; 
 valTES_gas(z,time,'NZ')               = sum(p_gas,TES_gas(p_gas,z))*[valQ('04_GAS',z,time,'NZ')/valQ('04_GAS',z,'2019','NZ')]; 
 valTES(z,time,'NZ')                   = valTES_coal(z,time,'NZ') + valTES_oil(z,time,'NZ') + valTES_gas(z,time,'NZ') ; 

*============================== CO2 ========================================================================================
 valCO2I(product,j,z,time,'NZ')        = valEE(product,j,z,time,'NZ')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001 ;
 valCO2NE(product,j,z,time,'NZ')       = valNE(product,j,z,time,'NZ')*(1-GHGsEF(product,'Stored_rate'))*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001 ;
 valCO2I2(j,z,time,'NZ')               = sum(product,valCO2I(product,j,z,time,'NZ'));
 valCO2NE2(j,z,time,'NZ')              = sum(product,valCO2NE(product,j,z,time,'NZ'));
 valCO2I3(j,z,time,'NZ')               = valCO2I2(j,z,time,'NZ') + valCO2NE2(j,z,time,'NZ') ;
 valTCO2I(z,time,'NZ')                 = sum((product,j),valCO2I(product,j,z,time,'NZ'));
 valTCO2NE(z,time,'NZ')                = sum((product,j),valCO2NE(product,j,z,time,'NZ'));
 valCO2H(product,z,time,'NZ')          = valEH(product,z,time,'NZ')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001 ;
 valTCO2H(z,time,'NZ')                 = sum((product),valCO2H(product,z,time,'NZ'));
 valTCO2(z,time,'NZ')                  = valTCO2H(z,time,'NZ') + valTCO2I(z,time,'NZ') +valTCO2NE(z,time,'NZ') ;

 valCO2I2_FUELCOMB(j,z,time,'NZ')      = sum(p_fuelcomb,valCO2I(p_fuelcomb,j,z,time,'NZ'));
 valTCO2H_FUELCOMB(z,time,'NZ')        = sum((p_fuelcomb),valCO2H(p_fuelcomb,z,time,'NZ'));
 valTCO2I_FUELCOMB(z,time,'NZ')        = sum((p_fuelcomb,j),valCO2I(p_fuelcomb,j,z,time,'NZ'));
 valTCO2NE_FUELCOMB(z,time,'NZ')       = sum((p_fuelcomb,j),valCO2NE(p_fuelcomb,j,z,time,'NZ'));
 valTCO2_FUELCOMB(z,time,'NZ')         = valTCO2H_FUELCOMB(z,time,'NZ') + valTCO2I_FUELCOMB(z,time,'NZ') +valTCO2NE_FUELCOMB(z,time,'NZ') ;


 valEndo_CO2(ene,j,z,time,'NZ')        = DE.L(ene,j,z,time)*CO2FACTOR2(ene,j,z,time)*10*1000;
 valEndo_TotalCO2(z,time,'NZ')         = sum((ene,j), valEndo_CO2(ene,j,z,time,'NZ'));

*============================== CH4(CO2equivalent) =========================================================================
*Energy 
 valCH4I(product,Energy,z,time,'NZ')    = valEE(product,Energy,z,time,'NZ')*41.868*GHGsEF(product,'CH4EF_Energy')/10**6*GWP_CH4 ;
*Industry
 valCH4I(product,IndCon,z,time,'NZ')    = valEE(product,IndCon,z,time,'NZ')*41.868*GHGsEF(product,'CH4EF_Industry')/10**6*GWP_CH4 ;
*LTRP
 valCH4I(product,Roadrail,z,time,'NZ')  = valEE(product,Roadrail,z,time,'NZ')*41.868*GHGsEF(product,'CH4EF_LTRP')/10**6*GWP_CH4 ;
*ATRP
 valCH4I(product,Air,z,time,'NZ')       = valEE(product,Air,z,time,'NZ')*41.868*GHGsEF(product,'CH4EF_ATRP')/10**6*GWP_CH4 ;
*WTRP
 valCH4I(product,Water,z,time,'NZ')     = valEE(product,Water,z,time,'NZ')*41.868*GHGsEF(product,'CH4EF_WTRP')/10**6*GWP_CH4 ;
*Other
 valCH4I(product,Other,z,time,'NZ')     = valEE(product,Other,z,time,'NZ')*41.868*GHGsEF(product,'CH4EF_Other')/10**6*GWP_CH4 ;
*Household 
 valCH4H(product,z,time,'NZ')           = valEH(product,z,time,'NZ')*41.868*GHGsEF(product,'CH4EF_Other')/10**6*GWP_CH4 ;

 valCH4I2(j,z,time,'NZ')                = sum(product,valCH4I(product,j,z,time,'NZ'));
 valCH4I3(j,z,time,'NZ')                = valCH4I2(j,z,time,'NZ') ;
 valTCH4I(z,time,'NZ')                  = sum((product,j),valCH4I(product,j,z,time,'NZ'));
 valTCH4H(z,time,'NZ')                  = sum((product),valCH4H(product,z,time,'NZ'));
 valTCH4(z,time,'NZ')                   = valTCH4H(z,time,'NZ') + valTCH4I(z,time,'NZ') ;

*============================== N2O(CO2equivalent) ========================================================================
*Energy 
 valN2OI(product,Energy,z,time,'NZ')    = valEE(product,Energy,z,time,'NZ')*41.868*GHGsEF(product,'N2OEF_Energy')/10**6*GWP_N2O ;
*Industry
 valN2OI(product,IndCon,z,time,'NZ')    = valEE(product,IndCon,z,time,'NZ')*41.868*GHGsEF(product,'N2OEF_Industry')/10**6*GWP_N2O ;
*LTRP
 valN2OI(product,Roadrail,z,time,'NZ')  = valEE(product,Roadrail,z,time,'NZ')*41.868*GHGsEF(product,'N2OEF_LTRP')/10**6*GWP_N2O ;
*ATRP
 valN2OI(product,Air,z,time,'NZ')       = valEE(product,Air,z,time,'NZ')*41.868*GHGsEF(product,'N2OEF_ATRP')/10**6*GWP_N2O ;
*WTRP
 valN2OI(product,Water,z,time,'NZ')     = valEE(product,Water,z,time,'NZ')*41.868*GHGsEF(product,'N2OEF_WTRP')/10**6*GWP_N2O ;
*Other
 valN2OI(product,Other,z,time,'NZ')     = valEE(product,Other,z,time,'NZ')*41.868*GHGsEF(product,'N2OEF_Other')/10**6*GWP_N2O ;
*Household 
 valN2OH(product,z,time,'NZ')           = valEH(product,z,time,'NZ')*41.868*GHGsEF(product,'N2OEF_Other')/10**6*GWP_N2O ;

 valN2OI2(j,z,time,'NZ')               = sum(product,valN2OI(product,j,z,time,'NZ'));
 valN2OI3(j,z,time,'NZ')               = valN2OI2(j,z,time,'NZ') ;
 valTN2OI(z,time,'NZ')                 = sum((product,j),valN2OI(product,j,z,time,'NZ'));
 valTN2OH(z,time,'NZ')                 = sum((product),valN2OH(product,z,time,'NZ'));
 valTN2O(z,time,'NZ')                  = valTN2OH(z,time,'NZ') + valTN2OI(z,time,'NZ') ;
 
*============================= Global GHGs emission ========================================================
 valGlobal_CO2(time,'NZ')              = sum(z, valTCO2(z,time,'NZ'));
 valGlobal_CH4(time,'NZ')              = sum(z, valTCH4(z,time,'NZ'));
 valGlobal_N2O(time,'NZ')              = sum(z, valTN2O(z,time,'NZ'));
 
*============================== Power Generation ============================================
 valPOWER(power,i,z,time,scen)          = XS.l(power,i,z,time);

 valElecGen('Nuclear',z,time,'NZ')    = XS.l('19_eNuclear','18_ELEC',z,time)*EGINucGWh('19_eNuclear',z); 
 valElecGen('Coal',z,time,'NZ')       = XS.l('20_eCoal','18_ELEC',z,time)*EGICoalGWh('20_eCoal',z); 
 valElecGen('Gas',z,time,'NZ')        = XS.l('21_eGas','18_ELEC',z,time)*EGIGasGWh('21_eGas',z); 
 valElecGen('Oil',z,time,'NZ')        = XS.l('22_eOil','18_ELEC',z,time)*EGIOilGWh('22_eOil',z); 
 valElecGen('Wind',z,time,'NZ')       = XS.l('23_eWind','18_ELEC',z,time)*EGIWindGWh('23_eWind',z); 
 valElecGen('Solar',z,time,'NZ')      = XS.l('24_eSolar','18_ELEC',z,time)*EGISolarGWh('24_eSolar',z); 
 valElecGen('Hydro',z,time,'NZ')      = XS.l('25_eHydro','18_ELEC',z,time)*EGIHydroGWh('25_eHydro',z); 
 valElecGen('Waste',z,time,'NZ')      = XS.l('26_eOther','18_ELEC',z,time)*EGIWasteGWh('26_eOther',z); 
 valElecGen('Bio',z,time,'NZ')        = XS.l('26_eOther','18_ELEC',z,time)*EGIBioGWh('26_eOther',z); 
 valElecGen('Geothermal',z,time,'NZ') = XS.l('26_eOther','18_ELEC',z,time)*EGIGeoGWh('26_eOther',z); 
 valElecGen('Other',z,time,'NZ')      = XS.l('26_eOther','18_ELEC',z,time)*EGIOtherGWh('26_eOther',z); 

 valElecGen('Total',z,time,'NZ')      = valElecGen('Nuclear',z,time,'NZ') + valElecGen('Coal',z,time,'NZ')+ valElecGen('Gas',z,time,'NZ')   
                                         + valElecGen('Oil',z,time,'NZ') + valElecGen('Wind',z,time,'NZ')+ valElecGen('Solar',z,time,'NZ')
                                         + valElecGen('Hydro',z,time,'NZ') + valElecGen('Waste',z,time,'NZ')+ valElecGen('Bio',z,time,'NZ')
                                         + valElecGen('Geothermal',z,time,'NZ') + valElecGen('Geothermal',z,time,'NZ') + valElecGen('Other',z,time,'NZ') ; 

*============================== Carbon Tax ============================================
 valCTAX(z,time,'NZ') = CTAX.l(z,time) ;
 valTCTAX(z,time,'NZ') = TCTAX.l(z,time) ;

*$Ontext
*================== Backstop technology ===========================================================

*================== DAC=== ===========================================================
 valQ_DAC(z,time,'NZ') = Q_DAC.l(z,time);
 valDAC_growth_rate(z,time,'NZ')  = DAC_growth_rate(z,time);
 valDAC_elec(z,time,'NZ') = Q_DAC.l(z,time)*DAC_Tech_Coeff('18_ELEC') ;
 valswitchDAC(z,time,'NZ') = switchDAC(z,time);

*$Offtext 
*=====================================================================================================

 execute_unload 'Output_CGE\NZ_Results_GTAP11c_new.gdx',
*$Ontext
 valA_VA,
 valC,
 valCAB,
 valCABX,
 valCG,
 valCI,
 valCE,
 valCMIN,
 valCTH,
 valCTH_REAL,
 valDD,
 valDEP,
 valDI,
 valDE,
 valDIT,
 valDS,
 valDS_I,
 vale,
 valEX,
 valEXT,
 valG,
 valG_REAL,
 valGDP_BP,
 valGDP_BP_REAL,
 valGDP_BP_W,
 valGDP_BP_W_REAL,
 valGDP_FD,
 valGDP_IB,
 valGDP_MP,
 valGDP_MP_REAL,
 valIM,
 valIMT,
 valIND,
 valINV,
 valIR,        
 valIT,      
 valIT_REAL,
 valKD,
 valKDC,
 valKD2,
 valKDC2,
 valKS,
 valLD,
 valLDC,
 valLD2,
 valLDC2,
 valLS,
 valLST,
 valMRGN,
 valP,
 valPC,
 valPCI,
 valPCE,
 valPD,
 valPE,
 valPET,
 valphi,
 valPIXCON,
 valPIXGDP,
 valPIXGDP_W,
 valPIXGVT,
 valPIXINV,
 valPK,       
 valPL,
 valPM,
 valPMT,
 valPP,
 valPT,
 valPVA,
 valPWM,
 valPWMG,
 valPWX,
 valQ,
 valR,
 valRC,
 valRTI,
 valSG,        
 valSH,    
 valsh0,
 valsh1,
 valSROW,
 valTDH,
 valTIC,
 valTICT,
 valTIK,
 valTIKT,
 valTIM,
 valTIMT,
 valTIP,
 valTIPT,
 valTIW,
 valTIWT,
 valTIX,
 valTIXT,
 valTPRCTS,
 valTPRODN,
 valttdh0,
 valttdh1,
 valttic,
 valttik,
 valttim,
 valttip,
 valttiw,
 valttix,
 valU,           
 valVA,
 valKLE,
 valW,
 valWC,
 valWTI,
 valXS,
 valXST,
 valXST2,
 valYDH,  
 valYG,         
 valYH,        
 valYHK,       
 valYHL,        
 valYROW,
 valYROW2,
 valYROW3,
 valEE,
 valNE,
 valEH,
 valTFC_product,
 valTFC,
 valNEA_TFC,
 valKOR_TFC,
 valCHN_TFC,
 valJPN_TFC,
 valTES_coal,
 valTES_gas,
 valTES_oil,
 valTES,
 valCO2I,
 valCO2NE,
 valCO2H,
 valCO2I2,
 valCO2NE2,
 valCO2I3,
 valTCO2I,
 valTCO2NE,
 valTCO2H,
 valTCO2,
 valEndo_CO2,
 valEndo_TotalCO2,
 valCO2I2_FUELCOMB,
 valTCO2H_FUELCOMB,
 valTCO2I_FUELCOMB,
 valTCO2NE_FUELCOMB,    
 valTCO2_FUELCOMB,
 valCH4I,
 valCH4H,
 valCH4I2,
 valCH4I3,
 valTCH4I,
 valTCH4H,
 valTCH4,
 valN2OI,
 valN2OH,
 valN2OI2,
 valN2OI3,
 valTN2OI,
 valTN2OH,
 valTN2O,
 valGlobal_CO2,
 valGlobal_CH4,
 valGlobal_N2O,
 valPOWER,
 valElecGen,
 valCTAX,
 valTCTAX,
 valTIW_Share,
 valTIK_Share,
 valTIP_Share,
* valdeltatiw,
 valdeltatik,
 valdeltatip,
 valAEEI,
 valPERMIT,
 valPERMIT_TOTAL,
 valPERMIT_NEA_TOTAL,
 valQ_DAC,
 valDAC_growth_rate,
 valDAC_elec,
 valswitchDAC,
 valCO2FACTOR,
 valaij2_t,
 valLEON,
 beta_X5_t,
 PTSF,
 TSFD,
 TSFS,
 B_VA_t,
 beta_VAT
 ;
*$Offtext 