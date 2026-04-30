*==============================================================================
* Assignment of solution values to result parameters
*==============================================================================

* --- 1. Macroeconomics & National Accounts ---
 valGDP_BP(z,time,'%CurrentSce%')            = GDP_BP.l(z,time);
 valGDP_BP_REAL(z,time,'%CurrentSce%')       = GDP_BP_REAL.l(z,time);
 valGDP_BP_W(time,'%CurrentSce%')            = GDP_BP_W.l(time);
 valGDP_BP_W_REAL(time,'%CurrentSce%')       = GDP_BP_W_REAL.l(time);
 valGDP_FD(z,time,'%CurrentSce%')            = GDP_FD.l(z,time);
 valGDP_IB(z,time,'%CurrentSce%')            = GDP_IB.l(z,time);
 valGDP_MP(z,time,'%CurrentSce%')            = GDP_MP.l(z,time);
 valGDP_MP_REAL(z,time,'%CurrentSce%')       = GDP_MP_REAL.l(z,time);
 valC(i,z,time,'%CurrentSce%')               = C.l(i,z,time);
 valCG(i,z,time,'%CurrentSce%')              = CG.l(i,z,time);
 valCTH(z,time,'%CurrentSce%')               = CTH.l(z,time);
 valCTH_REAL(z,time,'%CurrentSce%')          = CTH_REAL.l(z,time);
 valCMIN(i,z,time,'%CurrentSce%')            = CMIN.l(i,z,time);
 valG(z,time,'%CurrentSce%')                 = G.l(z,time);
 valG_REAL(z,time,'%CurrentSce%')            = G_REAL.l(z,time);
 valINV(i,z,time,'%CurrentSce%')             = INV.l(i,z,time);
 valIT(z,time,'%CurrentSce%')                = IT.l(z,time);
 valIT_REAL(z,time,'%CurrentSce%')           = IT_REAL.l(z,time);
 valCAB(z,time,'%CurrentSce%')               = CAB.l(z,time);
 valCABX(z,time,'%CurrentSce%')              = CABX.l(z,time);
 valSG(z,time,'%CurrentSce%')                = SG.l(z,time);
 valSH(z,time,'%CurrentSce%')                = SH.l(z,time);
 valsh0(z,time,'%CurrentSce%')               = sh0.l(z,time);
 valsh1(z,time,'%CurrentSce%')               = sh1.l(z,time);
 valSROW(z,time,'%CurrentSce%')              = SROW.l(z,time);

* --- 2. Trade, Margins & Exchange Rates ---
 valEX(i,z,zj,time,'%CurrentSce%')           = EX.l(i,z,zj,time);
 valEXT(i,z,time,'%CurrentSce%')             = EXT.l(i,z,time);
 valIM(i,zj,z,time,'%CurrentSce%')           = IM.l(i,zj,z,time);
 valIMT(i,z,time,'%CurrentSce%')             = IMT.l(i,z,time);
 valMRGN(i,z,time,'%CurrentSce%')            = MRGN.l(i,z,time);
 vale(z,time,'%CurrentSce%')                 = e.l(z,time);

