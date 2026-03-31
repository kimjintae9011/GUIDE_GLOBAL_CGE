Parameter
AQ(model_AQ, Scenario_name, z, variable_AQ, Unit_AQ, time) AQ Linkage Format ;

*========================================================= 01 Combustion in energy and transformation industries =====================================================================
*01 Combustion in energy and transformation industries - Transformation - combustion
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|BC2ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|DCENEPJactivity','PJ',year_AQ)   =  sum((Derivedcoal,Transformation_combustion),valEE(Derivedcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|GASENEPJactivity','PJ',year_AQ)  =  sum((Naturalgas,Transformation_combustion),valEE(Naturalgas,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|GSLENEPJactivity','PJ',year_AQ)  =  sum((Gasoline,Transformation_combustion),valEE(Gasoline,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|HFENEPJactivity','PJ',year_AQ)   =  sum((Heavyfueloil,Transformation_combustion),valEE(Heavyfueloil,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|LPGENEPJactivity','PJ',year_AQ)  =  sum((LPG,Transformation_combustion),valEE(LPG,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMBPJsector|MDENEPJactivity','PJ',year_AQ)   =  sum((Diesel,Transformation_combustion),valEE(Diesel,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Transformation - Fuel conversion (grate firingr)
AQ(model_AQ,'NZS',Country,'01|CON_COMB1PJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB1PJsector|BC2ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB1PJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB1PJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB1PJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Transformation - Fuel conversion (fluidized bed boiler)
AQ(model_AQ,'NZS',Country,'01|CON_COMB2PJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB2PJsector|BC2ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB2PJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB2PJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB2PJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Transformation - Fuel conversion (pulverized bed boiler)
AQ(model_AQ,'NZS',Country,'01|CON_COMB3PJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB3PJsector|BC2ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB3PJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB3PJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|CON_COMB3PJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Diesel generator sets
AQ(model_AQ,'NZS',Country,'01|PP_ENGPJsector|GASENEPJactivity','PJ',year_AQ)     =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_ENGPJsector|GAS_MENEPJactivity','PJ',year_AQ)   =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_ENGPJsector|HFENEPJactivity','PJ',year_AQ)      =  sum((Heavyfueloil),valEE(Heavyfueloil,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_ENGPJsector|MDENEPJactivity','PJ',year_AQ)      =  sum((Diesel),valEE(Diesel,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_ENGPJsector|MD_MENEPJactivity','PJ',year_AQ)    =  sum((Diesel),valEE(Diesel,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - existing coal (>50 MWth)
AQ(model_AQ,'NZS',Country,'01|PP_EX_LPJsector|BC1ENEPJactivity','PJ',year_AQ)    =  sum((Browncoal),valEE(Browncoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_LPJsector|HC1ENEPJactivity','PJ',year_AQ)    =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_LPJsector|HC2ENEPJactivity','PJ',year_AQ)    =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_LPJsector|HC3ENEPJactivity','PJ',year_AQ)    =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - existing (excl. coal)
AQ(model_AQ,'NZS',Country,'01|PP_EX_OTHPJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal),valEE(Derivedcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_OTHPJsector|GASENEPJactivity','PJ',year_AQ)   =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_OTHPJsector|GSLENEPJactivity','PJ',year_AQ)   =  sum((Gasoline),valEE(Gasoline,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_OTHPJsector|HFENEPJactivity','PJ',year_AQ)    =  sum((Heavyfueloil),valEE(Heavyfueloil,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_OTHPJsector|MDENEPJactivity','PJ',year_AQ)    =  sum((Diesel),valEE(Diesel,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_OTHPJsector|OS1ENEPJactivity','PJ',year_AQ)   =  sum((Biomassfuels),valEE(Biomassfuels,'26_eOther',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_OTHPJsector|OS2ENEPJactivity','PJ',year_AQ)   =  sum((Otherbiomass),valEE(Otherbiomass,'26_eOther',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_OTHPJsector|WSFNRENEPJactivity','PJ',year_AQ) =  sum((Wastefuels_nonrenewable),valEE(Wastefuels_nonrenewable,'26_eOther',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - existing coal (<50 MWth)
AQ(model_AQ,'NZS',Country,'01|PP_EX_SPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_EX_SPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - IGCC
AQ(model_AQ,'NZS',Country,'01|PP_IGCCPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_IGCCPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_IGCCPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - Modern power plants (coal: ultra & supercritical; gas: CCGT)
AQ(model_AQ,'NZS',Country,'01|PP_MODPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_MODPJsector|GASENEPJactivity','PJ',year_AQ)  =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_MODPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_MODPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_MODPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - Power & district heat plants - new (excl. coal)
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal),valEE(Derivedcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|FWDENEPJactivity','PJ',year_AQ)   =  sum((Fuelwood),valEE(Fuelwood,'26_eOther',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|GASENEPJactivity','PJ',year_AQ)   =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|GSLENEPJactivity','PJ',year_AQ)   =  sum((Gasoline),valEE(Gasoline,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|HFENEPJactivity','PJ',year_AQ)    =  sum((Heavyfueloil),valEE(Heavyfueloil,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|MDENEPJactivity','PJ',year_AQ)    =  sum((Diesel),valEE(Diesel,'22_eOil',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|OS1ENEPJactivity','PJ',year_AQ)   =  sum((Biomassfuels),valEE(Biomassfuels,'26_eOther',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|OS2ENEPJactivity','PJ',year_AQ)   =  sum((Otherbiomass),valEE(Otherbiomass,'26_eOther',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|WSFNRENEPJactivity','PJ',year_AQ) =  sum((Wastefuels_nonrenewable),valEE(Wastefuels_nonrenewable,'26_eOther',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEWPJsector|WSFRENEPJactivity','PJ',year_AQ)  =  sum((Wastefuels_renewable),valEE(Wastefuels_renewable,'26_eOther',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - Power & district heat plants - new coal (>50 MWth)
AQ(model_AQ,'NZS',Country,'01|PP_NEW_LPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEW_LPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEW_LPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'01|PP_NEW_LPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*================================================================= 02 Non-industrial combustion plants =====================================================================
*02 Non-industrial combustion plants - Residential-commercial
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|BC1ENEPJactivity','PJ',year_AQ)     =  sum((Browncoal),valEE(Browncoal,'31_SER',Country,year_AQ,'NZS')+valEH(Browncoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|BIOGENEPJactivity','PJ',year_AQ)    =  sum((Biogas),valEE(Biogas,'31_SER',Country,year_AQ,'NZS')+valEH(Biogas,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|CHCOAENEPJactivity','PJ',year_AQ)   =  sum((Fuelwood),valEE(Fuelwood,'31_SER',Country,year_AQ,'NZS')+valEH(Fuelwood,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|DCENEPJactivity','PJ',year_AQ)      =  sum((Derivedcoal),valEE(Derivedcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Derivedcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|GASENEPJactivity','PJ',year_AQ)     =  sum((Naturalgas),valEE(Naturalgas,'31_SER',Country,year_AQ,'NZS')+valEH(Naturalgas,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|GSLENEPJactivity','PJ',year_AQ)     =  sum((Gasoline),valEE(Gasoline,'31_SER',Country,year_AQ,'NZS')+valEH(Gasoline,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|HC1ENEPJactivity','PJ',year_AQ)     =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|HC2ENEPJactivity','PJ',year_AQ)     =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|HC3ENEPJactivity','PJ',year_AQ)     =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|HFENEPJactivity','PJ',year_AQ)      =  sum((Heavyfueloil),valEE(Heavyfueloil,'31_SER',Country,year_AQ,'NZS')+valEH(Heavyfueloil,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|LPGENEPJactivity','PJ',year_AQ)     =  sum((LPG),valEE(LPG,'31_SER',Country,year_AQ,'NZS')+valEH(LPG,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|MDENEPJactivity','PJ',year_AQ)      =  sum((Diesel),valEE(Diesel,'31_SER',Country,year_AQ,'NZS')+valEH(Diesel,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOMPJsector|OS1ENEPJactivity','PJ',year_AQ)     =  sum((Biomassfuels_serhoh),valEE(Biomassfuels_serhoh,'31_SER',Country,year_AQ,'NZS')+valEH(Biomassfuels_serhoh,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*02 Non-industrial combustion plants - Fireplaces
AQ(model_AQ,'NZS',Country,'02|DOM_FPLACEPJsector|FWDENEPJactivity','PJ',year_AQ)   =  eps ; 

*02 Non-industrial combustion plants - Medium boilers (<50MW) - automatic
AQ(model_AQ,'NZS',Country,'02|DOM_MB_APJsector|BC1ENEPJactivity','PJ',year_AQ)   =  sum((Browncoal),valEE(Browncoal,'31_SER',Country,year_AQ,'NZS')+valEH(Browncoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_APJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal),valEE(Derivedcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Derivedcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_APJsector|FWDENEPJactivity','PJ',year_AQ)   =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_APJsector|HC1ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_APJsector|HC2ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_APJsector|HC3ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*02 Non-industrial combustion plants - Medium boilers (<1MW) - manual
AQ(model_AQ,'NZS',Country,'02|DOM_MB_MPJsector|BC1ENEPJactivity','PJ',year_AQ)   =  sum((Browncoal),valEE(Browncoal,'31_SER',Country,year_AQ,'NZS')+valEH(Browncoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_MPJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal),valEE(Derivedcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Derivedcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_MPJsector|FWDENEPJactivity','PJ',year_AQ)   =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_MPJsector|HC1ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_MPJsector|HC2ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_MB_MPJsector|HC3ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*02 Non-industrial combustion plants - Three-stone stove
AQ(model_AQ,'NZS',Country,'02|DOM_PITPJsector|ARDENEPJactivity','PJ',year_AQ)    =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_PITPJsector|FWDENEPJactivity','PJ',year_AQ)    =  eps ; 

*02 Non-industrial combustion plants - Single house boilers (<50 kW) - automatic
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_APJsector|ARDENEPJactivity','PJ',year_AQ)  =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_APJsector|FWDENEPJactivity','PJ',year_AQ)  =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_APJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_APJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_APJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_MPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'31_SER',Country,year_AQ,'NZS')+valEH(Browncoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_MPJsector|DCENEPJactivity','PJ',year_AQ)   =  sum((Derivedcoal),valEE(Derivedcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Derivedcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_MPJsector|FWDENEPJactivity','PJ',year_AQ)  =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_MPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_MPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_SHB_MPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*02 Non-industrial combustion plants - Cooking stoves
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_CPJsector|ARDENEPJactivity','PJ',year_AQ)  =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_CPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'31_SER',Country,year_AQ,'NZS')+valEH(Browncoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_CPJsector|DCENEPJactivity','PJ',year_AQ)   =  sum((Derivedcoal),valEE(Derivedcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Derivedcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_CPJsector|FWDENEPJactivity','PJ',year_AQ)  =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_CPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_CPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_CPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_HPJsector|ARDENEPJactivity','PJ',year_AQ)  =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_HPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'31_SER',Country,year_AQ,'NZS')+valEH(Browncoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_HPJsector|DCENEPJactivity','PJ',year_AQ)   =  sum((Derivedcoal),valEE(Derivedcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Derivedcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_HPJsector|FWDENEPJactivity','PJ',year_AQ)  =  eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_HPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_HPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'02|DOM_STOVE_HPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'31_SER',Country,year_AQ,'NZS')+valEH(Hardcoal,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*================================================================ 03 Combustion in manufacturing industry =====================================================
*03 Combustion in manufacturing industry - Chemical industry (boilers)
AQ(model_AQ,'NZS',Country,'03|IN_BO_CHEMPJsector|BC1ENEPJactivity','PJ',year_AQ)   =  sum((Browncoal),valEE(Browncoal,'11_CHEMICAL',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_CHEMPJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal),valEE(Derivedcoal,'11_CHEMICAL',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_CHEMPJsector|GASENEPJactivity','PJ',year_AQ)   =  sum((Naturalgas),valEE(Naturalgas,'11_CHEMICAL',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_CHEMPJsector|HC1ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'11_CHEMICAL',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_CHEMPJsector|HC2ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'11_CHEMICAL',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_CHEMPJsector|HC3ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal),valEE(Hardcoal,'11_CHEMICAL',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_CHEMPJsector|HFENEPJactivity','PJ',year_AQ)    =  sum((Heavyfueloil),valEE(Heavyfueloil,'11_CHEMICAL',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_CHEMPJsector|OS1ENEPJactivity','PJ',year_AQ)   =  sum((Biomassfuels),valEE(Biomassfuels,'11_CHEMICAL',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*03 Combustion in manufacturing industry - Transformation sector (boilers)
*AQ(model_AQ,'NZS',Country,'03|IN_BO_CONPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  eps ; 
*AQ(model_AQ,'NZS',Country,'03|IN_BO_CONPJsector|GASENEPJactivity','PJ',year_AQ)  =  eps ; 
*AQ(model_AQ,'NZS',Country,'03|IN_BO_CONPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  eps ; 
*AQ(model_AQ,'NZS',Country,'03|IN_BO_CONPJsector|HFENEPJactivity','PJ',year_AQ)   =  eps ; 
*AQ(model_AQ,'NZS',Country,'03|IN_BO_CONPJsector|OS1ENEPJactivity','PJ',year_AQ)  =  eps ; 

*03 Combustion in manufacturing industry - Other industry (boilers; liquid and gaseous fuels)
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal,Other_industry),valEE(Derivedcoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|GASENEPJactivity','PJ',year_AQ)   =  sum((Naturalgas,Other_industry),valEE(Naturalgas,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|GSLENEPJactivity','PJ',year_AQ)   =  sum((Gasoline,Other_industry),valEE(Gasoline,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|HFENEPJactivity','PJ',year_AQ)    =  sum((Heavyfueloil,Other_industry),valEE(Heavyfueloil,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|LPGENEPJactivity','PJ',year_AQ)   =  sum((LPG,Other_industry),valEE(LPG,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|MDENEPJactivity','PJ',year_AQ)    =  sum((Diesel,Other_industry),valEE(Diesel,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|OS1ENEPJactivity','PJ',year_AQ)   =  sum((Biomassfuels,Other_industry),valEE(Biomassfuels,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|OS2ENEPJactivity','PJ',year_AQ)   =  sum((Otherbiomass_wastefuels,Other_industry),valEE(Otherbiomass_wastefuels,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTHPJsector|WSFNRENEPJactivity','PJ',year_AQ) =  sum((Wastefuels_nonrenewable,Other_industry),valEE(Wastefuels_nonrenewable,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*03 Combustion in manufacturing industry - Other industry (large coal boilers; > 50 MWth )
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTH_LPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Other_industry),valEE(Browncoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTH_LPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Other_industry),valEE(Hardcoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTH_LPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Other_industry),valEE(Hardcoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTH_LPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Other_industry),valEE(Hardcoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*03 Combustion in manufacturing industry - Other industry (small coal boilers; < 50 MWth )
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTH_SPJsector|BC1ENEPJactivity','PJ',year_AQ)  =  sum((Browncoal,Other_industry),valEE(Browncoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTH_SPJsector|HC1ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Other_industry),valEE(Hardcoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTH_SPJsector|HC2ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Other_industry),valEE(Hardcoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_OTH_SPJsector|HC3ENEPJactivity','PJ',year_AQ)  =  sum((Hardcoal,Other_industry),valEE(Hardcoal,Other_industry,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*03 Combustion in manufacturing industry - Paper & pulp (boilers)
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal,Paper_pulp),valEE(Derivedcoal,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|GASENEPJactivity','PJ',year_AQ)   =  sum((Naturalgas,Paper_pulp),valEE(Naturalgas,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|HC1ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Paper_pulp),valEE(Hardcoal,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|HC2ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Paper_pulp),valEE(Hardcoal,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|HC3ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Paper_pulp),valEE(Hardcoal,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|HFENEPJactivity','PJ',year_AQ)    =  sum((Heavyfueloil,Paper_pulp),valEE(Heavyfueloil,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|OS1ENEPJactivity','PJ',year_AQ)   =  sum((Biomassfuels,Paper_pulp),valEE(Biomassfuels,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|OS2ENEPJactivity','PJ',year_AQ)   =  sum((Otherbiomass_wastefuels,Paper_pulp),valEE(Otherbiomass_wastefuels,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_BO_PAPPJsector|WSFNRENEPJactivity','PJ',year_AQ) =  sum((Wastefuels_nonrenewable,Paper_pulp),valEE(Wastefuels_nonrenewable,Paper_pulp,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*03 Combustion in manufacturing industry - Industrial furnaces
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|BC1ENEPJactivity','PJ',year_AQ)   =  sum((Browncoal,Industrial_furnaces),valEE(Browncoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal,Industrial_furnaces),valEE(Derivedcoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|GASENEPJactivity','PJ',year_AQ)   =  sum((Naturalgas,Industrial_furnaces),valEE(Naturalgas,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|GSLENEPJactivity','PJ',year_AQ)   =  sum((Gasoline,Industrial_furnaces),valEE(Gasoline,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|HC1ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Industrial_furnaces),valEE(Hardcoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|HC2ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Industrial_furnaces),valEE(Hardcoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|HC3ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Industrial_furnaces),valEE(Hardcoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|HFENEPJactivity','PJ',year_AQ)    =  sum((Heavyfueloil,Industrial_furnaces),valEE(Heavyfueloil,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|LPGENEPJactivity','PJ',year_AQ)   =  sum((LPG,Industrial_furnaces),valEE(LPG,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|MDENEPJactivity','PJ',year_AQ)    =  sum((Diesel,Industrial_furnaces),valEE(Diesel,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCPJsector|OS1ENEPJactivity','PJ',year_AQ)   =  sum((Biomassfuels,Industrial_furnaces),valEE(Biomassfuels,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*03 Combustion in manufacturing industry - Industry: Other combustion, pulverized
AQ(model_AQ,'NZS',Country,'03|IN_OC3PJsector|BC1ENEPJactivity','PJ',year_AQ)   =  sum((Browncoal,Industrial_furnaces),valEE(Browncoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OC3PJsector|HC1ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Industrial_furnaces),valEE(Hardcoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OC3PJsector|HC2ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Industrial_furnaces),valEE(Hardcoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OC3PJsector|HC3ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Industrial_furnaces),valEE(Hardcoal,Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*03 Combustion in manufacturing industry - Other industry (furnaces)
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|BC1ENEPJactivity','PJ',year_AQ)   =  sum((Browncoal,Other_Industrial_furnaces),valEE(Browncoal,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|DCENEPJactivity','PJ',year_AQ)    =  sum((Derivedcoal,Other_Industrial_furnaces),valEE(Derivedcoal,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|GASENEPJactivity','PJ',year_AQ)   =  sum((Naturalgas,Other_Industrial_furnaces),valEE(Naturalgas,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|GSLENEPJactivity','PJ',year_AQ)   =  sum((Gasoline,Other_Industrial_furnaces),valEE(Gasoline,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|HC1ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Other_Industrial_furnaces),valEE(Hardcoal,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|HC2ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Other_Industrial_furnaces),valEE(Hardcoal,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|HC3ENEPJactivity','PJ',year_AQ)   =  sum((Hardcoal,Other_Industrial_furnaces),valEE(Hardcoal,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|HFENEPJactivity','PJ',year_AQ)    =  sum((Heavyfueloil,Other_Industrial_furnaces),valEE(Heavyfueloil,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|LPGENEPJactivity','PJ',year_AQ)   =  sum((LPG,Other_Industrial_furnaces),valEE(LPG,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|MDENEPJactivity','PJ',year_AQ)    =  sum((Diesel,Other_Industrial_furnaces),valEE(Diesel,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|IN_OCTOTPJsector|WSFNRENEPJactivity','PJ',year_AQ) =  sum((Wastefuels_nonrenewable,Other_Industrial_furnaces),valEE(Wastefuels_nonrenewable,Other_Industrial_furnaces,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*03 Combustion in manufacturing industry - Nonenergy use of fuels
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|BC1ENEPJactivity','PJ',year_AQ)      =  sum((Browncoal,J),valNE(Browncoal,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|DCENEPJactivity','PJ',year_AQ)       =  sum((Derivedcoal,J),valNE(Derivedcoal,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|GASENEPJactivity','PJ',year_AQ)      =  sum((Naturalgas,J),valNE(Naturalgas,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|GSLENEPJactivity','PJ',year_AQ)      =  sum((Gasoline,J),valNE(Gasoline,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|HC1ENEPJactivity','PJ',year_AQ)      =  sum((Hardcoal,J),valNE(Hardcoal,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|HC2ENEPJactivity','PJ',year_AQ)      =  sum((Hardcoal,J),valNE(Hardcoal,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|HC3ENEPJactivity','PJ',year_AQ)      =  sum((Hardcoal,J),valNE(Hardcoal,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|HFENEPJactivity','PJ',year_AQ)       =  sum((Heavyfueloil,J),valNE(Heavyfueloil,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|LPGENEPJactivity','PJ',year_AQ)      =  sum((LPG,J),valNE(LPG,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|MDENEPJactivity','PJ',year_AQ)       =  sum((Diesel,J),valNE(Diesel,J,Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'03|NONENPJsector|OS2ENEPJactivity','PJ',year_AQ)      =  eps ; 

*03 Combustion in manufacturing industry - Other N2O emissions
AQ(model_AQ,'NZS',Country,'03|OTHER_N2Okt N2Osector|NOFPROCkt N2Oactivity','ktN2O',year_AQ)  =  eps ; 

*03 Combustion in manufacturing industry - Other NOx emissions
AQ(model_AQ,'NZS',Country,'03|OTHER_NOXkt NOxsector|NOFPROCkt NOxactivity','ktNOx',year_AQ)  =  eps ; 

*03 Combustion in manufacturing industry - Other SO2 emissions
AQ(model_AQ,'NZS',Country,'03|OTHER_SO2kt SO2sector|NOFPROCkt SO2activity','ktSO2',year_AQ)  =  eps ; 

*03 Combustion in manufacturing industry - Aluminum production - secondary
AQ(model_AQ,'NZS',Country,'03|PR_ALSECMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('14_NONFERR',Country,year_AQ,'NZS') ; 

*03 Combustion in manufacturing industry - Brick production
AQ(model_AQ,'NZS',Country,'03|PR_BRICKMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  =  valXST('12_NONMET',Country,year_AQ,'NZS') ;

*03 Combustion in manufacturing industry - Cast iron (grey iron foundries)
AQ(model_AQ,'NZS',Country,'03|PR_CASTMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ;

*03 Combustion in manufacturing industry - Cement production
AQ(model_AQ,'NZS',Country,'03|PR_CEMMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  =  valXST('12_NONMET',Country,year_AQ,'NZS') ;

*03 Combustion in manufacturing industry - Glass production (flat, blown, container glass)
AQ(model_AQ,'NZS',Country,'03|PR_GLASSMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('12_NONMET',Country,year_AQ,'NZS') ;

*03 Combustion in manufacturing industry - Lime production
AQ(model_AQ,'NZS',Country,'03|PR_LIMEMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('12_NONMET',Country,year_AQ,'NZS') ; 

*03 Combustion in manufacturing industry - Agglomeration plant - sinter
AQ(model_AQ,'NZS',Country,'03|PR_SINTMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ; 

*================================================================= 04 Production processes =====================================================================
*04 Production processes - NOFPROCM m2activity
AQ(model_AQ,'NZS',Country,'04|CONSTRUCTM m2sector|NOFPROCM m2activity','10billion$(2019)',year_AQ)  = valXST('27_CONSTRUC',Country,year_AQ,'NZS') ; 

*04 Production processes - Mineral N fertilizer production
AQ(model_AQ,'NZS',Country,'04|FERTPROkt Nsector|NOFAGRkt Nactivity','10billion$(2019)',year_AQ)  = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*04 Production processes - Inorganic chemical industry
AQ(model_AQ,'NZS',Country,'04|INORGkt VOCsector|EMIVOCPkt VOCactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Other industrial NH3 emissions
AQ(model_AQ,'NZS',Country,'04|IO_NH3_EMISSkt NH3sector|NOFAGRkt NH3activity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Mining: Bauxite, copper, iron ore, other
AQ(model_AQ,'NZS',Country,'04|MINE_OTHMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('05_MINING',Country,year_AQ,'NZS') ; 

*04 Production processes - Organic chemical industry - storage
AQ(model_AQ,'NZS',Country,'04|ORG_STOREkt VOCsector|EMIVOCPkt VOCactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ;

*04 Production processes - Organic chemical industry - downstream units
AQ(model_AQ,'NZS',Country,'04|OTH_ORG_PRkt VOCsector|EMIVOCPkt VOCactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ;

*04 Production processes - adipic acid production
AQ(model_AQ,'NZS',Country,'04|PR_ADIPMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Aluminum production - primary
AQ(model_AQ,'NZS',Country,'04|PR_ALPRIMMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('14_NONFERR',Country,year_AQ,'NZS') ; 

*04 Production processes - Basic oxygen furnace
AQ(model_AQ,'NZS',Country,'04|PR_BAOXMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ; 

*04 Production processes - Briquettes production
AQ(model_AQ,'NZS',Country,'04|PR_BRIQMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('10_PETROLCOAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Cast iron (grey iron foundries) (fugitive)
AQ(model_AQ,'NZS',Country,'04|PR_CAST_FMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ; 

*04 Production processes - Carbon black production
AQ(model_AQ,'NZS',Country,'04|PR_CBLACKMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Coke oven
AQ(model_AQ,'NZS',Country,'04|PR_COKEMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ; 

*04 Production processes - Electric arc furnace
AQ(model_AQ,'NZS',Country,'04|PR_EARCMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ; 

*04 Production processes - Fertilizer production
AQ(model_AQ,'NZS',Country,'04|PR_FERTMtsector|NOFAGRMtactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Nitric acid production
AQ(model_AQ,'NZS',Country,'04|PR_NIACMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Non-ferrous metals prod. (excl aluminum)
AQ(model_AQ,'NZS',Country,'04|PR_OT_NFMEMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('14_NONFERR',Country,year_AQ,'NZS') ; 

*04 Production processes - Production of glass fiber, gypsum, PVC, other
AQ(model_AQ,'NZS',Country,'04|PR_OTHERMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Agglomeration plant - pellets
AQ(model_AQ,'NZS',Country,'04|PR_PELLMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('06_FOODPRO',Country,year_AQ,'NZS') ; 

*04 Production processes - Pig iron, blast furnace
AQ(model_AQ,'NZS',Country,'04|PR_PIGIMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ; 

*04 Production processes - Pig iron, blast furnace (fugitive)
AQ(model_AQ,'NZS',Country,'04|PR_PIGI_FMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ; 

*04 Production processes - Paper pulp mills
AQ(model_AQ,'NZS',Country,'04|PR_PULPMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = sum(Paper_pulp,valXST(Paper_pulp,Country,year_AQ,'NZS')) ; 

*04 Production processes - Petroleum refineries
AQ(model_AQ,'NZS',Country,'04|PR_REFMtsector|CRUPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('10_PETROLCOAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Petroleum refineries
AQ(model_AQ,'NZS',Country,'04|PR_REFMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('10_PETROLCOAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Agglomeration plant - sinter (fugitive)
AQ(model_AQ,'NZS',Country,'04|PR_SINT_FMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('13_IRONSTL',Country,year_AQ,'NZS') ; 

*04 Production processes - Small industrial and business facilities - fugitive
AQ(model_AQ,'NZS',Country,'04|PR_SMIND_FM peoplesector|NOFPROCM peopleactivity','M_people',year_AQ)  = eps ; 

*04 Production processes - Sulfuric acid production
AQ(model_AQ,'NZS',Country,'04|PR_SUACMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Steam cracking (ethylene & propylene production)
AQ(model_AQ,'NZS',Country,'04|STCRACK_PRktsector|EPVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Storage & handling of iron ore
AQ(model_AQ,'NZS',Country,'04|STH_FEOREMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('05_MINING',Country,year_AQ,'NZS') ; 

*04 Production processes - Storage & handling of N,P,K fertilizers
AQ(model_AQ,'NZS',Country,'04|STH_NPKMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*04 Production processes - Storage & handling of other industrial bulk products
AQ(model_AQ,'NZS',Country,'04|STH_OTH_INMtsector|NOFPROCMtactivity','Mt',year_AQ)  = eps ;

*04 Production processes - Food and drink industry
AQ(model_AQ,'NZS',Country,'04|FOODM peoplesector|POPVOCPM peopleactivity','10billion$(2019)',year_AQ)  = valXST('06_FOODPRO',Country,year_AQ,'NZS') ; 

*04 Production processes - Other NMVOC emissions
AQ(model_AQ,'NZS',Country,'04|OTHER_VOCkt VOCsector|EMIVOCPkt VOCactivity','ktVOC',year_AQ) = eps ;

*================================================================= 05 Extraction and distribution of fossil fuels and geothermal energy =====================================================================
*05 Extraction and distribution of fossil fuels and geothermal energy - Abandoned coal mines
AQ(model_AQ,'NZS',Country,'05|COAL_ABANDkt CH4sector|NOFPROCkt CH4activity','ktVOC',year_AQ) = eps ;
*05 Extraction and distribution of fossil fuels and geothermal energy - Transformation - losses
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|BC1ENEPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|DCENEPJactivity','PJ',year_AQ)  = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|GASENEPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|HC1ENEPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|HC2ENEPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|HC3ENEPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|HFENEPJactivity','PJ',year_AQ)  = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|LPGENEPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|MDENEPJactivity','PJ',year_AQ)  = eps ;
AQ(model_AQ,'NZS',Country,'05|CON_LOSSPJsector|OS1ENEPJactivity','PJ',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Gasoline distribution - service stations
AQ(model_AQ,'NZS',Country,'05|D_GASSTPJsector|GSLMOBPJactivity','PJ',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Gasoline storage & distribution (excl. gasoline stations)
AQ(model_AQ,'NZS',Country,'05|D_REFDEPPJsector|GSLMOBPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|D_REFDEPPJsector|MDMOBPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|D_REFDEP_SPJsector|GSLENEPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|D_REFDEP_SPJsector|MDENEPJactivity','PJ',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Extraction of oil (incl delivery to terminals)
AQ(model_AQ,'NZS',Country,'05|EXD_LQkt VOCsector|EMIVOCPkt VOCactivity','ktVOC',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Brown coal mining
AQ(model_AQ,'NZS',Country,'05|MINE_BCMtsector|NOFPROCMtactivity','ktVOC',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Mining: Brown coal -post-mining emissions
AQ(model_AQ,'NZS',Country,'05|MINE_BC_POSTMtsector|NOFPROCMtactivity','Mt',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Mining: Brown coal -pre-mining emissions
AQ(model_AQ,'NZS',Country,'05|MINE_BC_PREMtsector|NOFPROCMtactivity','Mt',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Mining: Brown coal - ventilation air methane
AQ(model_AQ,'NZS',Country,'05|MINE_BC_VAMMtsector|NOFPROCMtactivity','Mt',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Hard coal mining
AQ(model_AQ,'NZS',Country,'05|MINE_HCMtsector|NOFPROCMtactivity','Mt',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Mining: Hard coal -post-mining emissions
AQ(model_AQ,'NZS',Country,'05|MINE_HC_POSTMtsector|NOFPROCMtactivity','Mt',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Mining: Hard coal -pre-mining emissions
AQ(model_AQ,'NZS',Country,'05|MINE_HC_PREMtsector|NOFPROCMtactivity','Mt',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Mining: Hard coal - ventilation air methane
AQ(model_AQ,'NZS',Country,'05|MINE_HC_VAMMtsector|NOFPROCMtactivity','Mt',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Production of oil or gas: venting of flaring of APG
AQ(model_AQ,'NZS',Country,'05|PROD_AGASPJsector|CRUPROCPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|PROD_AGASPJsector|GASPROCPJactivity','PJ',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Production of oil or gas: emissions from unintended leakage during extraction
AQ(model_AQ,'NZS',Country,'05|PROD_LEAKPJsector|CB_GASPROCPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|PROD_LEAKPJsector|CRUPROCPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|PROD_LEAKPJsector|GASPROCPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|PROD_LEAKPJsector|S_GASPROCPJactivity','PJ',year_AQ) = eps ;
AQ(model_AQ,'NZS',Country,'05|PROD_LEAKPJsector|T_GASPROCPJactivity','PJ',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Storage & handling of coal
AQ(model_AQ,'NZS',Country,'05|STH_COALMtsector|NOFPROCMtactivity','PJ',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Fugitive emissions from gas distribution to transport sector
AQ(model_AQ,'NZS',Country,'05|TRA_F_CH4PJsector|GASMOBPJactivity','PJ',year_AQ) = eps ;

*05 Extraction and distribution of fossil fuels and geothermal energy - Transmission of natural gas
AQ(model_AQ,'NZS',Country,'05|TRANSPJ gas transmittedsector|GASPROCPJ gas transmitted','PJ',year_AQ) = eps ;

*================================================================= 06 Solvent and other product use =====================================================================
*06 Solvent and other product use - Vehicles manufacturing
AQ(model_AQ,'NZS',Country,'06|AUTO_Pkvehsector|VEHVOCPkvehactivity','10billion$(2019)',year_AQ)  = valXST('16_TRANSEQ',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Coil coating
AQ(model_AQ,'NZS',Country,'06|COILmln m2sector|SCVOCPmln m2activity','10billion$(2019)',year_AQ)  = sum(Coil_coating,valXST(Coil_coating,Country,year_AQ,'NZS')) ; 

*06 Solvent and other product use - Decorative paints
AQ(model_AQ,'NZS',Country,'06|DECO_Pktsector|PNTVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('27_CONSTRUC',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Degreasing
AQ(model_AQ,'NZS',Country,'06|DEGRkt SLVsector|SLVVOCPkt SLVactivity','ktSLV',year_AQ)  = eps ;

*06 Solvent and other product use - Domestic use of solvents (other than paint)
AQ(model_AQ,'NZS',Country,'06|DOM_OSM peoplesector|POPVOCPM peopleactivity','M_people',year_AQ)  = TOT_POP(Country,year_AQ) ;

*06 Solvent and other product use - Dry cleaning
AQ(model_AQ,'NZS',Country,'06|DRYkt TEXsector|TEXVOCPkt TEXactivity','10billion$(2019)',year_AQ)  = valXST('07_TEXTILES',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Fat and oil extraction (seeds)
AQ(model_AQ,'NZS',Country,'06|FATOILktsector|SDVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Industrial application of adhesives (traditional)
AQ(model_AQ,'NZS',Country,'06|GLUE_INTktsector|ADHVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Other industrial use of solvents
AQ(model_AQ,'NZS',Country,'06|IND_OSkt VOCsector|EMIVOCPkt VOCactivity','ktVOC',year_AQ)  = eps ;

*06 Solvent and other product use - Industrial paint use (continuous processes)
AQ(model_AQ,'NZS',Country,'06|IND_P_CNTktsector|PNTVOCPktactivity','kt',year_AQ)  = eps ;

*06 Solvent and other product use - Industrial paint use (other)
AQ(model_AQ,'NZS',Country,'06|IND_P_OTktsector|PNTVOCPktactivity','kt',year_AQ)  = eps ;

*06 Solvent and other product use - Leather coating
AQ(model_AQ,'NZS',Country,'06|LEATHERktsector|CTGVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('07_TEXTILES',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Use of nitrous oxide
AQ(model_AQ,'NZS',Country,'06|N2O_USEM peoplesector|POPPROCM peopleactivity','M_people',year_AQ)  = TOT_POP(Country,year_AQ) ;

*06 Solvent and other product use - Pharmaceutical industry
AQ(model_AQ,'NZS',Country,'06|PHARMAkt SLVsector|SLVVOCPkt SLVactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Products incorporating solvents
AQ(model_AQ,'NZS',Country,'06|PISkt PGsector|PGVOCPkt PGactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Polystyrene processing
AQ(model_AQ,'NZS',Country,'06|PLSTYR_PRktsector|EPSVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Offset printing (existing)
AQ(model_AQ,'NZS',Country,'06|PRT_OFFSkt INKsector|INKVOCPkt INKactivity','10billion$(2019)',year_AQ)  = valXST('09_PAPERPRO',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Flexography & rotogravure - packaging
AQ(model_AQ,'NZS',Country,'06|PRT_PACKkt INKsector|INKVOCPkt INKactivity','10billion$(2019)',year_AQ)  = valXST('09_PAPERPRO',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Rotogravure in publication (existing)
AQ(model_AQ,'NZS',Country,'06|PRT_PUBkt INKsector|INKVOCPkt INKactivity','10billion$(2019)',year_AQ)  = valXST('09_PAPERPRO',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Screen printing (existing)
AQ(model_AQ,'NZS',Country,'06|PRT_SCRkt INKsector|INKVOCPkt INKactivity','10billion$(2019)',year_AQ)  = valXST('09_PAPERPRO',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Polyvinylchloride produceduction by suspension process
AQ(model_AQ,'NZS',Country,'06|PVC_PRktsector|PVCVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Meat frying, food preparation, BBQ
AQ(model_AQ,'NZS',Country,'06|RES_BBQM peoplesector|NOFPROCM peopleactivity','10billion$(2019)',year_AQ)  = TOT_POP(Country,year_AQ) ;

*06 Solvent and other product use - Cigarette smoking
AQ(model_AQ,'NZS',Country,'06|RES_CIGARM peoplesector|NOFPROCM peopleactivity','M_people',year_AQ)  = TOT_POP(Country,year_AQ) ;

*06 Solvent and other product use - Fireworks
AQ(model_AQ,'NZS',Country,'06|RES_FIREWM peoplesector|NOFPROCM peopleactivity','M_people',year_AQ)  = TOT_POP(Country,year_AQ) ;

*06 Solvent and other product use - Manufacturing of shoes
AQ(model_AQ,'NZS',Country,'06|SHOEmln pairssector|SHOVOCPmln pairsactivity','10billion$(2019)',year_AQ)  = valXST('07_TEXTILES',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Synthetic rubber production
AQ(model_AQ,'NZS',Country,'06|SYNTH_RUBktsector|RUBVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Tyre production
AQ(model_AQ,'NZS',Country,'06|TYRESktsector|TYRVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('11_CHEMICAL',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Vehicle refinishing
AQ(model_AQ,'NZS',Country,'06|VEHR_Pktsector|PNTVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('16_TRANSEQ',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - (De)Waxing and underbody treatment of vehicles
AQ(model_AQ,'NZS',Country,'06|VEHTRM peoplesector|POPVOCPM peopleactivity','M_people',year_AQ)  = TOT_POP(Country,year_AQ) ;

*06 Solvent and other product use - Winding wire coating
AQ(model_AQ,'NZS',Country,'06|WIREktsector|ENWVOCPktactivity','10billion$(2019)',year_AQ)  = valXST('15_MACHINE',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Wood preservation (excl. creosote)
AQ(model_AQ,'NZS',Country,'06|WOODmln m3sector|TIMVOCPmln m3activity','10billion$(2019)',year_AQ)  = valXST('08_WOODPRO',Country,year_AQ,'NZS') ; 

*06 Solvent and other product use - Wood coating
AQ(model_AQ,'NZS',Country,'06|WOOD_Pmln m2sector|SCVOCPmln m2activity','10billion$(2019)',year_AQ)  = valXST('08_WOODPRO',Country,year_AQ,'NZS') ; 

*======================================================================= 07 Road transport ====================================================================
*07 Road transport - Leaded gasoline
AQ(model_AQ,'NZS',Country,'07|LEAD_GASOLPJsector|LFLMOBPJactivity','PJ',year_AQ)  =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*07 Road transport - gasoline engines - evaporative
AQ(model_AQ,'NZS',Country,'07|TRA_RD_EVPJsector|GSLMOBPJactivity','PJ',year_AQ)   =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*07 Road transport - Buses
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBGvkmsector|ABRASIONMOBGvkmactivity','Gvkm',year_AQ)    =  eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBGvkmsector|BRAKEMOBGvkmactivity','Gvkm',year_AQ)       =  eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|GASMOBPJactivity','PJ',year_AQ)            =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|GAS_MMOBPJactivity','PJ',year_AQ)          =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|GSLMOBPJactivity','PJ',year_AQ)            =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|GSL_MMOBPJactivity','PJ',year_AQ)          =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBthousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ)  =  eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|H2MOBPJactivity','PJ',year_AQ)             =  eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|LPGMOBPJactivity','PJ',year_AQ)            =  sum((LPG),valEE(LPG,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|LPGMOBPJactivity','PJ',year_AQ)            =  sum((LPG),valEE(LPG,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|MDMOBPJactivity','PJ',year_AQ)             =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBPJsector|MD_MMOBPJactivity','PJ',year_AQ)           =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ)   =  eps ;   
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDBGvkmsector|TYREMOBGvkmactivity','Gvkm',year_AQ)        =  eps ;  

*07 Road transport - Heavy duty vehicles
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTGvkmsector|ABRASIONMOBGvkmactivity','Gvkm',year_AQ)  =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTGvkmsector|BRAKEMOBGvkmactivity','Gvkm',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTPJsector|GASMOBPJactivity','PJ',year_AQ)          =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTPJsector|GAS_MMOBPJactivity','PJ',year_AQ)        =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTPJsector|GSLMOBPJactivity','PJ',year_AQ)          =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTPJsector|GSL_MMOBPJactivity','PJ',year_AQ)        =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTthousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ)    =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTPJsector|H2MOBPJactivity','Gvkm',year_AQ)            =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTPJsector|LPGMOBPJactivity','PJ',year_AQ)          =  sum((LPG),valEE(LPG,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTPJsector|MDMOBPJactivity','PJ',year_AQ)           =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTPJsector|MD_MMOBPJactivity','PJ',year_AQ)         =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_HDTGvkmsector|TYREMOBGvkmactivity','Gvkm',year_AQ)      =  eps ;  

*07 Road transport - Mopeds
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD2Gvkmsector|ABRASIONMOBGvkmactivity','Gvkm',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD2Gvkmsector|BRAKEMOBGvkmactivity','Gvkm',year_AQ)        =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD2PJsector|GSLMOBPJactivity','PJ',year_AQ)             =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD2PJsector|GSL_MMOBPJactivity','PJ',year_AQ)           =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD2thousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD2Gvkmsector|TYREMOBGvkmactivity','Gvkm',year_AQ)         =  eps ;  

*07 Road transport - Cars
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CGvkmsector|ABRASIONMOBGvkmactivity','Gvkm',year_AQ)   =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CGvkmsector|BRAKEMOBGvkmactivity','Gvkm',year_AQ)      =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CPJsector|GASMOBPJactivity','PJ',year_AQ)           =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CPJsector|GAS_MMOBPJactivity','PJ',year_AQ)         =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CPJsector|GSLMOBPJactivity','PJ',year_AQ)           =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CPJsector|GSL_MMOBPJactivity','PJ',year_AQ)         =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4Cthousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CPJsector|H2MOBPJactivity','PJ',year_AQ)            =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CPJsector|LPGMOBPJactivity','PJ',year_AQ)           =  sum((LPG),valEE(LPG,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CPJsector|MDMOBPJactivity','PJ',year_AQ)            =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CPJsector|MD_MMOBPJactivity','PJ',year_AQ)          =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4Cthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4CGvkmsector|TYREMOBGvkmactivity','Gvkm',year_AQ)       =  eps ;  

*07 Road transport - Cars - evaporative
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4C_EVPJsector|GSLMOBPJactivity','PJ',year_AQ)        =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*07 Road transport - Light duty vehicles
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TGvkmsector|ABRASIONMOBGvkmactivity','Gvkm',year_AQ)   =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TGvkmsector|BRAKEMOBGvkmactivity','Gvkm',year_AQ)      =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TPJsector|GASMOBPJactivity','PJ',year_AQ)           =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TPJsector|GAS_MMOBPJactivity','PJ',year_AQ)         =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TPJsector|GSLMOBPJactivity','PJ',year_AQ)           =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TPJsector|GSL_MMOBPJactivity','PJ',year_AQ)         =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4Tthousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TPJsector|H2MOBPJactivity','PJ',year_AQ)            =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TPJsector|LPGMOBPJactivity','PJ',year_AQ)           =  sum((LPG),valEE(LPG,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TPJsector|MDMOBPJactivity','PJ',year_AQ)            =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TPJsector|MD_MMOBPJactivity','PJ',year_AQ)          =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4Tthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4TGvkmsector|TYREMOBGvkmactivity','Gvkm',year_AQ)    =  eps ; 

*07 Road transport - Light duty vehicles - evaporative
AQ(model_AQ,'NZS',Country,'07|TRA_RD_LD4T_EVPJsector|GSLMOBPJactivity','PJ',year_AQ)        =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ;

*07 Road transport - Motorcycles
AQ(model_AQ,'NZS',Country,'07|TRA_RD_M4Gvkmsector|ABRASIONMOBGvkmactivity','Gvkm',year_AQ)  =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_M4Gvkmsector|BRAKEMOBGvkmactivity','Gvkm',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_M4PJsector|GSLMOBPJactivity','PJ',year_AQ)             =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_M4PJsector|GSL_MMOBPJactivity','PJ',year_AQ)           =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_M4thousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ)     =  eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_M4Gvkmsector|TYREMOBGvkmactivity','Gvkm',year_AQ)      =  eps ; 

*07 Road transport - Generic road vehicles as 3-wheelers and others
AQ(model_AQ,'NZS',Country,'07|TRA_RD_OTHGvkmsector|ABRASIONMOBGvkmactivity','Gvkm',year_AQ)   =  eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_OTHGvkmsector|BRAKEMOBGvkmactivity','Gvkm',year_AQ)      =  eps ; 
AQ(model_AQ,'NZS',Country,'07|TRA_RD_OTHPJsector|GSLMOBPJactivity','PJ',year_AQ)              =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ;  
AQ(model_AQ,'NZS',Country,'07|TRA_RD_OTHthousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ)  =  eps ;    
AQ(model_AQ,'NZS',Country,'07|TRA_RD_OTHGvkmsector|TYREMOBGvkmactivity','Gvkm',year_AQ)       =  eps ; 

*================================================================= 08 Other mobile sources and machiney ======================================================================================
*08 Other mobile sources and machiney - Non-road, other
AQ(model_AQ,'NZS',Country,'08|TRA_OTPJsector|HC1MOBPJactivity','PJ',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*08 Other mobile sources and machiney - Agriculture
AQ(model_AQ,'NZS',Country,'08|TRA_OT_AGRPJsector|GSLMOBPJactivity','PJ',year_AQ)               =  sum((Gasoline),valEE(Gasoline,'01_AGRICULT',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_AGRPJsector|GSL_MMOBPJactivity','PJ',year_AQ)             =  sum((Gasoline),valEE(Gasoline,'01_AGRICULT',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_AGRthousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ) = eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_AGRPJsector|MDMOBPJactivity','PJ',year_AQ)                =  sum((Diesel),valEE(Diesel,'01_AGRICULT',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_AGRPJsector|MD_MMOBPJactivity','PJ',year_AQ)              =  sum((Diesel),valEE(Diesel,'01_AGRICULT',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_AGRthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ)  = eps ; 

*08 Other mobile sources and machiney - Aviation - LTO
AQ(model_AQ,'NZS',Country,'08|TRA_OT_AIRPJsector|GSLMOBPJactivity','PJ',year_AQ)             =  sum((Gasoline),valEE(Gasoline,'30_ATRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*08 Other mobile sources and machiney - Domestic aviation
AQ(model_AQ,'NZS',Country,'08|TRA_OT_AIR_DOMPJsector|GSLMOBPJactivity','PJ',year_AQ)         =  sum((Gasoline),valEE(Gasoline,'30_ATRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*08 Other mobile sources and machiney - Construction machinery
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSPJsector|GASMOBPJactivity','PJ',year_AQ)    =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSPJsector|GAS_MMOBPJactivity','PJ',year_AQ)  =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSPJsector|GSLMOBPJactivity','PJ',year_AQ)        =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSPJsector|GSL_MMOBPJactivity','PJ',year_AQ)      =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSthousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ) = eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSPJsector|LPGMOBPJactivity','PJ',year_AQ)        =  sum((LPG),valEE(LPG,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSPJsector|MDMOBPJactivity','PJ',year_AQ)         =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSPJsector|MD_MMOBPJactivity','PJ',year_AQ)       =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_CNSthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ) = eps ; 

*08 Other mobile sources and machiney - Non-road gasoline engines - evaporative
AQ(model_AQ,'NZS',Country,'08|TRA_OT_EVPJsector|GSLMOBPJactivity','PJ',year_AQ)         =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*08 Other mobile sources and machiney - Non-road gasoline engines - Inland waterways
AQ(model_AQ,'NZS',Country,'08|TRA_OT_INWPJsector|H2MOBPJactivity','PJ',year_AQ)         =  eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_INWPJsector|MDMOBPJactivity','PJ',year_AQ)         =  sum((Diesel),valEE(Diesel,'29_WTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_INWPJsector|MD_MMOBPJactivity','PJ',year_AQ)       =  sum((Diesel),valEE(Diesel,'29_WTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_INWthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ) = eps ; 

*08 Other mobile sources and machiney - Other non-road machinery
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBPJsector|GASMOBPJactivity','PJ',year_AQ)     =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBPJsector|GAS_MMOBPJactivity','PJ',year_AQ)   =  sum((Naturalgas),valEE(Naturalgas,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBPJsector|GSLMOBPJactivity','PJ',year_AQ)     =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBPJsector|GSL_MMOBPJactivity','PJ',year_AQ)   =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBthousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ) = eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBPJsector|LPGMOBPJactivity','PJ',year_AQ)     =  sum((LPG),valEE(LPG,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBPJsector|MDMOBPJactivity','PJ',year_AQ)      =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBPJsector|MD_MMOBPJactivity','PJ',year_AQ)    =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LBthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ) = eps ; 

*08 Other mobile sources and machiney - 2-stroke engines (non-road)
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LD2PJsector|GSLMOBPJactivity','PJ',year_AQ)     =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LD2PJsector|GSL_MMOBPJactivity','PJ',year_AQ)   =  sum((Gasoline),valEE(Gasoline,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_LD2thousand of vehiclessector|GSL_NV_HEMOB','thousand of vehicles',year_AQ) = eps ; 

*Railways
AQ(model_AQ,'NZS',Country,'08|TRA_OT_RAIPJsector|MDMOBPJactivity','PJ',year_AQ)      =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_RAIPJsector|MD_MMOBPJactivity','PJ',year_AQ)    =  sum((Diesel),valEE(Diesel,'28_LTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OT_RAIthousand of vehiclessector|MD_NV_HEMOB','thousand of vehicles',year_AQ) = eps ; 

*Coastal shipping, large vessels
AQ(model_AQ,'NZS',Country,'08|TRA_OTS_LPJsector|GASMOBPJactivity','PJ',year_AQ)      =  sum((Naturalgas),valEE(Naturalgas,'29_WTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OTS_LPJsector|HFMOBPJactivity','PJ',year_AQ)       =  sum((Heavyfueloil),valEE(Heavyfueloil,'29_WTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OTS_LPJsector|MDMOBPJactivity','PJ',year_AQ)       =  sum((Diesel),valEE(Diesel,'29_WTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 
AQ(model_AQ,'NZS',Country,'08|TRA_OTS_LPJsector|MD_MMOBPJactivity','PJ',year_AQ)     =  sum((Diesel),valEE(Diesel,'29_WTRP',Country,year_AQ,'NZS'))*ktoetoPJ+eps ; 

*================================================================= 09 Waste collection, tratment and disposal activities =====================================================================
*09 Waste collection, tratment and disposal activities - Wastewater without treatment: food manufacturing industry
AQ(model_AQ,'NZS',Country,'09|IND_FOOD_NOCkt CODsector|NOFPROCkt CODactivity','ktCOD',year_AQ)           = eps ; 

*09 Waste collection, tratment and disposal activities - Wastewater with treatment: food manufacturing industry
AQ(model_AQ,'NZS',Country,'09|IND_FOOD_TRMkt CODsector|NOFPROCkt CODactivity','ktCOD',year_AQ)           = eps ; 

*09 Waste collection, tratment and disposal activities - Wastewater without treatment: other organics manufacturing industry
AQ(model_AQ,'NZS',Country,'09|IND_OTH_NOCkt CODsector|NOFPROCkt CODactivity','ktCOD',year_AQ)            = eps ; 

*09 Waste collection, tratment and disposal activities - Wastewater with treatment: other organics manufacturing industry
AQ(model_AQ,'NZS',Country,'09|IND_OTH_TRMkt CODsector|NOFPROCkt CODactivity','ktCOD',year_AQ)            = eps ; 

*09 Waste collection, tratment and disposal activities - Wastewater without treatment: pulp and paper manufacturing industry
AQ(model_AQ,'NZS',Country,'09|IND_PAP_NOCkt CODsector|NOFPROCkt CODactivity','ktCOD',year_AQ)            = eps ; 

*09 Waste collection, tratment and disposal activities - Wastewater with treatment: pulp and paper manufacturing industry
AQ(model_AQ,'NZS',Country,'09|IND_PAP_TRMkt CODsector|NOFPROCkt CODactivity','ktCOD',year_AQ)            = eps ; 

*09 Waste collection, tratment and disposal activities - Solid waste: food manufacturing industry
AQ(model_AQ,'NZS',Country,'09|INW_FOODMt wastesector|10YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)       = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|INW_FOODMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)           = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Solid waste: other manufacturing industry
AQ(model_AQ,'NZS',Country,'09|INW_OTHMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)            = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Solid waste: pulp and paper manufacturing industry
AQ(model_AQ,'NZS',Country,'09|INW_PAPMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|INW_PAPMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)            = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Solid waste: rubber and plastics manufacturing industry
AQ(model_AQ,'NZS',Country,'09|INW_RUBMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)            = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Solid waste: textile manufacturing industry
AQ(model_AQ,'NZS',Country,'09|INW_TEXMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|INW_TEXMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)            = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Solid waste: wood manufacturing industry
AQ(model_AQ,'NZS',Country,'09|INW_WOODMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)       = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|INW_WOODMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)           = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Rural Municipal solid waste: food & garden
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_FOODMt wastesector|10YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)   = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_FOODMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)       = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Rural Municipal solid waste: glass
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_GLAMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Rural Municipal solid waste: metals
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_METMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Rural Municipal solid waste: other waste
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_OTHMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)    = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_OTHMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Rural Municipal solid waste: paper
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_PAPMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)    = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_PAPMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Rural Municipal solid waste: plastics
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_PLAMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Rural Municipal solid waste: textiles
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_TEXMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)    = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_TEXMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Rural Municipal solid waste: wood
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_WOODMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)   = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_RUR_WOODMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)       = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Urban Municipal solid waste: food & garden
AQ(model_AQ,'NZS',Country,'09|MSW_URB_FOODMt wastesector|10YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)   = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_URB_FOODMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)       = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Urban Municipal solid waste: glass
AQ(model_AQ,'NZS',Country,'09|MSW_URB_GLAMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Urban Municipal solid waste: metals
AQ(model_AQ,'NZS',Country,'09|MSW_URB_METMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Urban Municipal solid waste: other waste
AQ(model_AQ,'NZS',Country,'09|MSW_URB_OTHMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)    = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_URB_OTHMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Urban Municipal solid waste: paper
AQ(model_AQ,'NZS',Country,'09|MSW_URB_PAPMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)    = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_URB_PAPMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Urban Municipal solid waste: plastics
AQ(model_AQ,'NZS',Country,'09|MSW_URB_PLAMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Urban Municipal solid waste: textiles
AQ(model_AQ,'NZS',Country,'09|MSW_URB_TEXMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)    = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_URB_TEXMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)        = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Urban Municipal solid waste: wood
AQ(model_AQ,'NZS',Country,'09|MSW_URB_WOODMt wastesector|20YR_BPPROCMt wasteactivity','10billion$(2019)',year_AQ)   = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'09|MSW_URB_WOODMt wastesector|NOFPROCMt wasteactivity','10billion$(2019)',year_AQ)       = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Traditional (open-air) cremation
AQ(model_AQ,'NZS',Country,'09|RES_CREMM peoplesector|NOFPROCM peopleactivity','10billion$(2019)',year_AQ)           = TOT_POP(Country,year_AQ) ;

*09 Waste collection, tratment and disposal activities - Flaring in refineries
AQ(model_AQ,'NZS',Country,'09|WASTE_FLRPJsector|NOFPROCPJactivity','10billion$(2019)',year_AQ)                      = valGDP_MP_REAL(Country,year_AQ,'NZS') ; 

*09 Waste collection, tratment and disposal activities - Waste treatment and disposal
AQ(model_AQ,'NZS',Country,'09|WASTE_VOCkt VOCsector|EMIVOCPkt VOCactivity','ktVOC',year_AQ)                         = eps ; 

*09 Waste collection, tratment and disposal activities - Domestic wastewater
AQ(model_AQ,'NZS',Country,'09|WW_DOMM peoplesector|POPPROCM peopleactivity','10billion$(2019)',year_AQ)             = TOT_POP(Country,year_AQ) ; 

*09 Waste collection, tratment and disposal activities - Domestic wastewater: centralized collection without treatment
AQ(model_AQ,'NZS',Country,'09|WW_DOM_CC_NOCM peoplesector|POPPROCM peopleactivity','10billion$(2019)',year_AQ)      = TOT_POP(Country,year_AQ); 

*09 Waste collection, tratment and disposal activities - Domestic wastewater: centralized collection with treatment
AQ(model_AQ,'NZS',Country,'09|WW_DOM_CC_TRMM peoplesector|POPPROCM peopleactivity','10billion$(2019)',year_AQ)      = TOT_POP(Country,year_AQ) ; 

*09 Waste collection, tratment and disposal activities - Domestic wastewater: decentralized collection without treatment
AQ(model_AQ,'NZS',Country,'09|WW_DOM_DC_NOCM peoplesector|POPPROCM peopleactivity','10billion$(2019)',year_AQ)      = TOT_POP(Country,year_AQ) ; 

*09 Waste collection, tratment and disposal activities - Domestic wastewater: decentralized collection with treatment
AQ(model_AQ,'NZS',Country,'09|WW_DOM_DC_TRMM peoplesector|POPPROCM peopleactivity','10billion$(2019)',year_AQ)      = TOT_POP(Country,year_AQ) ; 

*================================================================= 10 Agriculture and farming =====================================================================
*10 Agriculture and farming - Ploughing, tilling, harvesting
AQ(model_AQ,'NZS',Country,'10|AGR_ARABLEM hasector|NOFAGRM haactivity','10billion$(2019)',year_AQ)                  = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Other cattle
AQ(model_AQ,'NZS',Country,'10|AGR_BEEFM animalssector|NOFAGRM animalsactivity','10billion$(2019)',year_AQ)          = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_BEEFM animalssector|OLAGRM animalsactivity','10billion$(2019)',year_AQ)           = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_BEEFM animalssector|OL_FAGRM animalsactivity','10billion$(2019)',year_AQ)         = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_BEEFM animalssector|OSAGRM animalsactivity','10billion$(2019)',year_AQ)           = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Dairy cattle
AQ(model_AQ,'NZS',Country,'10|AGR_COWSM animalssector|DLAGRM animalsactivity','10billion$(2019)',year_AQ)           = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_COWSM animalssector|DL_FAGRM animalsactivity','10billion$(2019)',year_AQ)         = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_COWSM animalssector|DSAGRM animalsactivity','10billion$(2019)',year_AQ)           = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_COWSM animalssector|NOFAGRM animalsactivity','10billion$(2019)',year_AQ)          = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Other livestock (sheep, horses)
AQ(model_AQ,'NZS',Country,'10|AGR_OTANIM animalssector|BSAGRM animalsactivity','10billion$(2019)',year_AQ)          = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_OTANIM animalssector|CMAGRM animalsactivity','10billion$(2019)',year_AQ)          = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_OTANIM animalssector|HOAGRM animalsactivity','10billion$(2019)',year_AQ)          = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_OTANIM animalssector|NOFAGRM animalsactivity','10billion$(2019)',year_AQ)         = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_OTANIM animalssector|SHAGRM animalsactivity','10billion$(2019)',year_AQ)          = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Pigs
AQ(model_AQ,'NZS',Country,'10|AGR_PIGM animalssector|NOFAGRM animalsactivity','10billion$(2019)',year_AQ)           = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_PIGM animalssector|PLAGRM animalsactivity','10billion$(2019)',year_AQ)            = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_PIGM animalssector|PSAGRM animalsactivity','10billion$(2019)',year_AQ)            = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Poultry
AQ(model_AQ,'NZS',Country,'10|AGR_POULTM animalssector|LHAGRM animalsactivity','10billion$(2019)',year_AQ)          = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_POULTM animalssector|NOFAGRM animalsactivity','10billion$(2019)',year_AQ)         = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|AGR_POULTM animalssector|OPAGRM animalsactivity','10billion$(2019)',year_AQ)          = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Manure application on large farms
AQ(model_AQ,'NZS',Country,'10|APPLIC_Lkt Nsector|MANURE_NAGRkt Nactivity','10billion$(2019)',year_AQ)               = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|APPLIC_Lkt Nsector|RICE_NAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|APPLIC_Lkt Nsector|SOIL_NAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Manure application on medium farms
AQ(model_AQ,'NZS',Country,'10|APPLIC_Mkt Nsector|MANURE_NAGRkt Nactivity','10billion$(2019)',year_AQ)               = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|APPLIC_Mkt Nsector|RICE_NAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|APPLIC_Mkt Nsector|SOIL_NAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Manure application on small farms
AQ(model_AQ,'NZS',Country,'10|APPLIC_Skt Nsector|MANURE_NAGRkt Nactivity','10billion$(2019)',year_AQ)               = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|APPLIC_Skt Nsector|RICE_NAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|APPLIC_Skt Nsector|SOIL_NAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Milk yield over 3000 kg/animal treshold
AQ(model_AQ,'NZS',Country,'10|COWS_3000_MILKkt milksector|DLAGRkt milkactivity','10billion$(2019)',year_AQ)         = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|COWS_3000_MILKkt milksector|DL_FAGRkt milkactivity','10billion$(2019)',year_AQ)       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|COWS_3000_MILKkt milksector|DSAGRkt milkactivity','10billion$(2019)',year_AQ)         = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Mineral N fertilizers use (excl. urea)
AQ(model_AQ,'NZS',Country,'10|FCON_OTHNkt Nsector|NOFAGRkt Nactivity','10billion$(2019)',year_AQ)                   = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Urea application (incl. ABC)
AQ(model_AQ,'NZS',Country,'10|FCON_UREAkt Nsector|NOFAGRkt Nactivity','10billion$(2019)',year_AQ)                   = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Grassland and soils
AQ(model_AQ,'NZS',Country,'10|GRASSLANDM hasector|AREAAGRM haactivity','10billion$(2019)',year_AQ)                  = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|GRASSLANDMt biomasssector|FIRE_MASSAGRMt biomassactivity','10billion$(2019)',year_AQ) = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Grazing on large farms
AQ(model_AQ,'NZS',Country,'10|GRAZE_Lkt Nsector|EX_CTTLAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|GRAZE_Lkt Nsector|EX_SHAGRkt Nactivity','10billion$(2019)',year_AQ)                   = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Grazing on medium farms
AQ(model_AQ,'NZS',Country,'10|GRAZE_Mkt Nsector|EX_CTTLAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|GRAZE_Mkt Nsector|EX_SHAGRkt Nactivity','10billion$(2019)',year_AQ)                   = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Grazing on small farms
AQ(model_AQ,'NZS',Country,'10|GRAZE_Skt Nsector|EX_CTTLAGRkt Nactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|GRAZE_Skt Nsector|EX_SHAGRkt Nactivity','10billion$(2019)',year_AQ)                   = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Organic soils
AQ(model_AQ,'NZS',Country,'10|HISTOSOLSM hasector|AREAAGRM haactivity','10billion$(2019)',year_AQ)                  = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Manure treatment and manure distributed on soils
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|BSAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|CMAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|DLAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|DSAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|HOAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|LHAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|OLAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|OPAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|OSAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|PLAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|PSAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 
AQ(model_AQ,'NZS',Country,'10|MANUREkt Nsector|SHAGRkt Nactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Continously flooded rice cultivation area
AQ(model_AQ,'NZS',Country,'10|RICE_FLOODM hasector|AREAAGRM haactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Intermittently flooded rice cultivation area
AQ(model_AQ,'NZS',Country,'10|RICE_INTERM hasector|AREAAGRM haactivity','10billion$(2019)',year_AQ)                 = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Storage & handling of agricultural crops
AQ(model_AQ,'NZS',Country,'10|STH_AGRMtsector|NOFPROCMtactivity','10billion$(2019)',year_AQ)                        = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*10 Agriculture and farming - Agricultural waste burning
AQ(model_AQ,'NZS',Country,'10|WASTE_AGRMtsector|NOFAGRMtactivity','10billion$(2019)',year_AQ)                       = valXST('01_AGRICULT',Country,year_AQ,'NZS') ; 

*================================================================= 11 Other sources and sinks =====================================================================
AQ(model_AQ,'NZS',Country,'11|FORESTMt biomasssector|FIRE_MASSAGRMt biomassactivity','Mtbiomass',year_AQ) = eps ; 
AQ(model_AQ,'NZS',Country,'11|OTH_NH3_EMISSkt NH3sector|NOFAGRkt NH3activity','ktNH3',year_AQ) = eps ; 


execute_unload 'Output_w-t\NZS_Results_AQ_Linkage',
 AQ
 
;