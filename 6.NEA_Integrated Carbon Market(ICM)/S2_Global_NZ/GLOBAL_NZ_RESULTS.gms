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
 valCE(j,z,time,scen)        Total intermediate(energy) consumption of industry j in region z
 valCMIN(i,z,time,scen)      Minimum consumption of commodity i by households in region z
 valCTH(z,time,scen)         Consumption budget of households in region z
 valCTH_REAL(z,time,scen)    Real household consumption in region z
 valDD(i,z,time,scen)        Domestic demand for commodity i produced locally in region z
 valDEP(z,time,scen)         Amount of depreciation (capital consumption allowance) in region z
 valDI(i,j,z,time,scen)      Intermediate consumption of commodity i by industry j in region z
 valDE(i,j,z,time,scen)      Intermediate consumption(energy) of commodity i by industry j in region z
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
 valPVA(j,z,time,scen)       Price of industry j value added in region z (including taxes on production directly related to the use of capital and labor)
 valPKLE(j,z,time,scen)      Price of industry j KLE in region z
 valPVAT(BS,Z_GRN,time,scen) Price of industry j value added in region z (including taxes on production directly related to the use of capital and labor)
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
 valYDH(z,time,scen)         Household disposable income in region z
 valYG(z,time,scen)          Total government income in region z
 valYH(z,time,scen)          Household total income in region z
 valYHK(z,time,scen)         Household capital income in region z
 valYHL(z,time,scen)         Household labor income in region z
 valYROW(z,time,scen)        Rest-of-the-world total income from region z
 valLEON(z,time,scen)        Excess supply on the last market in region z
 valPERMIT_TOTAL(z,time,scen) Total emissions
 valPERMIT(j,z,time,scen)
 valCO2FACTOR(ene,j,z,time,scen) CO2 FACTOR
 valEndo_CO2(ene,j,z,time,scen) ktCO2
 valEndo_TotalCO2(z,time,scen)  ktCO2
 valEndo_GlobalTotalCO2(time,scen)  ktCO2
 valY_CTRAD(z,time,scen)
*================== DAC ===========================================================
 valQDAC(z,time,scen)
 valDAC_growth_rate(z,time,scen)
 valDAC_elec(z,time,scen) 
 valswitchDAC(z,time,scen)
 valCTAX(z,time,scen)
 valTCTAX(z,time,scen) 
 valGlobal_CTAX(time,scen)
 
*================== Backstop ===========================================================
 valVAT(BS,Z_GRN,time,scen)
 valPVAT(BS,Z_GRN,time,scen)
 valPTSF(BS,Z_GRN,time,scen)
 valTSFD(BS,Z_GRN,time,scen)
 valTSFS(BS,Z_GRN,time,scen)
 
*================== ToT ===========================================================
 valPX_INDEX(z,time,scen)                  
 valPM_INDEX(z,time,scen)                
 valTOT(z,time,scen)                          

;