* --- 3. Prices, Taxes & Subsidies ---
 valP(i,z,time,'%CurrentSce%')               = P.l(i,z,time);
 valPC(i,z,time,'%CurrentSce%')              = PC.l(i,z,time);
 valPCI(j,z,time,'%CurrentSce%')             = PCI.l(j,z,time);
 valPCE(j,z,time,'%CurrentSce%')             = PCE.l(j,z,time);
 valPD(i,z,time,'%CurrentSce%')              = PD.l(i,z,time);
 valPE(i,z,zj,time,'%CurrentSce%')           = PE.l(i,z,zj,time);
 valPET(i,z,time,'%CurrentSce%')             = PET.l(i,z,time);
 valPIXCON(z,time,'%CurrentSce%')            = PIXCON.l(z,time);
 valPIXGDP(z,time,'%CurrentSce%')            = PIXGDP.l(z,time);
 valPIXGDP_W(time,'%CurrentSce%')            = PIXGDP_W.l(time);
 valPIXGVT(z,time,'%CurrentSce%')            = PIXGVT.l(z,time);
 valPIXINV(z,time,'%CurrentSce%')            = PIXINV.l(z,time);
 valPK(z,time,'%CurrentSce%')                = PK.l(z,time);
 valPL(i,z,time,'%CurrentSce%')              = PL.l(i,z,time);
 valPM(i,zj,z,time,'%CurrentSce%')           = PM.l(i,zj,z,time);
 valPMT(i,z,time,'%CurrentSce%')             = PMT.l(i,z,time);
 valPP(j,z,time,'%CurrentSce%')              = PP.l(j,z,time);
 valPT(j,z,time,'%CurrentSce%')              = PT.l(j,z,time);
 valPVA(j,z,time,'%CurrentSce%')             = PVA.l(j,z,time);
 valPWM(i,zj,z,time,'%CurrentSce%')          = PWM.l(i,zj,z,time);
 valPWMG(i,time,'%CurrentSce%')              = PWMG.l(i,time);
 valPWX(i,z,zj,time,'%CurrentSce%')          = PWX.l(i,z,zj,time);
 valPX_INDEX(z,time,'%CurrentSce%')          = PX_INDEX.l(z,time);
 valPM_INDEX(z,time,'%CurrentSce%')          = PM_INDEX.l(z,time);
 valTOT(z,time,'%CurrentSce%')               = TOT.l(z,time);
 valTDH(z,time,'%CurrentSce%')               = TDH.l(z,time);
 valTIC(i,z,time,'%CurrentSce%')             = TIC.l(i,z,time);
 valTICT(z,time,'%CurrentSce%')              = TICT.l(z,time);
 valTIK(k,j,z,time,'%CurrentSce%')           = TIK.l(k,j,z,time);
 valTIKT(z,time,'%CurrentSce%')              = TIKT.l(z,time);
 valTIM(i,zj,z,time,'%CurrentSce%')          = TIM.l(i,zj,z,time);
 valTIMT(z,time,'%CurrentSce%')              = TIMT.l(z,time);
 valTIP(j,z,time,'%CurrentSce%')             = TIP.l(j,z,time);
 valTIPT(z,time,'%CurrentSce%')              = TIPT.l(z,time);
 valTIW(j,z,time,'%CurrentSce%')             = TIW.l(j,z,time);
 valTIWT(z,time,'%CurrentSce%')              = TIWT.l(z,time);
 valTIX(i,z,zj,time,'%CurrentSce%')          = TIX.l(i,z,zj,time);
 valTIXT(z,time,'%CurrentSce%')              = TIXT.l(z,time);
 valTPRCTS(z,time,'%CurrentSce%')            = TPRCTS.l(z,time);
 valTPRODN(z,time,'%CurrentSce%')            = TPRODN.l(z,time);
 valttdh0(z,time,'%CurrentSce%')             = ttdh0.l(z,time);
 valttdh1(z,time,'%CurrentSce%')             = ttdh1.l(z,time);
 valttic(i,z,time,'%CurrentSce%')            = ttic.l(i,z,time);
 valttik(k,j,z,time,'%CurrentSce%')          = ttik.l(k,j,z,time);
 valttim(i,zj,z,time,'%CurrentSce%')         = ttim.l(i,zj,z,time);
 valttip(j,z,time,'%CurrentSce%')            = ttip.l(j,z,time);
 valttiw(j,z,time,'%CurrentSce%')            = ttiw.l(j,z,time);
 valttix(i,z,zj,time,'%CurrentSce%')         = ttix.l(i,z,zj,time);

