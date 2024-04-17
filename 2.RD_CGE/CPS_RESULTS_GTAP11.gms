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
 valLD(l,j,z,time,scen)      Demand for type l labor by industry j in region z
 valLDC(j,z,time,scen)       Demand for composite labor by industry j in region z
 valLS(l,z,time,scen)        Supply of type l labor in region z
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
 valTIW(l,j,z,time,scen)     Government revenue from payroll taxes on type l labor in industry j of region z
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
 valttiw(l,j,z,time,scen)    Tax rate on type l worker compensation in industry j
 valttix(i,z,zj,time,scen)   Export tax rate on exported commodity i
 valU(z,time,scen)           User cost of capital in region z
 valVA(j,z,time,scen)        Value added of industry j in region z
 valKLE(j,z,time,scen)      Value added of industry j in region z
 valW(l,z,time,scen)         Wage rate of type l labor in region z
 valWC(j,z,time,scen)        Wage rate of industry j composite labor in region z
 valWTI(l,j,z,time,scen)     Wage rate paid z by industry j for type l labor in region including payroll taxes
 valXS(j,i,z,time,scen)      Total output of commodity i by industry j in region z
 valXS_I(i,z,time,scen)      Total output of commodity i in region z
 valXST(j,z,time,scen)       Total output of industry j in region z
 valYDH(z,time,scen)         Household disposable income in region z
 valYG(z,time,scen)          Total government income in region z
 valYH(z,time,scen)          Household total income in region z
 valYHK(z,time,scen)         Household capital income in region z
 valYHL(z,time,scen)         Household labor income in region z
 valYROW(z,time,scen)        Rest-of-the-world total income from region z

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

*================== CO2 emission ==============================================================
 valCO2I(product,j,z,time,scen)  Industry CO2 emissions by products
 valCO2NE(product,j,z,time,scen) Industry non-energy consumption CO2 emissions by products
 valCO2H(product,z,time,scen)    Household CO2 emission by products  
 
 valCO2I2(j,z,time,scen)  Industry non-energy consumption CO2 emissions by regions
 valCO2NE2(j,z,time,scen) Non-energy consumption CO2 emission by industries and regions
 valCO2I3(j,z,time,scen)

 valTCO2I(z,time,scen)  Total industrial CO2 emission by regions
 valTCO2NE(z,time,scen) Total CO2 emission from non-energy consumption by regions
 valTCO2H(z,time,scen) Household CO2 emission by regions
 
 valTCO2(z,time,scen)          Total CO2 emission by regions

 valEndo_CO2(ene,j,z,time,scen) ktCO2
 valEndo_TotalCO2(z,time,scen)  ktCO2

*================== CH4 emission ================================================================
 valCH4I(product,j,z,time,scen) Industry CH4 emissions by regions and products (CH4 tonne)
 valCH4H(product,z,time,scen) Household CH4 emissions by (CH4 tonne)
 valCH4I2(j,z,time,scen) Industry CH4 emissions by regions (CH4 tonne)
 valTCH4I(z,time,scen) Total industrial CH4 emission by regions (CH4 tonne)
 valTCH4H(z,time,scen) Household CH4 emission by regions (CH4 tonne)
 valTCH4(z,time,scen) Total CH4 emission by regions (CH4 tonne)  
 valTCH4_CO2eq(z,time,scen) Total CO2 equivalent CH4 emission by regions (tCO2eq)

*================== N2O emission ================================================================
 valN2OI(product,j,z,time,scen) Industry N2O emissions by regions (N2O tonne)
 valN2OH(product,z,time,scen)   Household N2O emission by regions (N2O tonne)
 valN2OI2(j,z,time,scen) Industry N2O emissions by regions (N2O tonne)
 valTN2OI(z,time,scen) Total industrial N2O emission by regions (N2O tonne)
 valTN2OH(z,time,scen) Household N2O emission by regions (N2O tonne)
 valTN2O(z,time,scen) Total N2O emission by regions (N2O tonne)  
 valTN2O_CO2eq(z,time,scen) Total CO2 equivalent N2O emission by regions (tCO2eq)

*================== Global GHGs emission =========================================================
 valGlobal_CO2(time,scen)    Globally total CO2 emission
 valGlobal_CH4(time,scen)    Globally total CH4 emission
 valGlobal_N2O(time,scen)    Globally total NO2 emission
 valGlobal_CO2eq(time,scen)    Globally total CO2 equivalent emission

 valGHG(*,z,time,scen)