*==============================================================================
*   6.2.3.2 Assignment of solution values to result parameters
*==============================================================================
 valA_VA(z,time,'Global_NZ')       = A_VA.l(z,time);
 valC(i,z,time,'Global_NZ')        = C.l(i,z,time);
 valCAB(z,time,'Global_NZ')        = CAB.l(z,time);
 valCABX(z,time,'Global_NZ')       = CABX.l(z,time);
 valCG(i,z,time,'Global_NZ')       = CG.l(i,z,time);
 valCI(j,z,time,'Global_NZ')       = CI.l(j,z,time);
 valCE(j,z,time,'Global_NZ')       = CE.l(j,z,time);
 valCMIN(i,z,time,'Global_NZ')     = CMIN.l(i,z,time);
 valCTH(z,time,'Global_NZ')        = CTH.l(z,time);
 valCTH_REAL(z,time,'Global_NZ')   = CTH_REAL.l(z,time);
 valDD(i,z,time,'Global_NZ')       = DD.l(i,z,time);
 valDEP(z,time,'Global_NZ')        = DEP.l(z,time);
 valDI(i,j,z,time,'Global_NZ')     = DI.l(i,j,z,time);
 valDE(i,j,z,time,'Global_NZ')     = DE.l(i,j,z,time);
 valDIT(i,z,time,'Global_NZ')      = DIT.l(i,z,time);
 valDS(j,i,z,time,'Global_NZ')     = DS.l(j,i,z,time);
 valDS_I(i,z,time,'Global_NZ')     = DS_I.l(i,z,time);
 vale(z,time,'Global_NZ')          = e.l(z,time);
 valEX(i,z,zj,time,'Global_NZ')    = EX.l(i,z,zj,time);
 valEXT(i,z,time,'Global_NZ')      = EXT.l(i,z,time);
 valG(z,time,'Global_NZ')          = G.l(z,time);
 ValG_REAL(z,time,'Global_NZ')     = G_REAL.L(z,time);
 valGDP_BP(z,time,'Global_NZ')     = GDP_BP.l(z,time);
 valGDP_BP_REAL(z,time,'Global_NZ')= GDP_BP_REAL.l(z,time);
 valGDP_BP_W(time,'Global_NZ')     = GDP_BP_W.l(time);
 valGDP_BP_W_REAL(time,'Global_NZ')= GDP_BP_W_REAL.l(time);
 valGDP_FD(z,time,'Global_NZ')     = GDP_FD.l(z,time);
 valGDP_IB(z,time,'Global_NZ')     = GDP_IB.l(z,time);
 valGDP_MP(z,time,'Global_NZ')     = GDP_MP.l(z,time);
 valGDP_MP_REAL(z,time,'Global_NZ')= GDP_MP_REAL.l(z,time);
 valIM(i,zj,z,time,'Global_NZ')    = IM.l(i,zj,z,time);
 valIMT(i,z,time,'Global_NZ')      = IMT.l(i,z,time);
 valIND(k,j,z,time,'Global_NZ')    = IND.l(k,j,z,time);
 valINV(i,z,time,'Global_NZ')      = INV.l(i,z,time);
 valIR(z,time,'Global_NZ')         = IR.l(z,time);
 valIT(z,time,'Global_NZ')         = IT.l(z,time);
 valIT_REAL(z,time,'Global_NZ')    = IT_REAL.l(z,time);
 valKD(k,j,z,time,'Global_NZ')     = KD.l(k,j,z,time);
 valKDC(j,z,time,'Global_NZ')      = KDC.l(j,z,time);
 valKS(k,z,time,'Global_NZ')       = KS.l(k,z,time);
 valLD(j,z,time,'Global_NZ')       = LD.l(j,z,time);
 valLDC(j,z,time,'Global_NZ')      = LDC.l(j,z,time);
 valLS(z,time,'Global_NZ')         = LS.l(z,time);
 valLST(z,time,'Global_NZ')        = LST.l(z,time);
 valMRGN(i,z,time,'Global_NZ')     = MRGN.l(i,z,time);
 valP(i,z,time,'Global_NZ')        = P.l(i,z,time);
 valPC(i,z,time,'Global_NZ')       = PC.l(i,z,time);
 valPCI(j,z,time,'Global_NZ')      = PCI.l(j,z,time);
 valPCE(j,z,time,'Global_NZ')      = PCE.l(j,z,time);
 valPD(i,z,time,'Global_NZ')       = PD.l(i,z,time);
 valPE(i,z,zj,time,'Global_NZ')    = PE.l(i,z,zj,time);
 valPET(i,z,time,'Global_NZ')      = PET.l(i,z,time);
 valphi(z,time,'Global_NZ')        = phi.l(z,time);
 valPIXCON(z,time,'Global_NZ')     = PIXCON.l(z,time);
 valPIXGDP(z,time,'Global_NZ')     = PIXGDP.l(z,time);
 valPIXGDP_W(time,'Global_NZ')     = PIXGDP_W.l(time);
 valPIXGVT(z,time,'Global_NZ')     = PIXGVT.l(z,time);
 valPIXINV(z,time,'Global_NZ')     = PIXINV.l(z,time);
 valPK(z,time,'Global_NZ')         = PK.l(z,time);
 valPL(i,z,time,'Global_NZ')       = PL.l(i,z,time);
 valPM(i,zj,z,time,'Global_NZ')    = PM.l(i,zj,z,time);
 valPMT(i,z,time,'Global_NZ')      = PMT.l(i,z,time);
 valPP(j,z,time,'Global_NZ')       = PP.l(j,z,time);
 valPT(j,z,time,'Global_NZ')       = PT.l(j,z,time);
 valPVA(j,Z,time,'Global_NZ')      = PVA.l(j,Z,time);
 valPVAT(BS, Z_GRN,time,'Global_NZ') = PVAT.l(BS, Z_GRN,time) ;  
 valPKLE(j,z,time,'Global_NZ')     = PKLE.l(j,z,time);
 valPWM(i,zj,z,time,'Global_NZ')   = PWM.l(i,zj,z,time);
 valPWMG(i,time,'Global_NZ')       = PWMG.l(i,time);
 valPWX(i,z,zj,time,'Global_NZ')   = PWX.l(i,z,zj,time);
 valQ(i,z,time,'Global_NZ')        = Q.l(i,z,time);
 valR(k,j,z,time,'Global_NZ')      = R.l(k,j,z,time);
 valRC(j,z,time,'Global_NZ')       = RC.l(j,z,time);
 valRTI(k,j,z,time,'Global_NZ')    = RTI.l(k,j,z,time);
 valSG(z,time,'Global_NZ')         = SG.l(z,time);
 valSH(z,time,'Global_NZ')         = SH.l(z,time);
 valsh0(z,time,'Global_NZ')        = sh0.l(z,time);
 valsh1(z,time,'Global_NZ')        = sh1.l(z,time);
 valSROW(z,time,'Global_NZ')       = SROW.l(z,time);
 valTDH(z,time,'Global_NZ')        = TDH.l(z,time);
 valTIC(i,z,time,'Global_NZ')      = TIC.l(i,z,time);
 valTICT(z,time,'Global_NZ')       = TICT.l(z,time);
 valTIK(k,j,z,time,'Global_NZ')    = TIK.l(k,j,z,time);
 valTIKT(z,time,'Global_NZ')       = TIKT.l(z,time);
 valTIM(i,zj,z,time,'Global_NZ')   = TIM.l(i,zj,z,time);
 valTIMT(z,time,'Global_NZ')       = TIMT.l(z,time);
 valTIP(j,z,time,'Global_NZ')      = TIP.l(j,z,time);
 valTIPT(z,time,'Global_NZ')       = TIPT.l(z,time);
 valTIW(j,z,time,'Global_NZ')      = TIW.l(j,z,time);
 valTIWT(z,time,'Global_NZ')       = TIWT.l(z,time);
 valTIX(i,z,zj,time,'Global_NZ')   = TIX.l(i,z,zj,time);
 valTIXT(z,time,'Global_NZ')       = TIXT.l(z,time);
 valTPRCTS(z,time,'Global_NZ')     = TPRCTS.l(z,time);
 valTPRODN(z,time,'Global_NZ')     = TPRODN.l(z,time);
 valttdh0(z,time,'Global_NZ')      = ttdh0.l(z,time);
 valttdh1(z,time,'Global_NZ')      = ttdh1.l(z,time);
 valttic(i,z,time,'Global_NZ')     = ttic.l(i,z,time);
 valttik(k,j,z,time,'Global_NZ')   = ttik.l(k,j,z,time);
 valttim(i,zj,z,time,'Global_NZ')  = ttim.l(i,zj,z,time);
 valttip(j,z,time,'Global_NZ')     = ttip.l(j,z,time);
 valttiw(j,z,time,'Global_NZ')     = ttiw.l(j,z,time);
 valttix(i,z,zj,time,'Global_NZ')  = ttix.l(i,z,zj,time);
 valU(z,time,'Global_NZ')          = U.l(z,time);
 valVA(j,z,time,'Global_NZ')       = VA.l(j,z,time);
 valKLE(j,z,time,'Global_NZ')      = KLE.l(j,z,time);
 valW(z,time,'Global_NZ')         = W.l(z,time);
 valWC(j,z,time,'Global_NZ')      = WC.l(j,z,time);
 valWTI(j,z,time,'Global_NZ')     = WTI.l(j,z,time);
 valXS(j,i,z,time,'Global_NZ')    = XS.l(j,i,z,time);
 valXS_I(i,z,time,'Global_NZ')    = XS_I.l(i,z,time);
 valXST(j,z,time,'Global_NZ')     = XST.l(j,z,time);
 valYDH(z,time,'Global_NZ')       = YDH.l(z,time);
 valYG(z,time,'Global_NZ')        = YG.l(z,time);
 valYH(z,time,'Global_NZ')        = YH.l(z,time);
 valYHK(z,time,'Global_NZ')       = YHK.l(z,time);
 valYHL(z,time,'Global_NZ')       = YHL.l(z,time);
 valYROW(z,time,'Global_NZ')      = YROW.l(z,time);
 valPERMIT_TOTAL(PERMIT_Z,time,'Global_NZ') = PERMIT_TOTAL.l(PERMIT_Z,time);
 valPERMIT(j,z,time,'Global_NZ')     = PERMIT.l(j,z,time);
 valCO2FACTOR(ene,j,z,time,'Global_NZ') = CO2FACTOR2(ene,j,z,time);
 valLEON(z,time,'Global_NZ') = LEON.l(z,time);
 valEndo_CO2(ene,j,z,time,'Global_NZ')        = DE.L(ene,j,z,time)*CO2FACTOR2(ene,j,z,time)*10*1000;
 valEndo_TotalCO2(z,time,'Global_NZ')         = sum((ene,j), valEndo_CO2(ene,j,z,time,'Global_NZ'));
 valEndo_GlobalTotalCO2(time,'Global_NZ')     = sum(z,valEndo_TotalCO2(z,time,'Global_NZ'));
 valY_CTRAD(z,time,'Global_NZ') = (NEW_PERMIT_CAP_VAR.L(z,time) - PERMIT_TOTAL.L(z,time)) * GLOBAL_CTAX.L(time);