* --- 4. Factor Markets, Production & Income ---
 valA_VA(z,time,'%CurrentSce%')              = A_VA.l(z,time);
 valVA(j,z,time,'%CurrentSce%')              = VA.l(j,z,time);
 valKLE(j,z,time,'%CurrentSce%')             = KLE.l(j,z,time);
 valXS(j,i,z,time,'%CurrentSce%')            = XS.l(j,i,z,time);
 valXS_I(i,z,time,'%CurrentSce%')            = XS_I.l(i,z,time);
 valXST(j,z,time,'%CurrentSce%')             = XST.l(j,z,time);
 valCI(j,z,time,'%CurrentSce%')              = CI.l(j,z,time);
 valDD(i,z,time,'%CurrentSce%')              = DD.l(i,z,time);
 valDI(i,j,z,time,'%CurrentSce%')            = DI.l(i,j,z,time);
 valDIT(i,z,time,'%CurrentSce%')             = DIT.l(i,z,time);
 valDS(j,i,z,time,'%CurrentSce%')            = DS.l(j,i,z,time);
 valDS_I(i,z,time,'%CurrentSce%')            = DS_I.l(i,z,time);
 valQ(i,z,time,'%CurrentSce%')               = Q.l(i,z,time);
 valIND(k,j,z,time,'%CurrentSce%')           = IND.l(k,j,z,time);
 valDEP(z,time,'%CurrentSce%')               = DEP.l(z,time);
 valIR(z,time,'%CurrentSce%')                = IR.l(z,time);
 valKD(k,j,z,time,'%CurrentSce%')            = KD.l(k,j,z,time);
 valKDC(j,z,time,'%CurrentSce%')             = KDC.l(j,z,time);
 valKS(k,z,time,'%CurrentSce%')              = KS.l(k,z,time);
 valLD(j,z,time,'%CurrentSce%')              = LD.l(j,z,time);
 valLDC(j,z,time,'%CurrentSce%')             = LDC.l(j,z,time);
 valLS(z,time,'%CurrentSce%')                = LS.l(z,time);
 valLST(z,time,'%CurrentSce%')               = LST.l(z,time);
 valphi(z,time,'%CurrentSce%')               = phi.l(z,time);
 valR(k,j,z,time,'%CurrentSce%')             = R.l(k,j,z,time);
 valRC(j,z,time,'%CurrentSce%')              = RC.l(j,z,time);
 valRTI(k,j,z,time,'%CurrentSce%')           = RTI.l(k,j,z,time);
 valU(z,time,'%CurrentSce%')                 = U.l(z,time);
 valW(z,time,'%CurrentSce%')                 = W.l(z,time);
 valWC(j,z,time,'%CurrentSce%')              = WC.l(j,z,time);
 valWTI(j,z,time,'%CurrentSce%')             = WTI.l(j,z,time);
 valYDH(z,time,'%CurrentSce%')               = YDH.l(z,time);
 valYG(z,time,'%CurrentSce%')                = YG.l(z,time);
 valYH(z,time,'%CurrentSce%')                = YH.l(z,time);
 valYHK(z,time,'%CurrentSce%')               = YHK.l(z,time);
 valYHL(z,time,'%CurrentSce%')               = YHL.l(z,time);
 valYROW(z,time,'%CurrentSce%')              = YROW.l(z,time);
 valLEON(z,time,'%CurrentSce%')              = LEON.l(z,time);