*================== Power Generation ==============================================================
 valPOWER(power,i,z,time,scen) Economic Output by power plants
 valElecGen(j,z,time,scen) Electricity generation by power plants

*================== Carbon Tax ====================================================================
 valCTAX(z,time,scen) CTAX

;

*==============================================================================
*   6.2.3.2 Assignment of solution values to result parameters
*==============================================================================

 valA_VA(z,time,'CPS')       = A_VA.l(z,time);
 valC(i,z,time,'CPS')        = C.l(i,z,time);
 valCAB(z,time,'CPS')        = CAB.l(z,time);
 valCABX(z,time,'CPS')       = CABX.l(z,time);
 valCG(i,z,time,'CPS')       = CG.l(i,z,time);
 valCI(j,z,time,'CPS')       = CI.l(j,z,time);
 valCMIN(i,z,time,'CPS')     = CMIN.l(i,z,time);
 valCTH(z,time,'CPS')        = CTH.l(z,time);
 valCTH_REAL(z,time,'CPS')   = CTH_REAL.l(z,time);
 valDD(i,z,time,'CPS')       = DD.l(i,z,time);
 valDEP(z,time,'CPS')        = DEP.l(z,time);
 valDI(i,j,z,time,'CPS')     = DI.l(i,j,z,time);
 valDE(i,j,z,time,'CPS')     = DE.l(i,j,z,time);
 valDIT(i,z,time,'CPS')      = DIT.l(i,z,time);
 valDS(j,i,z,time,'CPS')     = DS.l(j,i,z,time);
 valDS_I(i,z,time,'CPS')     = DS_I.l(i,z,time);
 vale(z,time,'CPS')          = e.l(z,time);
 valEX(i,z,zj,time,'CPS')    = EX.l(i,z,zj,time);
 valEXT(i,z,time,'CPS')      = EXT.l(i,z,time);
 valG(z,time,'CPS')          = G.l(z,time);
 ValG_REAL(z,time,'CPS')     = G_REAL.L(z,time);
 valGDP_BP(z,time,'CPS')     = GDP_BP.l(z,time);
 valGDP_BP_REAL(z,time,'CPS')= GDP_BP_REAL.l(z,time);
 valGDP_BP_W(time,'CPS')     = GDP_BP_W.l(time);
 valGDP_BP_W_REAL(time,'CPS')= GDP_BP_W_REAL.l(time);
 valGDP_FD(z,time,'CPS')     = GDP_FD.l(z,time);
 valGDP_IB(z,time,'CPS')     = GDP_IB.l(z,time);
 valGDP_MP(z,time,'CPS')     = GDP_MP.l(z,time);
 valGDP_MP_REAL(z,time,'CPS')= GDP_MP_REAL.l(z,time);
 valIM(i,zj,z,time,'CPS')    = IM.l(i,zj,z,time);
 valIMT(i,z,time,'CPS')      = IMT.l(i,z,time);
 valIND(k,j,z,time,'CPS')    = IND.l(k,j,z,time);
 valINV(i,z,time,'CPS')      = INV.l(i,z,time);
 valIR(z,time,'CPS')         = IR.l(z,time);
 valIT(z,time,'CPS')         = IT.l(z,time);
 valIT_REAL(z,time,'CPS')    = IT_REAL.l(z,time);
 valKD(k,j,z,time,'CPS')     = KD.l(k,j,z,time);
 valKDC(j,z,time,'CPS')      = KDC.l(j,z,time);
 valKS(k,z,time,'CPS')       = KS.l(k,z,time);
 valLD(l,j,z,time,'CPS')     = LD.l(l,j,z,time);
 valLDC(j,z,time,'CPS')      = LDC.l(j,z,time);
 valLS(l,z,time,'CPS')       = LS.l(l,z,time);
 valMRGN(i,z,time,'CPS')     = MRGN.l(i,z,time);
 valP(i,z,time,'CPS')        = P.l(i,z,time);
 valPC(i,z,time,'CPS')       = PC.l(i,z,time);
 valPCI(j,z,time,'CPS')      = PCI.l(j,z,time);
 valPCE(j,z,time,'CPS')      = PCE.l(j,z,time);
 valPD(i,z,time,'CPS')       = PD.l(i,z,time);
 valPE(i,z,zj,time,'CPS')    = PE.l(i,z,zj,time);
 valPET(i,z,time,'CPS')      = PET.l(i,z,time);
 valphi(z,time,'CPS')        = phi.l(z,time);
 valPIXCON(z,time,'CPS')     = PIXCON.l(z,time);
 valPIXGDP(z,time,'CPS')     = PIXGDP.l(z,time);
 valPIXGDP_W(time,'CPS')     = PIXGDP_W.l(time);
 valPIXGVT(z,time,'CPS')     = PIXGVT.l(z,time);
 valPIXINV(z,time,'CPS')     = PIXINV.l(z,time);
 valPK(z,time,'CPS')         = PK.l(z,time);
 valPL(i,z,time,'CPS')       = PL.l(i,z,time);
 valPM(i,zj,z,time,'CPS')    = PM.l(i,zj,z,time);
 valPMT(i,z,time,'CPS')      = PMT.l(i,z,time);
 valPP(j,z,time,'CPS')       = PP.l(j,z,time);
 valPVA(j,Z,time,'CPS')      = PVA.l(j,Z,time);
 valPWM(i,zj,z,time,'CPS')   = PWM.l(i,zj,z,time);
 valPWMG(i,time,'CPS')       = PWMG.l(i,time);
 valPWX(i,z,zj,time,'CPS')   = PWX.l(i,z,zj,time);
 valQ(i,z,time,'CPS')        = Q.l(i,z,time);
 valR(k,j,z,time,'CPS')      = R.l(k,j,z,time);
 valRC(j,z,time,'CPS')       = RC.l(j,z,time);
 valRTI(k,j,z,time,'CPS')    = RTI.l(k,j,z,time);
 valSG(z,time,'CPS')         = SG.l(z,time);
 valSH(z,time,'CPS')         = SH.l(z,time);
 valsh0(z,time,'CPS')        = sh0.l(z,time);
 valsh1(z,time,'CPS')        = sh1.l(z,time);
 valSROW(z,time,'CPS')       = SROW.l(z,time);
 valTDH(z,time,'CPS')        = TDH.l(z,time);
 valTIC(i,z,time,'CPS')      = TIC.l(i,z,time);
 valTICT(z,time,'CPS')       = TICT.l(z,time);
 valTIK(k,j,z,time,'CPS')    = TIK.l(k,j,z,time);
 valTIKT(z,time,'CPS')       = TIKT.l(z,time);
 valTIM(i,zj,z,time,'CPS')   = TIM.l(i,zj,z,time);
 valTIMT(z,time,'CPS')       = TIMT.l(z,time);
 valTIP(j,z,time,'CPS')      = TIP.l(j,z,time);
 valTIPT(z,time,'CPS')       = TIPT.l(z,time);
 valTIW(l,j,z,time,'CPS')    = TIW.l(l,j,z,time);
 valTIWT(z,time,'CPS')       = TIWT.l(z,time);
 valTIX(i,z,zj,time,'CPS')   = TIX.l(i,z,zj,time);
 valTIXT(z,time,'CPS')       = TIXT.l(z,time);
 valTPRCTS(z,time,'CPS')     = TPRCTS.l(z,time);
 valTPRODN(z,time,'CPS')     = TPRODN.l(z,time);
 valttdh0(z,time,'CPS')      = ttdh0.l(z,time);
 valttdh1(z,time,'CPS')      = ttdh1.l(z,time);
 valttic(i,z,time,'CPS')     = ttic.l(i,z,time);
 valttik(k,j,z,time,'CPS')   = ttik.l(k,j,z,time);
 valttim(i,zj,z,time,'CPS')  = ttim.l(i,zj,z,time);
 valttip(j,z,time,'CPS')     = ttip.l(j,z,time);
 valttiw(l,j,z,time,'CPS')   = ttiw.l(l,j,z,time);
 valttix(i,z,zj,time,'CPS')  = ttix.l(i,z,zj,time);
 valU(z,time,'CPS')          = U.l(z,time);
 valVA(j,z,time,'CPS')       = VA.l(j,z,time);
 valKLE(j,z,time,'CPS')      = KLE.l(j,z,time);
 valW(l,z,time,'CPS')        = W.l(l,z,time);
 valWC(j,z,time,'CPS')       = WC.l(j,z,time);
 valWTI(l,j,z,time,'CPS')    = WTI.l(l,j,z,time);
 valXS(j,i,z,time,'CPS')     = XS.l(j,i,z,time);
 valXS_I(i,z,time,'CPS')     = XS_I.l(i,z,time);
 valXST(j,z,time,'CPS')      = XST.l(j,z,time);
 valYDH(z,time,'CPS')        = YDH.l(z,time);
 valYG(z,time,'CPS')         = YG.l(z,time);
 valYH(z,time,'CPS')         = YH.l(z,time);
 valYHK(z,time,'CPS')        = YHK.l(z,time);
 valYHL(z,time,'CPS')        = YHL.l(z,time);
 valYROW(z,time,'CPS')       = YROW.l(z,time);