*=================== Carbon Tax ============================================
 valCTAX(z,time,'Global_NZ') = CTAX.l(z,time) ;
 valTCTAX(z,time,'Global_NZ') = TCTAX.l(z,time) ;
 valGlobal_CTAX(time,'Global_NZ') = Global_CTAX.l(time);

*==================== DAC================================================
 valQDAC(z,time,'Global_NZ') = QDAC.l(z,time);
 valDAC_growth_rate(z,time,'Global_NZ')  = DAC_growth_rate(z,time);
 valDAC_elec(z,time,'Global_NZ') = QDAC.l(z,time)*DAC_Tech_Coeff('18_ELEC') ;
 valswitchDAC(z,time,'Global_NZ') = switchDAC(z,time);

*================== Backstop ===============================================
 valVAT(BS,Z_GRN,time,'Global_NZ') = VAT.L(BS,Z_GRN,time) ;
 valPVAT(BS,Z_GRN,time,'Global_NZ')  = PVAT.L(BS,Z_GRN,time) ;
 valPTSF(BS,Z_GRN,time,'Global_NZ')  = PTSF.L(BS,Z_GRN,time) ;
 valTSFD(BS,Z_GRN,time,'Global_NZ') = TSFD.L(BS,Z_GRN,time) ;
 valTSFS(BS,Z_GRN,time,'Global_NZ')  = TSFS(BS,Z_GRN,time) ;

*================== ToT ===========================================================
 valPX_INDEX(z,time,'Global_NZ')     =  PX_INDEX.L(z,time)  ;                
 valPM_INDEX(z,time,'Global_NZ')    =  PM_INDEX.L(z,time)  ;            
 valTOT(z,time,'Global_NZ')             =  TOT.L(z,time)  ;
 
 execute_unload 'Output_CGE\S2_Global_NZ.gdx',
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
 valKS,
 valLD,
 valLDC,
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
 valPVAT,
 valPKLE,
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
 valYDH,  
 valYG,         
 valYH,        
 valYHK,       
 valYHL,        
 valYROW,
 valEndo_CO2,
 valEndo_TotalCO2,
 valEndo_GlobalTotalCO2,
 valGlobal_CTAX,
 valCTAX,
 valTCTAX,
 valPERMIT,
 valPERMIT_TOTAL,
 valQDAC,
 valDAC_growth_rate,
 valDAC_elec,
 valswitchDAC,
 valCO2FACTOR,
 valLEON,
 valVAT,
 valPVAT,
 valPTSF,
 valTSFD,
 valTSFS,
 valPX_INDEX,        
 valPM_INDEX,     
 valTOT,
 valY_CTRAD
 ;