* --- 5. Energy Demand & Supply ---
 valCE(j,z,time,'%CurrentSce%')              = CE.l(j,z,time);
 valDE(i,j,z,time,'%CurrentSce%')            = DE.l(i,j,z,time);
 valAEEI(z,time,'%CurrentSce%')              = AEEI(z,time);

 valEE(p_coal,j,z,time,'%CurrentSce%')       = EEI(p_coal,j,z)*DE.L('02_COAL',j,z,time);
 valEE(p_oil,j,z,time,'%CurrentSce%')        = EEI(p_oil,j,z)*DE.L('03_OIL',j,z,time);
 valEE(p_gas,j,z,time,'%CurrentSce%')        = EEI(p_gas,j,z)*DE.L('04_GAS',j,z,time);
 valEE(p_oilproduct,j,z,time,'%CurrentSce%') = EEI(p_oilproduct,j,z)*DE.L('10_PETROLCOAL',j,z,time);
 valEE(p_elecheat,j,z,time,'%CurrentSce%')   = EEI(p_elecheat,j,z)*DE.L('18_ELEC',j,z,time);
 valEE(p_waste,j,z,time,'%CurrentSce%')      = EEI(p_waste,j,z)*valXST(j,z,time,'%CurrentSce%');
 valEE(p_bio,j,z,time,'%CurrentSce%')        = EEI(p_bio,j,z)*valXST(j,z,time,'%CurrentSce%') ;
 valEE(p_charcoal,j,z,time,'%CurrentSce%')   = EEI(p_charcoal,j,z)*valXST(j,z,time,'%CurrentSce%');
 valEE(p_ren,j,z,time,'%CurrentSce%')      = EEI(p_ren,j,z)*valXST(j,z,time,'%CurrentSce%');

 valNE(p_coal,j,z,time,'%CurrentSce%')       = NEI(p_coal,j,z)*DE.L('02_COAL',j,z,time);
 valNE(p_oil,j,z,time,'%CurrentSce%')        = NEI(p_oil,j,z)*DE.L('03_OIL',j,z,time);
 valNE(p_gas,j,z,time,'%CurrentSce%')        = NEI(p_gas,j,z)*DE.L('04_GAS',j,z,time);
 valNE(p_oilproduct,j,z,time,'%CurrentSce%') = NEI(p_oilproduct,j,z)*DE.L('10_PETROLCOAL',j,z,time);
 valNE(p_elecheat,j,z,time,'%CurrentSce%')   = NEI(p_elecheat,j,z)*DE.L('18_ELEC',j,z,time);
 
 valEH(p_coal,z,time,'%CurrentSce%')         = EHI(p_coal,z)*C.L('02_COAL',z,time);
 valEH(p_oil,z,time,'%CurrentSce%')          = EHI(p_oil,z)*C.L('03_OIL',z,time);
 valEH(p_gas,z,time,'%CurrentSce%')          = EHI(p_gas,z)*C.L('04_GAS',z,time); 
 valEH(p_oilproduct,z,time,'%CurrentSce%')   = EHI(p_oilproduct,z)*C.L('10_PETROLCOAL',z,time);
 valEH(p_elecheat,z,time,'%CurrentSce%')     = EHI(p_elecheat,z)*C.L('18_ELEC',z,time);
 valEH(p_waste,z,time,'%CurrentSce%')        = EHI(p_waste,z)*TOT_POP(z,time);
 valEH(p_bio,z,time,'%CurrentSce%')          = EHI(p_bio,z)*TOT_POP(z,time) ;
 valEH(p_charcoal,z,time,'%CurrentSce%')     = EHI(p_charcoal,z)*TOT_POP(z,time) ;
 valEH(p_ren,z,time,'%CurrentSce%')        = EHI(p_ren,z)*TOT_POP(z,time) ;

 valTFC_product(product,time,z,'%CurrentSce%') = valEH(product,z,time,'%CurrentSce%') + Sum(j4,valEE(product,j4,z,time,'%CurrentSce%')) + Sum(j,valNE(product,j,z,time,'%CurrentSce%'));
 valTFC(time,z,'%CurrentSce%')                 = sum(product, valEH(product,z,time,'%CurrentSce%') + Sum(j4,valEE(product,j4,z,time,'%CurrentSce%'))+ Sum(j,valNE(product,j,z,time,'%CurrentSce%')));

* valTES_coal(z,time,'%CurrentSce%')          = sum(p_coal,TES_coal(p_coal_TES,z)) * (valQ('02_COAL',z,time,'%CurrentSce%')/valQ('02_COAL',z,'2019','%CurrentSce%')); 
* valTES_oil(z,time,'%CurrentSce%')           = sum(p_oil,TES_oil(p_oil,z)) * (valQ('03_OIL',z,time,'%CurrentSce%')/valQ('03_OIL',z,'2019','%CurrentSce%')); 
* valTES_gas(z,time,'%CurrentSce%')           = sum(p_gas,TES_gas(p_gas,z)) * (valQ('04_GAS',z,time,'%CurrentSce%')/valQ('04_GAS',z,'2019','%CurrentSce%')); 
* valTES(z,time,'%CurrentSce%')               = valTES_coal(z,time,'%CurrentSce%') + valTES_oil(z,time,'%CurrentSce%') + valTES_gas(z,time,'%CurrentSce%') ; 

 valMarinebunker(product,z,time,'%CurrentSce%')   = (valMRGN('21_WTRP',z,time,'%CurrentSce%')/valMRGN('21_WTRP',z,'2019','%CurrentSce%')) * Marinebunker(product,z); 
 valAviationbunker(product,z,time,'%CurrentSce%') = (valMRGN('21_WTRP',z,time,'%CurrentSce%')/valMRGN('21_WTRP',z,'2019','%CurrentSce%')) * Aviationbunker(product,z); 