*=============================== Energy =====================================================================
TREND(z,time) = 1;

 valAEEI(z,time,'CPS')                  = AEEI(z,time);

 valEE(p_coal,j,z,time,'CPS')           =  EEI(p_coal,j,z)*TREND(z,time)*DE.L('02_COAL',j,z,time)*AEEI(z,time);
 valEE(p_oil,j,z,time,'CPS')            =  EEI(p_oil,j,z)*TREND(z,time)*DE.L('03_OIL',j,z,time)*AEEI(z,time);
 valEE(p_gas,j,z,time,'CPS')            =  EEI(p_gas,j,z)*TREND(z,time)*DE.L('04_GAS',j,z,time)*AEEI(z,time);
 valEE(p_oilproduct,j,z,time,'CPS')     =  EEI(p_oilproduct,j,z)*TREND(z,time)*DE.L('10_PETROLCOAL',j,z,time)*AEEI(z,time);
 valEE(p_elecheat,j,z,time,'CPS')       =  EEI(p_elecheat,j,z)*TREND(z,time)*DE.L('18_ELEC',j,z,time)*AEEI(z,time);

 valNE(p_coal,j,z,time,'CPS')           =  NEI(p_coal,j,z)*TREND(z,time)*DE.L('02_COAL',j,z,time)*AEEI(z,time);
 valNE(p_oil,j,z,time,'CPS')            =  NEI(p_oil,j,z)*TREND(z,time)*DE.L('03_OIL',j,z,time)*AEEI(z,time);
 valNE(p_gas,j,z,time,'CPS')            =  NEI(p_gas,j,z)*TREND(z,time)*DE.L('04_GAS',j,z,time)*AEEI(z,time);
 valNE(p_oilproduct,j,z,time,'CPS')     =  NEI(p_oilproduct,j,z)*TREND(z,time)*DE.L('10_PETROLCOAL',j,z,time)*AEEI(z,time);
 valNE(p_elecheat,j,z,time,'CPS')       =  NEI(p_elecheat,j,z)*TREND(z,time)*DE.L('18_ELEC',j,z,time)*AEEI(z,time);

 valEH(p_coal,z,time,'CPS')             =  EHI(p_coal,z)*TREND(z,time)*C.L('02_COAL',z,time)*AEEI(z,time);
 valEH(p_oil,z,time,'CPS')              =  EHI(p_oil,z)*TREND(z,time)*C.L('03_OIL',z,time)*AEEI(z,time);
 valEH(p_gas,z,time,'CPS')              =  EHI(p_gas,z)*TREND(z,time)*C.L('04_GAS',z,time)*AEEI(z,time); 
 valEH(p_oilproduct,z,time,'CPS')       =  EHI(p_oilproduct,z)*TREND(z,time)*C.L('10_PETROLCOAL',z,time)*AEEI(z,time);
 valEH(p_elecheat,z,time,'CPS')         =  EHI(p_elecheat,z)*TREND(z,time)*C.L('18_ELEC',z,time)*AEEI(z,time);

 valTFC_product(product,time,z,'CPS')   = valEH(product,z,time,'CPS') + Sum(j5,valEE(product,j5,z,time,'CPS'))+Sum(j,valNE(product,j,z,time,'CPS'));

 valTFC(time,z,'CPS')                   = sum(product, valEH(product,z,time,'CPS') + Sum(j5,valEE(product,j5,z,time,'CPS'))+Sum(j,valNE(product,j,z,time,'CPS')));
 valNEA_TFC(product,time,'CPS')         = sum(NEA,valEH(product,NEA,time,'CPS')) + Sum((j5,NEA),valEE(product,j5,NEA,time,'CPS'))+Sum((j,NEA),valNE(product,j,NEA,time,'CPS'));
 valKOR_TFC(product,time,'CPS')         = valEH(product,'01_KOR',time,'CPS') + Sum(j5,valEE(product,j5,'01_KOR',time,'CPS'))+Sum(j,valNE(product,j,'01_KOR',time,'CPS'));
 valCHN_TFC(product,time,'CPS')         = valEH(product,'02_CHN',time,'CPS') + Sum(j5,valEE(product,j5,'02_CHN',time,'CPS'))+Sum(j,valNE(product,j,'02_CHN',time,'CPS'));
 valJPN_TFC(product,time,'CPS')         = valEH(product,'03_JPN',time,'CPS') + Sum(j5,valEE(product,j5,'03_JPN',time,'CPS'))+Sum(j,valNE(product,j,'03_JPN',time,'CPS'));

*============================== CO2 ========================================================================
 valCO2I(product,j,z,time,'CPS')        = valEE(product,j,z,time,'CPS')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001*GWP('CO2EF') ;
 valCO2NE(product,j,z,time,'CPS')       = valNE(product,j,z,time,'CPS')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001*GWP('CO2EF')*(1-GHGsEF(product,'Stored_rate')) ;
 valCO2I2(j,z,time,'CPS')               = sum(product,valCO2I(product,j,z,time,'CPS'));
 valCO2NE2(j,z,time,'CPS')              = sum(product,valCO2NE(product,j,z,time,'CPS'));
 valCO2I3(j,z,time,'CPS')               = valCO2I2(j,z,time,'CPS') + valCO2NE2(j,z,time,'CPS') ;
 valTCO2I(z,time,'CPS')                 = sum((product,j),valCO2I(product,j,z,time,'CPS'));
 valTCO2NE(z,time,'CPS')                = sum((product,j),valCO2NE(product,j,z,time,'CPS'));
 valCO2H(product,z,time,'CPS')          = valEH(product,z,time,'CPS')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001*GWP('CO2EF') ;
 valTCO2H(z,time,'CPS')                 = sum((product),valCO2H(product,z,time,'CPS'));
 valTCO2(z,time,'CPS')                  = valTCO2H(z,time,'CPS') + valTCO2I(z,time,'CPS') +valTCO2NE(z,time,'CPS') ;
 valEndo_CO2(ene,j,z,time,'CPS')        = DE.L(ene,j,z,time)*CO2FACTOR2(ene,j,z,time)*10*1000;
 valEndo_TotalCO2(z,time,'CPS')         = sum((ene,j), valEndo_CO2(ene,j,z,time,'CPS'));