* --- 6. Emissions & Climate Policy (CO2, CH4, N2O, F-gases) ---
 valCO2FACTOR(ene,j,z,time,'%CurrentSce%')   = CO2FACTOR2(ene,j,z,time);
 valCTAX(z,time,'%CurrentSce%')              = CTAX.l(z,time) ;
 valTCTAX(z,time,'%CurrentSce%')             = TCTAX.l(z,time) ;
 valPERMIT_TOTAL(PERMIT_Z,time,'%CurrentSce%') = PERMIT_TOTAL.l(PERMIT_Z,time);

 valCO2I(product,j,z,time,'%CurrentSce%')    = valEE(product,j,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001 ;
 valCO2NE(product,j,z,time,'%CurrentSce%')   = valNE(product,j,z,time,'%CurrentSce%')*(1-GHGsEF(product,'Stored_rate'))*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001 ;
 valCO2I2(j,z,time,'%CurrentSce%')           = sum(product,valCO2I(product,j,z,time,'%CurrentSce%'));
 valCO2NE2(j,z,time,'%CurrentSce%')          = sum(product,valCO2NE(product,j,z,time,'%CurrentSce%'));
 valCO2I3(j,z,time,'%CurrentSce%')           = valCO2I2(j,z,time,'%CurrentSce%') + valCO2NE2(j,z,time,'%CurrentSce%') ;
 valTCO2I(z,time,'%CurrentSce%')             = sum((product,j),valCO2I(product,j,z,time,'%CurrentSce%'));
 valTCO2NE(z,time,'%CurrentSce%')            = sum((product,j),valCO2NE(product,j,z,time,'%CurrentSce%'));
 valCO2H(product,z,time,'%CurrentSce%')      = valEH(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001 ;
 valTCO2H(z,time,'%CurrentSce%')             = sum((product),valCO2H(product,z,time,'%CurrentSce%'));
 valTCO2(z,time,'%CurrentSce%')              = valTCO2H(z,time,'%CurrentSce%') + valTCO2I(z,time,'%CurrentSce%') +valTCO2NE(z,time,'%CurrentSce%') ;

 valEndo_CO2(ene,j,z,time,'%CurrentSce%')    = DE.L(ene,j,z,time)*CO2FACTOR2(ene,j,z,time)*10*1000;
 valEndo_CO2IND(ene,j,z,time,'%CurrentSce%') = (DE.L(ene,j,z,time)*CO2FACTOR2(ene,j,z,time));
 valEndo_CO2HH(ene,z,time,'%CurrentSce%')    = (C.L(ene,z,time)*CO2FACTORHH(ene,z,time));
 valEndo_TotalCO2(z,time,'%CurrentSce%')     = ((sum((ene,j),valEndo_CO2IND(ene,j,z,time,'%CurrentSce%')) + sum(ene, valEndo_CO2HH(ene,z,time,'%CurrentSce%')))/10)*100;

 valCO2I2_FUELCOMB(j,z,time,'%CurrentSce%')  = sum(p_fuelcomb,valCO2I(p_fuelcomb,j,z,time,'%CurrentSce%'));
 valTCO2H_FUELCOMB(z,time,'%CurrentSce%')    = sum((p_fuelcomb),valCO2H(p_fuelcomb,z,time,'%CurrentSce%'));
 valTCO2I_FUELCOMB(z,time,'%CurrentSce%')    = sum((p_fuelcomb,j),valCO2I(p_fuelcomb,j,z,time,'%CurrentSce%'));
 valTCO2NE_FUELCOMB(z,time,'%CurrentSce%')   = sum((p_fuelcomb,j),valCO2NE(p_fuelcomb,j,z,time,'%CurrentSce%'));
 valTCO2_FUELCOMB(z,time,'%CurrentSce%')     = valTCO2H_FUELCOMB(z,time,'%CurrentSce%') + valTCO2I_FUELCOMB(z,time,'%CurrentSce%') +valTCO2NE_FUELCOMB(z,time,'%CurrentSce%') ;

 valCO2_Marine(product,z,time,'%CurrentSce%')   = valMarinebunker(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001 ;
 valTCO2_Marine(z,time,'%CurrentSce%')          = sum(product, valCO2_Marine(product,z,time,'%CurrentSce%')) ;
 valCO2_Aviation(product,z,time,'%CurrentSce%') = valAviationbunker(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CO2EF')*1*(44/12)*0.001;
 valTCO2_Aviation(z,time,'%CurrentSce%')        = sum((product),valCO2_Aviation(product,z,time,'%CurrentSce%'));

* ====== CH4 ======
 valCH4I(product,Energy,z,time,'%CurrentSce%')   = valEE(product,Energy,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_Energy')/10**6*GWP_CH4 ;
 valCH4I(product,IndCon,z,time,'%CurrentSce%')   = valEE(product,IndCon,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_Industry')/10**6*GWP_CH4 ;
 valCH4I(product,Roadrail,z,time,'%CurrentSce%') = valEE(product,Roadrail,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_LTRP')/10**6*GWP_CH4 ;
 valCH4I(product,Air,z,time,'%CurrentSce%')      = valEE(product,Air,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_ATRP')/10**6*GWP_CH4 ;
 valCH4I(product,Water,z,time,'%CurrentSce%')    = valEE(product,Water,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_WTRP')/10**6*GWP_CH4 ;
 valCH4I(product,Other,z,time,'%CurrentSce%')    = valEE(product,Other,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_Other')/10**6*GWP_CH4 ;
 valCH4H(product,z,time,'%CurrentSce%')          = valEH(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_Other')/10**6*GWP_CH4 ;

 valCH4I2(j,z,time,'%CurrentSce%')               = sum(product,valCH4I(product,j,z,time,'%CurrentSce%'));
 valCH4I3(j,z,time,'%CurrentSce%')               = valCH4I2(j,z,time,'%CurrentSce%') ;
 valTCH4I(z,time,'%CurrentSce%')                 = sum((product,j),valCH4I(product,j,z,time,'%CurrentSce%'));
 valTCH4H(z,time,'%CurrentSce%')                 = sum((product),valCH4H(product,z,time,'%CurrentSce%'));
 valTCH4(z,time,'%CurrentSce%')                  = valTCH4H(z,time,'%CurrentSce%') + valTCH4I(z,time,'%CurrentSce%') ;

 valCH4_Marine(product,z,time,'%CurrentSce%')    = valMarinebunker(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_WTRP')/10**6*GWP_CH4 ;
 valCH4_Aviation(product,z,time,'%CurrentSce%')  = valAviationbunker(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'CH4EF_ATRP')/10**6*GWP_CH4 ;
 valTCH4_Marine(z,time,'%CurrentSce%')           = sum((product),valCH4_Marine(product,z,time,'%CurrentSce%'));
 valTCH4_Aviation(z,time,'%CurrentSce%')         = sum((product),valCH4_Aviation(product,z,time,'%CurrentSce%'));

* ====== N2O ======
 valN2OI(product,Energy,z,time,'%CurrentSce%')   = valEE(product,Energy,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_Energy')/10**6*GWP_N2O ;
 valN2OI(product,IndCon,z,time,'%CurrentSce%')   = valEE(product,IndCon,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_Industry')/10**6*GWP_N2O ;
 valN2OI(product,Roadrail,z,time,'%CurrentSce%') = valEE(product,Roadrail,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_LTRP')/10**6*GWP_N2O ;
 valN2OI(product,Air,z,time,'%CurrentSce%')      = valEE(product,Air,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_ATRP')/10**6*GWP_N2O ;
 valN2OI(product,Water,z,time,'%CurrentSce%')    = valEE(product,Water,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_WTRP')/10**6*GWP_N2O ;
 valN2OI(product,Other,z,time,'%CurrentSce%')    = valEE(product,Other,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_Other')/10**6*GWP_N2O ;
 valN2OH(product,z,time,'%CurrentSce%')          = valEH(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_Other')/10**6*GWP_N2O ;

 valN2OI2(j,z,time,'%CurrentSce%')               = sum(product,valN2OI(product,j,z,time,'%CurrentSce%'));
 valN2OI3(j,z,time,'%CurrentSce%')               = valN2OI2(j,z,time,'%CurrentSce%') ;
 valTN2OI(z,time,'%CurrentSce%')                 = sum((product,j),valN2OI(product,j,z,time,'%CurrentSce%'));
 valTN2OH(z,time,'%CurrentSce%')                 = sum((product),valN2OH(product,z,time,'%CurrentSce%'));
 valTN2O(z,time,'%CurrentSce%')                  = valTN2OH(z,time,'%CurrentSce%') + valTN2OI(z,time,'%CurrentSce%') ;

 valN2O_Marine(product,z,time,'%CurrentSce%')    = valMarinebunker(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_WTRP')/10**6*GWP_N2O ;
 valN2O_Aviation(product,z,time,'%CurrentSce%')  = valAviationbunker(product,z,time,'%CurrentSce%')*41.868*GHGsEF(product,'N2OEF_ATRP')/10**6*GWP_N2O ;
 valTN2O_Marine(z,time,'%CurrentSce%')           = sum((product),valN2O_Marine(product,z,time,'%CurrentSce%'));
 valTN2O_Aviation(z,time,'%CurrentSce%')         = sum((product),valN2O_Aviation(product,z,time,'%CurrentSce%'));

* ====== Global GHGs ======
 valGlobal_CO2(time,'%CurrentSce%')              = sum(z, valTCO2(z,time,'%CurrentSce%')+valTCO2_Aviation(z,time,'%CurrentSce%')+valTCO2_Marine(z,time,'%CurrentSce%')) ;
 valGlobal_CH4(time,'%CurrentSce%')              = sum(z, valTCH4(z,time,'%CurrentSce%')+valTCH4_Aviation(z,time,'%CurrentSce%')+valTCH4_Marine(z,time,'%CurrentSce%')) ;
 valGlobal_N2O(time,'%CurrentSce%')              = sum(z, valTN2O(z,time,'%CurrentSce%')+valTN2O_Aviation(z,time,'%CurrentSce%')+valTN2O_Marine(z,time,'%CurrentSce%')) ;

* --- 7. Tech Specific Factors & DAC ---
 valQDAC(z,time,'%CurrentSce%')                  = QDAC.l(z,time);
 valDAC_growth_rate(z,time,'%CurrentSce%')       = DAC_growth_rate(z,time);
 valDAC_elec(z,time,'%CurrentSce%')              = QDAC.l(z,time)*DAC_Tech_Coeff('18_ELEC') ;
 valswitchDAC(z,time,'%CurrentSce%')             = switchDAC(z,time);
 valVAT(BS,Z_GRN,time,'%CurrentSce%')            = VAT.l(BS,Z_GRN,time) ;
 valPVAT(BS,Z_GRN,time,'%CurrentSce%')           = PVAT.l(BS,Z_GRN,time) ;
 valPTSF(BS,Z_GRN,time,'%CurrentSce%')           = PTSF.l(BS,Z_GRN,time) ;
 valTSFD(BS,Z_GRN,time,'%CurrentSce%')           = TSFD.l(BS,Z_GRN,time) ;
 valTSFS(BS,Z_GRN,time,'%CurrentSce%')           = TSFS(BS,Z_GRN,time) ;

* --- 8. Power Generation (Commented Out for Now) ---
* valPOWER(power,i,z,time,'%CurrentSce%')          = XS.l(power,i,z,time);
* valElecGen('Nuclear',z,time,'%CurrentSce%')      = XS.l('19_eNuclear','18_ELEC',z,time)*EGINucGWh('19_eNuclear',z); 
* valElecGen('Coal',z,time,'%CurrentSce%')         = XS.l('20_eCoal','18_ELEC',z,time)*EGICoalGWh('20_eCoal',z); 
* valElecGen('Gas',z,time,'%CurrentSce%')          = XS.l('21_eGas','18_ELEC',z,time)*EGIGasGWh('21_eGas',z); 
* valElecGen('Oil',z,time,'%CurrentSce%')          = XS.l('22_eOil','18_ELEC',z,time)*EGIOilGWh('22_eOil',z); 
* valElecGen('Wind',z,time,'%CurrentSce%')         = XS.l('23_eWind','18_ELEC',z,time)*EGIWindGWh('23_eWind',z); 
* valElecGen('Solar',z,time,'%CurrentSce%')        = XS.l('24_eSolar','18_ELEC',z,time)*EGISolarGWh('24_eSolar',z); 
* valElecGen('Hydro',z,time,'%CurrentSce%')        = XS.l('25_eHydro','18_ELEC',z,time)*EGIHydroGWh('25_eHydro',z); 
* valElecGen('Waste',z,time,'%CurrentSce%')        = XS.l('26_eOther','18_ELEC',z,time)*EGIWasteGWh('26_eOther',z); 
* valElecGen('Bio',z,time,'%CurrentSce%')          = XS.l('26_eOther','18_ELEC',z,time)*EGIBioGWh('26_eOther',z); 
* valElecGen('Geothermal',z,time,'%CurrentSce%')   = XS.l('26_eOther','18_ELEC',z,time)*EGIGeoGWh('26_eOther',z); 
* valElecGen('Other',z,time,'%CurrentSce%')        = XS.l('26_eOther','18_ELEC',z,time)*EGIOtherGWh('26_eOther',z); 
* valElecGen('Total',z,time,'%CurrentSce%')        = valElecGen('Nuclear',z,time,'%CurrentSce%') + valElecGen('Coal',z,time,'%CurrentSce%')+ valElecGen('Gas',z,time,'%CurrentSce%') + valElecGen('Oil',z,time,'%CurrentSce%') + valElecGen('Wind',z,time,'%CurrentSce%')+ valElecGen('Solar',z,time,'%CurrentSce%') + valElecGen('Hydro',z,time,'%CurrentSce%') + valElecGen('Waste',z,time,'%CurrentSce%')+ valElecGen('Bio',z,time,'%CurrentSce%') + valElecGen('Geothermal',z,time,'%CurrentSce%') + valElecGen('Other',z,time,'%CurrentSce%') ;  

*==============================================================================
* GDX Export (Forward Slash '/' used, and ALL Variables added)
*==============================================================================
execute_unload 'Output_CGE/PRIM_%CurrentSce%.gdx',
 valA_VA, valC, valCAB, valCABX, valCG, valCI, valCE, valCMIN, valCTH, valCTH_REAL, 
 valDD, valDEP, valDI, valDE, valDIT, valDS, valDS_I, vale, valEX, valEXT, 
 valG, valG_REAL, valGDP_BP, valGDP_BP_REAL, valGDP_BP_W, valGDP_BP_W_REAL, 
 valGDP_FD, valGDP_IB, valGDP_MP, valGDP_MP_REAL, valIM, valIMT, valIND, valINV, 
 valIR, valIT, valIT_REAL, valKD, valKDC, valKS, valLD, valLDC, valLS, valLST, 
 valMRGN, valP, valPC, valPCI, valPCE, valPD, valPE, valPET, valphi, valPIXCON, 
 valPIXGDP, valPIXGDP_W, valPIXGVT, valPIXINV, valPK, valPL, valPM, valPMT, valPP, 
 valPT, valPVA, valPVAT, valPWM, valPWMG, valPWX, valQ, valR, valRC, valRTI, 
 valSG, valSH, valsh0, valsh1, valSROW, valTDH, valTIC, valTICT, valTIK, valTIKT, 
 valTIM, valTIMT, valTIP, valTIPT, valTIW, valTIWT, valTIX, valTIXT, valTPRCTS, 
 valTPRODN, valttdh0, valttdh1, valttic, valttik, valttim, valttip, valttiw, valttix, 
 valU, valVA, valKLE, valW, valWC, valWTI, valXS, valXST, valYDH, valYG, valYH, 
 valYHK, valYHL, valYROW, valCTAX, valTCTAX, valPERMIT_TOTAL, valQDAC, 
 valDAC_growth_rate, valDAC_elec, valswitchDAC, valCO2FACTOR, valEndo_CO2IND, 
 valEndo_CO2HH, valEndo_TotalCO2, valLEON, valPTSF, valTSFD, valTSFS, 
 valPX_INDEX, valPM_INDEX, valTOT,
 
 valAEEI, valEE, valNE, valEH, valTFC_product, valTFC, valTES_coal, valTES_oil, 
 valTES_gas, valTES, valMarinebunker, valAviationbunker, valCO2I, valCO2NE, 
 valCO2I2, valCO2NE2, valCO2I3, valTCO2I, valTCO2NE, valCO2H, valTCO2H, valTCO2, 
 valEndo_CO2, valCO2I2_FUELCOMB, valTCO2H_FUELCOMB, valTCO2I_FUELCOMB, 
 valTCO2NE_FUELCOMB, valTCO2_FUELCOMB, valCO2_Marine, valTCO2_Marine, 
 valCO2_Aviation, valTCO2_Aviation, valCH4I, valCH4H, valCH4I2, valCH4I3, 
 valTCH4I, valTCH4H, valTCH4, valCH4_Marine, valCH4_Aviation, valTCH4_Marine, 
 valTCH4_Aviation, valN2OI, valN2OH, valN2OI2, valN2OI3, valTN2OI, valTN2OH, 
 valTN2O, valN2O_Marine, valN2O_Aviation, valTN2O_Marine, valTN2O_Aviation, 
 valGlobal_CO2, valGlobal_CH4, valGlobal_N2O
 ;