*============================== CH4 =======================================================================
 valCH4I(product,j,z,time,'CPS')        = valEE(product,j,z,time,'CPS')*41.868*GHGsEF(product,'CH4EF')/10**6 ;
 valCH4H(product,z,time,'CPS')          = valEH(product,z,time,'CPS')*41.868*GHGsEF(product,'CH4EF')/10**6 ;
 valCH4I2(j,z,time,'CPS')               = sum(product, valCH4I(product,j,z,time,'CPS'));
 valTCH4I(z,time,'CPS')                 = sum(j, valCH4I2(j,z,time,'CPS'));    
 valTCH4H(z,time,'CPS')                 = sum(product,valCH4H(product,z,time,'CPS')); 
 valTCH4(z,time,'CPS')                  = valTCH4I(z,time,'CPS')+ valTCH4H(z,time,'CPS') ; 
 valTCH4_CO2eq(z,time,'CPS')            = valTCH4(z,time,'CPS')*GWP('CH4EF');

*============================== N2O ========================================================================
 valN2OI(product,j,z,time,'CPS')        = valEE(product,j,z,time,'CPS')*41.868*GHGsEF(product,'N2OEF')/10**6 ;
 valN2OH(product,z,time,'CPS')          = valEH(product,z,time,'CPS')*41.868*GHGsEF(product,'N2OEF')/10**6 ;
 valN2OI2(j,z,time,'CPS')               = sum(product, valN2OI(product,j,z,time,'CPS'));
 valTN2OI(z,time,'CPS')                 = sum(j, valN2OI2(j,z,time,'CPS'));    
 valTN2OH(z,time,'CPS')                 = sum(product,valN2OH(product,z,time,'CPS')); 
 valTN2O(z,time,'CPS')                  = valTN2OI(z,time,'CPS')+ valTN2OH(z,time,'CPS') ; 
 valTN2O_CO2eq(z,time,'CPS')            = valTN2O(z,time,'CPS')*GWP('N2OEF');

*============================= Global GHGs emission =============================================
 valGlobal_CO2(time,'CPS')              = sum(z, valTCO2(z,time,'CPS'));
 valGlobal_CH4(time,'CPS')              = sum(z, valTCH4(z,time,'CPS'));
 valGlobal_N2O(time,'CPS')              = sum(z, valTN2O(z,time,'CPS'));
 valGlobal_CO2eq(time,'CPS')            = valGlobal_CO2(time,'CPS')+valGlobal_CH4(time,'CPS')*GWP('CH4EF')+valGlobal_N2O(time,'CPS')*GWP('N2OEF');    

 valGHG('CO2',z,time,'CPS')             = valTCO2(z,time,'CPS');
 valGHG('CH4',z,time,'CPS')             = valTCH4_CO2eq(z,time,'CPS'); 
 valGHG('N2O',z,time,'CPS')             = valTN2O_CO2eq(z,time,'CPS');
 
*============================== Power Generation ============================================
 valPOWER(power,i,z,time,scen)          = XS.l(power,i,z,time);
 valElecGen('19_eNuclear',z,time,'CPS') = DS.l('19_eNuclear','18_ELEC',z,time)*EGINucGWh('19_eNuclear',z); 
 valElecGen('20_eCoal',z,time,'CPS')    = DS.l('20_eCoal','18_ELEC',z,time)*EGICoalGWh('20_eCoal',z); 
 valElecGen('21_eGas',z,time,'CPS')     = DS.l('21_eGas','18_ELEC',z,time)*EGIGasGWh('21_eGas',z); 
 valElecGen('22_eOil',z,time,'CPS')     = DS.l('22_eOil','18_ELEC',z,time)*EGIOilGWh('22_eOil',z); 
 valElecGen('23_eWind',z,time,'CPS')    = DS.l('23_eWind','18_ELEC',z,time)*EGIWindGWh('23_eWind',z); 
 valElecGen('24_eSolar',z,time,'CPS')   = DS.l('24_eSolar','18_ELEC',z,time)*EGISolarGWh('24_eSolar',z); 
 valElecGen('25_eHydro',z,time,'CPS')   = DS.l('25_eHydro','18_ELEC',z,time)*EGIHydroGWh('25_eHydro',z); 
 valElecGen('26_eOther',z,time,'CPS')   = DS.l('26_eOther','18_ELEC',z,time)*EGIOtherGWh('26_eOther',z); 

*============================== Carbon Tax ============================================
 valCTAX(z,time,'CPS') = CTAX.l(z,time) ;

 execute_unload 'Output_w-t\CPS_Results_GTAP11.gdx',
*$Ontext
 valA_VA,
 valC,
 valCAB,
 valCABX,
 valCG,
 valCI,
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
 valKS,
 valLD,
 valLDC,
 valLS,
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
 valYDH,  
 valYG,         
 valYH,        
 valYHK,       
 valYHL,        
 valYROW,
 valEE,
 valNE,
 valEH,
 valTFC_product,
 valTFC,
 valNEA_TFC,
 valKOR_TFC,
 valCHN_TFC,
 valJPN_TFC,
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
 valCH4I,
 valCH4H,
 valCH4I2,
 valTCH4I,    
 valTCH4H,
 valTCH4, 
 valTCH4_CO2eq,
 valN2OI,
 valN2OH,
 valN2OI2,
 valTN2OI,    
 valTN2OH,
 valTN2O, 
 valTN2O_CO2eq,
 valGlobal_CO2,
 valGlobal_CH4,
 valGlobal_N2O,
 valGlobal_CO2eq,
 valGHG,
 valPOWER,
 valElecGen,
 valCTAX,
 valAEEI
 ;
*$Offtext 