SET

model_AQ
/
 'GUIDE-GLOBAL-CGE 1'  Guide Global Model Verion 1
/

Country(z)
/
 '01_KOR',
 '02_CHN',
 '03_JPN',
 '04_RUS',
 '05_MNG',
 '06_PRK',
 '07_NAM',
 '08_LAM',
 '09_WEU',
 '10_EEU',
 '11_FSU',
 '12_MEA',
 '13_AFR',
 '14_CPA',
 '15_SAS',
 '16_PAS',
 '17_PAO'
/

Scenario_name
/
 'BAU',
 'CPS',
 'NZS'
/

variable_AQ
/
    '01|CON_COMBPJsector|BC1ENEPJactivity',
    '01|CON_COMBPJsector|BC2ENEPJactivity',
    '01|CON_COMBPJsector|DCENEPJactivity',
    '01|CON_COMBPJsector|GASENEPJactivity',
    '01|CON_COMBPJsector|GSLENEPJactivity',
    '01|CON_COMBPJsector|HC1ENEPJactivity',
    '01|CON_COMBPJsector|HC2ENEPJactivity',
    '01|CON_COMBPJsector|HC3ENEPJactivity',
    '01|CON_COMBPJsector|HFENEPJactivity',
    '01|CON_COMBPJsector|LPGENEPJactivity',
    '01|CON_COMBPJsector|MDENEPJactivity',
    '01|CON_COMB1PJsector|BC1ENEPJactivity',
    '01|CON_COMB1PJsector|BC2ENEPJactivity',
    '01|CON_COMB1PJsector|HC1ENEPJactivity',
    '01|CON_COMB1PJsector|HC2ENEPJactivity',
    '01|CON_COMB1PJsector|HC3ENEPJactivity',
    '01|CON_COMB2PJsector|BC1ENEPJactivity',
    '01|CON_COMB2PJsector|BC2ENEPJactivity',
    '01|CON_COMB2PJsector|HC1ENEPJactivity',
    '01|CON_COMB2PJsector|HC2ENEPJactivity',
    '01|CON_COMB2PJsector|HC3ENEPJactivity',
    '01|CON_COMB3PJsector|BC1ENEPJactivity',
    '01|CON_COMB3PJsector|BC2ENEPJactivity',
    '01|CON_COMB3PJsector|HC1ENEPJactivity',
    '01|CON_COMB3PJsector|HC2ENEPJactivity',
    '01|CON_COMB3PJsector|HC3ENEPJactivity',
    '01|PP_ENGPJsector|GASENEPJactivity',
    '01|PP_ENGPJsector|GAS_MENEPJactivity',
    '01|PP_ENGPJsector|HFENEPJactivity',
    '01|PP_ENGPJsector|MDENEPJactivity',
    '01|PP_ENGPJsector|MD_MENEPJactivity',
    '01|PP_EX_LPJsector|BC1ENEPJactivity',
    '01|PP_EX_LPJsector|HC1ENEPJactivity',
    '01|PP_EX_LPJsector|HC2ENEPJactivity',
    '01|PP_EX_LPJsector|HC3ENEPJactivity',
    '01|PP_EX_OTHPJsector|DCENEPJactivity',
    '01|PP_EX_OTHPJsector|GASENEPJactivity',
    '01|PP_EX_OTHPJsector|GSLENEPJactivity',
    '01|PP_EX_OTHPJsector|HFENEPJactivity',
    '01|PP_EX_OTHPJsector|MDENEPJactivity',
    '01|PP_EX_OTHPJsector|OS1ENEPJactivity',
    '01|PP_EX_OTHPJsector|OS2ENEPJactivity',
    '01|PP_EX_OTHPJsector|WSFNRENEPJactivity',
    '01|PP_EX_SPJsector|BC1ENEPJactivity',
    '01|PP_EX_SPJsector|HC1ENEPJactivity',
    '01|PP_IGCCPJsector|HC1ENEPJactivity',
    '01|PP_IGCCPJsector|HC2ENEPJactivity',
    '01|PP_IGCCPJsector|HC3ENEPJactivity',
    '01|PP_MODPJsector|BC1ENEPJactivity',
    '01|PP_MODPJsector|GASENEPJactivity',
    '01|PP_MODPJsector|HC1ENEPJactivity',
    '01|PP_MODPJsector|HC2ENEPJactivity',
    '01|PP_MODPJsector|HC3ENEPJactivity',
    '01|PP_NEWPJsector|DCENEPJactivity',
    '01|PP_NEWPJsector|FWDENEPJactivity',
    '01|PP_NEWPJsector|GASENEPJactivity',
    '01|PP_NEWPJsector|GSLENEPJactivity',
    '01|PP_NEWPJsector|HFENEPJactivity',
    '01|PP_NEWPJsector|MDENEPJactivity',
    '01|PP_NEWPJsector|OS1ENEPJactivity',
    '01|PP_NEWPJsector|OS2ENEPJactivity',
    '01|PP_NEWPJsector|WSFNRENEPJactivity',
    '01|PP_NEWPJsector|WSFRENEPJactivity',
    '01|PP_NEW_LPJsector|BC1ENEPJactivity',
    '01|PP_NEW_LPJsector|HC1ENEPJactivity',
    '01|PP_NEW_LPJsector|HC2ENEPJactivity',
    '01|PP_NEW_LPJsector|HC3ENEPJactivity',
    '02|DOMPJsector|BC1ENEPJactivity',
    '02|DOMPJsector|BIOGENEPJactivity',
    '02|DOMPJsector|CHCOAENEPJactivity',
    '02|DOMPJsector|DCENEPJactivity',
    '02|DOMPJsector|GASENEPJactivity',
    '02|DOMPJsector|GSLENEPJactivity',
    '02|DOMPJsector|HC1ENEPJactivity',
    '02|DOMPJsector|HC2ENEPJactivity',
    '02|DOMPJsector|HC3ENEPJactivity',
    '02|DOMPJsector|HFENEPJactivity',
    '02|DOMPJsector|LPGENEPJactivity',
    '02|DOMPJsector|MDENEPJactivity',
    '02|DOMPJsector|OS1ENEPJactivity',
    '02|DOM_FPLACEPJsector|FWDENEPJactivity',
    '02|DOM_MB_APJsector|BC1ENEPJactivity',
    '02|DOM_MB_APJsector|DCENEPJactivity',
    '02|DOM_MB_APJsector|FWDENEPJactivity',
    '02|DOM_MB_APJsector|HC1ENEPJactivity',
    '02|DOM_MB_APJsector|HC2ENEPJactivity',
    '02|DOM_MB_APJsector|HC3ENEPJactivity',
    '02|DOM_MB_MPJsector|BC1ENEPJactivity',
    '02|DOM_MB_MPJsector|DCENEPJactivity',
    '02|DOM_MB_MPJsector|FWDENEPJactivity',
    '02|DOM_MB_MPJsector|HC1ENEPJactivity',
    '02|DOM_MB_MPJsector|HC2ENEPJactivity',
    '02|DOM_MB_MPJsector|HC3ENEPJactivity',
    '02|DOM_PITPJsector|ARDENEPJactivity',
    '02|DOM_PITPJsector|FWDENEPJactivity',
    '02|DOM_SHB_APJsector|ARDENEPJactivity',
    '02|DOM_SHB_APJsector|FWDENEPJactivity',
    '02|DOM_SHB_APJsector|HC1ENEPJactivity',
    '02|DOM_SHB_APJsector|HC2ENEPJactivity',
    '02|DOM_SHB_APJsector|HC3ENEPJactivity',
    '02|DOM_SHB_MPJsector|BC1ENEPJactivity',
    '02|DOM_SHB_MPJsector|DCENEPJactivity',
    '02|DOM_SHB_MPJsector|FWDENEPJactivity',
    '02|DOM_SHB_MPJsector|HC1ENEPJactivity',
    '02|DOM_SHB_MPJsector|HC2ENEPJactivity',
    '02|DOM_SHB_MPJsector|HC3ENEPJactivity',
    '02|DOM_STOVE_CPJsector|ARDENEPJactivity',
    '02|DOM_STOVE_CPJsector|BC1ENEPJactivity',
    '02|DOM_STOVE_CPJsector|DCENEPJactivity',
    '02|DOM_STOVE_CPJsector|FWDENEPJactivity',
    '02|DOM_STOVE_CPJsector|HC1ENEPJactivity',
    '02|DOM_STOVE_CPJsector|HC2ENEPJactivity',
    '02|DOM_STOVE_CPJsector|HC3ENEPJactivity',
    '02|DOM_STOVE_HPJsector|ARDENEPJactivity',
    '02|DOM_STOVE_HPJsector|BC1ENEPJactivity',
    '02|DOM_STOVE_HPJsector|DCENEPJactivity',
    '02|DOM_STOVE_HPJsector|FWDENEPJactivity',
    '02|DOM_STOVE_HPJsector|HC1ENEPJactivity',
    '02|DOM_STOVE_HPJsector|HC2ENEPJactivity',
    '02|DOM_STOVE_HPJsector|HC3ENEPJactivity',
    '03|IN_BO_CHEMPJsector|BC1ENEPJactivity',
    '03|IN_BO_CHEMPJsector|DCENEPJactivity',
    '03|IN_BO_CHEMPJsector|GASENEPJactivity',
    '03|IN_BO_CHEMPJsector|HC1ENEPJactivity',
    '03|IN_BO_CHEMPJsector|HC2ENEPJactivity',
    '03|IN_BO_CHEMPJsector|HC3ENEPJactivity',
    '03|IN_BO_CHEMPJsector|HFENEPJactivity',
    '03|IN_BO_CHEMPJsector|OS1ENEPJactivity',
    '03|IN_BO_CONPJsector|BC1ENEPJactivity',
    '03|IN_BO_CONPJsector|GASENEPJactivity',
    '03|IN_BO_CONPJsector|HC1ENEPJactivity',
    '03|IN_BO_CONPJsector|HFENEPJactivity',
    '03|IN_BO_CONPJsector|OS1ENEPJactivity',
    '03|IN_BO_OTHPJsector|DCENEPJactivity',
    '03|IN_BO_OTHPJsector|GASENEPJactivity',
    '03|IN_BO_OTHPJsector|GSLENEPJactivity',
    '03|IN_BO_OTHPJsector|HFENEPJactivity',
    '03|IN_BO_OTHPJsector|LPGENEPJactivity',
    '03|IN_BO_OTHPJsector|MDENEPJactivity',
    '03|IN_BO_OTHPJsector|OS1ENEPJactivity',
    '03|IN_BO_OTHPJsector|OS2ENEPJactivity',
    '03|IN_BO_OTHPJsector|WSFNRENEPJactivity',
    '03|IN_BO_OTH_LPJsector|BC1ENEPJactivity',
    '03|IN_BO_OTH_LPJsector|HC1ENEPJactivity',
    '03|IN_BO_OTH_LPJsector|HC2ENEPJactivity',
    '03|IN_BO_OTH_LPJsector|HC3ENEPJactivity',
    '03|IN_BO_OTH_SPJsector|BC1ENEPJactivity',
    '03|IN_BO_OTH_SPJsector|HC1ENEPJactivity',
    '03|IN_BO_OTH_SPJsector|HC2ENEPJactivity',
    '03|IN_BO_OTH_SPJsector|HC3ENEPJactivity',
    '03|IN_BO_PAPPJsector|DCENEPJactivity',
    '03|IN_BO_PAPPJsector|GASENEPJactivity',
    '03|IN_BO_PAPPJsector|HC1ENEPJactivity',
    '03|IN_BO_PAPPJsector|HC2ENEPJactivity',
    '03|IN_BO_PAPPJsector|HC3ENEPJactivity',
    '03|IN_BO_PAPPJsector|HFENEPJactivity',
    '03|IN_BO_PAPPJsector|OS1ENEPJactivity',
    '03|IN_BO_PAPPJsector|OS2ENEPJactivity',
    '03|IN_BO_PAPPJsector|WSFNRENEPJactivity',
    '03|IN_OCPJsector|BC1ENEPJactivity',
    '03|IN_OCPJsector|DCENEPJactivity',
    '03|IN_OCPJsector|GASENEPJactivity',
    '03|IN_OCPJsector|GSLENEPJactivity',
    '03|IN_OCPJsector|HC1ENEPJactivity',
    '03|IN_OCPJsector|HC2ENEPJactivity',
    '03|IN_OCPJsector|HC3ENEPJactivity',
    '03|IN_OCPJsector|HFENEPJactivity',
    '03|IN_OCPJsector|LPGENEPJactivity',
    '03|IN_OCPJsector|MDENEPJactivity',
    '03|IN_OCPJsector|OS1ENEPJactivity',
    '03|IN_OC3PJsector|BC1ENEPJactivity',
    '03|IN_OC3PJsector|HC1ENEPJactivity',
    '03|IN_OC3PJsector|HC2ENEPJactivity',
    '03|IN_OC3PJsector|HC3ENEPJactivity',
    '03|IN_OCTOTPJsector|BC1ENEPJactivity',
    '03|IN_OCTOTPJsector|DCENEPJactivity',
    '03|IN_OCTOTPJsector|GASENEPJactivity',
    '03|IN_OCTOTPJsector|GSLENEPJactivity',
    '03|IN_OCTOTPJsector|HC1ENEPJactivity',
    '03|IN_OCTOTPJsector|HC2ENEPJactivity',
    '03|IN_OCTOTPJsector|HC3ENEPJactivity',
    '03|IN_OCTOTPJsector|HFENEPJactivity',
    '03|IN_OCTOTPJsector|LPGENEPJactivity',
    '03|IN_OCTOTPJsector|MDENEPJactivity',
    '03|IN_OCTOTPJsector|WSFNRENEPJactivity',
    '03|NONENPJsector|BC1ENEPJactivity',
    '03|NONENPJsector|DCENEPJactivity',
    '03|NONENPJsector|GASENEPJactivity',
    '03|NONENPJsector|GSLENEPJactivity',
    '03|NONENPJsector|HC1ENEPJactivity',
    '03|NONENPJsector|HC2ENEPJactivity',
    '03|NONENPJsector|HC3ENEPJactivity',
    '03|NONENPJsector|HFENEPJactivity',
    '03|NONENPJsector|LPGENEPJactivity',
    '03|NONENPJsector|MDENEPJactivity',
    '03|NONENPJsector|OS2ENEPJactivity',
    '03|OTHER_N2Okt N2Osector|NOFPROCkt N2Oactivity',
    '03|OTHER_NOXkt NOxsector|NOFPROCkt NOxactivity',
    '03|OTHER_SO2kt SO2sector|NOFPROCkt SO2activity',
    '03|PR_ALSECMtsector|NOFPROCMtactivity',
    '03|PR_BRICKMtsector|NOFPROCMtactivity',
    '03|PR_CASTMtsector|NOFPROCMtactivity',
    '03|PR_CEMMtsector|NOFPROCMtactivity',
    '03|PR_GLASSMtsector|NOFPROCMtactivity',
    '03|PR_LIMEMtsector|NOFPROCMtactivity',
    '03|PR_SINTMtsector|NOFPROCMtactivity',
    '04|CONSTRUCTM m2sector|NOFPROCM m2activity',
    '04|FERTPROkt Nsector|NOFAGRkt Nactivity',
    '04|INORGkt VOCsector|EMIVOCPkt VOCactivity',
    '04|IO_NH3_EMISSkt NH3sector|NOFAGRkt NH3activity',
    '04|MINE_OTHMtsector|NOFPROCMtactivity',
    '04|ORG_STOREkt VOCsector|EMIVOCPkt VOCactivity',
    '04|OTH_ORG_PRkt VOCsector|EMIVOCPkt VOCactivity',
    '04|PR_ADIPMtsector|NOFPROCMtactivity',
    '04|PR_ALPRIMMtsector|NOFPROCMtactivity',
    '04|PR_BAOXMtsector|NOFPROCMtactivity',
    '04|PR_BRIQMtsector|NOFPROCMtactivity',
    '04|PR_CAST_FMtsector|NOFPROCMtactivity',
    '04|PR_CBLACKMtsector|NOFPROCMtactivity',
    '04|PR_COKEMtsector|NOFPROCMtactivity',
    '04|PR_EARCMtsector|NOFPROCMtactivity',
    '04|PR_FERTMtsector|NOFAGRMtactivity',
    '04|PR_NIACMtsector|NOFPROCMtactivity',
    '04|PR_OT_NFMEMtsector|NOFPROCMtactivity',
    '04|PR_OTHERMtsector|NOFPROCMtactivity',
    '04|PR_PELLMtsector|NOFPROCMtactivity',
    '04|PR_PIGIMtsector|NOFPROCMtactivity',
    '04|PR_PIGI_FMtsector|NOFPROCMtactivity',
    '04|PR_PULPMtsector|NOFPROCMtactivity',
    '04|PR_REFMtsector|CRUPROCMtactivity',
    '04|PR_REFMtsector|NOFPROCMtactivity',
    '04|PR_SINT_FMtsector|NOFPROCMtactivity',
    '04|PR_SMIND_FM peoplesector|NOFPROCM peopleactivity',
    '04|PR_SUACMtsector|NOFPROCMtactivity',
    '04|STCRACK_PRktsector|EPVOCPktactivity',
    '04|STH_FEOREMtsector|NOFPROCMtactivity',
    '04|STH_NPKMtsector|NOFPROCMtactivity',
    '04|STH_OTH_INMtsector|NOFPROCMtactivity',
    '04|FOODM peoplesector|POPVOCPM peopleactivity',
    '04|OTHER_VOCkt VOCsector|EMIVOCPkt VOCactivity',
    '05|COAL_ABANDkt CH4sector|NOFPROCkt CH4activity',
    '05|CON_LOSSPJsector|BC1ENEPJactivity',
    '05|CON_LOSSPJsector|DCENEPJactivity',
    '05|CON_LOSSPJsector|GASENEPJactivity',
    '05|CON_LOSSPJsector|HC1ENEPJactivity',
    '05|CON_LOSSPJsector|HC2ENEPJactivity',
    '05|CON_LOSSPJsector|HC3ENEPJactivity',
    '05|CON_LOSSPJsector|HFENEPJactivity',
    '05|CON_LOSSPJsector|LPGENEPJactivity',
    '05|CON_LOSSPJsector|MDENEPJactivity',
    '05|CON_LOSSPJsector|OS1ENEPJactivity',
    '05|D_GASSTPJsector|GSLMOBPJactivity',
    '05|D_REFDEPPJsector|GSLMOBPJactivity',
    '05|D_REFDEPPJsector|MDMOBPJactivity',
    '05|D_REFDEP_SPJsector|GSLENEPJactivity',
    '05|D_REFDEP_SPJsector|MDENEPJactivity',
    '05|EXD_LQkt VOCsector|EMIVOCPkt VOCactivity',
    '05|MINE_BCMtsector|NOFPROCMtactivity',
    '05|MINE_BC_POSTMtsector|NOFPROCMtactivity',
    '05|MINE_BC_PREMtsector|NOFPROCMtactivity',
    '05|MINE_BC_VAMMtsector|NOFPROCMtactivity',
    '05|MINE_HCMtsector|NOFPROCMtactivity',
    '05|MINE_HC_POSTMtsector|NOFPROCMtactivity',
    '05|MINE_HC_PREMtsector|NOFPROCMtactivity',
    '05|MINE_HC_VAMMtsector|NOFPROCMtactivity',
    '05|PROD_AGASPJsector|CRUPROCPJactivity',
    '05|PROD_AGASPJsector|GASPROCPJactivity',
    '05|PROD_LEAKPJsector|CB_GASPROCPJactivity',
    '05|PROD_LEAKPJsector|CRUPROCPJactivity',
    '05|PROD_LEAKPJsector|GASPROCPJactivity',
    '05|PROD_LEAKPJsector|S_GASPROCPJactivity',
    '05|PROD_LEAKPJsector|T_GASPROCPJactivity',
    '05|STH_COALMtsector|NOFPROCMtactivity',
    '05|TRA_F_CH4PJsector|GASMOBPJactivity',
    '05|TRANSPJ gas transmittedsector|GASPROCPJ gas transmitted',
    '06|AUTO_Pkvehsector|VEHVOCPkvehactivity',
    '06|COILmln m2sector|SCVOCPmln m2activity',
    '06|DECO_Pktsector|PNTVOCPktactivity',
    '06|DEGRkt SLVsector|SLVVOCPkt SLVactivity',
    '06|DOM_OSM peoplesector|POPVOCPM peopleactivity',
    '06|DRYkt TEXsector|TEXVOCPkt TEXactivity',
    '06|FATOILktsector|SDVOCPktactivity',
    '06|GLUE_INTktsector|ADHVOCPktactivity',
    '06|IND_OSkt VOCsector|EMIVOCPkt VOCactivity',
    '06|IND_P_CNTktsector|PNTVOCPktactivity',
    '06|IND_P_OTktsector|PNTVOCPktactivity',
    '06|LEATHERktsector|CTGVOCPktactivity',
    '06|N2O_USEM peoplesector|POPPROCM peopleactivity',
    '06|PHARMAkt SLVsector|SLVVOCPkt SLVactivity',
    '06|PISkt PGsector|PGVOCPkt PGactivity',
    '06|PLSTYR_PRktsector|EPSVOCPktactivity',
    '06|PRT_OFFSkt INKsector|INKVOCPkt INKactivity',
    '06|PRT_PACKkt INKsector|INKVOCPkt INKactivity',
    '06|PRT_PUBkt INKsector|INKVOCPkt INKactivity',
    '06|PRT_SCRkt INKsector|INKVOCPkt INKactivity',
    '06|PVC_PRktsector|PVCVOCPktactivity',
    '06|RES_BBQM peoplesector|NOFPROCM peopleactivity',
    '06|RES_CIGARM peoplesector|NOFPROCM peopleactivity',
    '06|RES_FIREWM peoplesector|NOFPROCM peopleactivity',
    '06|SHOEmln pairssector|SHOVOCPmln pairsactivity',
    '06|SYNTH_RUBktsector|RUBVOCPktactivity',
    '06|TYRESktsector|TYRVOCPktactivity',
    '06|VEHR_Pktsector|PNTVOCPktactivity',
    '06|VEHTRM peoplesector|POPVOCPM peopleactivity',
    '06|WIREktsector|ENWVOCPktactivity',
    '06|WOODmln m3sector|TIMVOCPmln m3activity',
    '06|WOOD_Pmln m2sector|SCVOCPmln m2activity',
    '07|LEAD_GASOLPJsector|LFLMOBPJactivity',
    '07|TRA_RD_EVPJsector|GSLMOBPJactivity',
    '07|TRA_RD_HDBGvkmsector|ABRASIONMOBGvkmactivity',
    '07|TRA_RD_HDBGvkmsector|BRAKEMOBGvkmactivity',
    '07|TRA_RD_HDBPJsector|GASMOBPJactivity',
    '07|TRA_RD_HDBPJsector|GAS_MMOBPJactivity',
    '07|TRA_RD_HDBPJsector|GSLMOBPJactivity',
    '07|TRA_RD_HDBPJsector|GSL_MMOBPJactivity',
    '07|TRA_RD_HDBthousand of vehiclessector|GSL_NV_HEMOB',
    '07|TRA_RD_HDBPJsector|H2MOBPJactivity',
    '07|TRA_RD_HDBPJsector|LPGMOBPJactivity',
    '07|TRA_RD_HDBPJsector|MDMOBPJactivity',
    '07|TRA_RD_HDBPJsector|MD_MMOBPJactivity',
    '07|TRA_RD_HDBthousand of vehiclessector|MD_NV_HEMOB',
    '07|TRA_RD_HDBGvkmsector|TYREMOBGvkmactivity',
    '07|TRA_RD_HDTGvkmsector|ABRASIONMOBGvkmactivity',
    '07|TRA_RD_HDTGvkmsector|BRAKEMOBGvkmactivity',
    '07|TRA_RD_HDTPJsector|GASMOBPJactivity',
    '07|TRA_RD_HDTPJsector|GAS_MMOBPJactivity',
    '07|TRA_RD_HDTPJsector|GSLMOBPJactivity',
    '07|TRA_RD_HDTPJsector|GSL_MMOBPJactivity',
    '07|TRA_RD_HDTthousand of vehiclessector|GSL_NV_HEMOB',
    '07|TRA_RD_HDTPJsector|H2MOBPJactivity',
    '07|TRA_RD_HDTPJsector|LPGMOBPJactivity',
    '07|TRA_RD_HDTPJsector|MDMOBPJactivity',
    '07|TRA_RD_HDTPJsector|MD_MMOBPJactivity',
    '07|TRA_RD_HDTthousand of vehiclessector|MD_NV_HEMOB',
    '07|TRA_RD_HDTGvkmsector|TYREMOBGvkmactivity',
    '07|TRA_RD_LD2Gvkmsector|ABRASIONMOBGvkmactivity',
    '07|TRA_RD_LD2Gvkmsector|BRAKEMOBGvkmactivity',
    '07|TRA_RD_LD2PJsector|GSLMOBPJactivity',
    '07|TRA_RD_LD2PJsector|GSL_MMOBPJactivity',
    '07|TRA_RD_LD2thousand of vehiclessector|GSL_NV_HEMOB',
    '07|TRA_RD_LD2Gvkmsector|TYREMOBGvkmactivity',
    '07|TRA_RD_LD4CGvkmsector|ABRASIONMOBGvkmactivity',
    '07|TRA_RD_LD4CGvkmsector|BRAKEMOBGvkmactivity',
    '07|TRA_RD_LD4CPJsector|GASMOBPJactivity',
    '07|TRA_RD_LD4CPJsector|GAS_MMOBPJactivity',
    '07|TRA_RD_LD4CPJsector|GSLMOBPJactivity',
    '07|TRA_RD_LD4CPJsector|GSL_MMOBPJactivity',
    '07|TRA_RD_LD4Cthousand of vehiclessector|GSL_NV_HEMOB',
    '07|TRA_RD_LD4CPJsector|H2MOBPJactivity',
    '07|TRA_RD_LD4CPJsector|LPGMOBPJactivity',
    '07|TRA_RD_LD4CPJsector|MDMOBPJactivity',
    '07|TRA_RD_LD4CPJsector|MD_MMOBPJactivity',
    '07|TRA_RD_LD4Cthousand of vehiclessector|MD_NV_HEMOB',
    '07|TRA_RD_LD4CGvkmsector|TYREMOBGvkmactivity',
    '07|TRA_RD_LD4C_EVPJsector|GSLMOBPJactivity',
    '07|TRA_RD_LD4TGvkmsector|ABRASIONMOBGvkmactivity',
    '07|TRA_RD_LD4TGvkmsector|BRAKEMOBGvkmactivity',
    '07|TRA_RD_LD4TPJsector|GASMOBPJactivity',
    '07|TRA_RD_LD4TPJsector|GAS_MMOBPJactivity',
    '07|TRA_RD_LD4TPJsector|GSLMOBPJactivity',
    '07|TRA_RD_LD4TPJsector|GSL_MMOBPJactivity',
    '07|TRA_RD_LD4Tthousand of vehiclessector|GSL_NV_HEMOB',
    '07|TRA_RD_LD4TPJsector|H2MOBPJactivity',
    '07|TRA_RD_LD4TPJsector|LPGMOBPJactivity',
    '07|TRA_RD_LD4TPJsector|MDMOBPJactivity',
    '07|TRA_RD_LD4TPJsector|MD_MMOBPJactivity',
    '07|TRA_RD_LD4Tthousand of vehiclessector|MD_NV_HEMOB',
    '07|TRA_RD_LD4TGvkmsector|TYREMOBGvkmactivity',
    '07|TRA_RD_LD4T_EVPJsector|GSLMOBPJactivity',
    '07|TRA_RD_M4Gvkmsector|ABRASIONMOBGvkmactivity',
    '07|TRA_RD_M4Gvkmsector|BRAKEMOBGvkmactivity',
    '07|TRA_RD_M4PJsector|GSLMOBPJactivity',
    '07|TRA_RD_M4PJsector|GSL_MMOBPJactivity',
    '07|TRA_RD_M4thousand of vehiclessector|GSL_NV_HEMOB',
    '07|TRA_RD_M4Gvkmsector|TYREMOBGvkmactivity',
    '07|TRA_RD_OTHGvkmsector|ABRASIONMOBGvkmactivity',
    '07|TRA_RD_OTHGvkmsector|BRAKEMOBGvkmactivity',
    '07|TRA_RD_OTHPJsector|GSLMOBPJactivity',
    '07|TRA_RD_OTHthousand of vehiclessector|GSL_NV_HEMOB',
    '07|TRA_RD_OTHGvkmsector|TYREMOBGvkmactivity',
    '08|TRA_OTPJsector|HC1MOBPJactivity',
    '08|TRA_OT_AGRPJsector|GSLMOBPJactivity',
    '08|TRA_OT_AGRPJsector|GSL_MMOBPJactivity',
    '08|TRA_OT_AGRthousand of vehiclessector|GSL_NV_HEMOB',
    '08|TRA_OT_AGRPJsector|MDMOBPJactivity',
    '08|TRA_OT_AGRPJsector|MD_MMOBPJactivity',
    '08|TRA_OT_AGRthousand of vehiclessector|MD_NV_HEMOB',
    '08|TRA_OT_AIRPJsector|GSLMOBPJactivity',
    '08|TRA_OT_AIR_DOMPJsector|GSLMOBPJactivity',
    '08|TRA_OT_CNSPJsector|GASMOBPJactivity',
    '08|TRA_OT_CNSPJsector|GAS_MMOBPJactivity',
    '08|TRA_OT_CNSPJsector|GSLMOBPJactivity',
    '08|TRA_OT_CNSPJsector|GSL_MMOBPJactivity',
    '08|TRA_OT_CNSthousand of vehiclessector|GSL_NV_HEMOB',
    '08|TRA_OT_CNSPJsector|LPGMOBPJactivity',
    '08|TRA_OT_CNSPJsector|MDMOBPJactivity',
    '08|TRA_OT_CNSPJsector|MD_MMOBPJactivity',
    '08|TRA_OT_CNSthousand of vehiclessector|MD_NV_HEMOB',
    '08|TRA_OT_EVPJsector|GSLMOBPJactivity',
    '08|TRA_OT_INWPJsector|H2MOBPJactivity',
    '08|TRA_OT_INWPJsector|MDMOBPJactivity',
    '08|TRA_OT_INWPJsector|MD_MMOBPJactivity',
    '08|TRA_OT_INWthousand of vehiclessector|MD_NV_HEMOB',
    '08|TRA_OT_LBPJsector|GASMOBPJactivity',
    '08|TRA_OT_LBPJsector|GAS_MMOBPJactivity',
    '08|TRA_OT_LBPJsector|GSLMOBPJactivity',
    '08|TRA_OT_LBPJsector|GSL_MMOBPJactivity',
    '08|TRA_OT_LBthousand of vehiclessector|GSL_NV_HEMOB',
    '08|TRA_OT_LBPJsector|LPGMOBPJactivity',
    '08|TRA_OT_LBPJsector|MDMOBPJactivity',
    '08|TRA_OT_LBPJsector|MD_MMOBPJactivity',
    '08|TRA_OT_LBthousand of vehiclessector|MD_NV_HEMOB',
    '08|TRA_OT_LD2PJsector|GSLMOBPJactivity',
    '08|TRA_OT_LD2PJsector|GSL_MMOBPJactivity',
    '08|TRA_OT_LD2thousand of vehiclessector|GSL_NV_HEMOB',
    '08|TRA_OT_RAIPJsector|MDMOBPJactivity',
    '08|TRA_OT_RAIPJsector|MD_MMOBPJactivity',
    '08|TRA_OT_RAIthousand of vehiclessector|MD_NV_HEMOB',
    '08|TRA_OTS_LPJsector|GASMOBPJactivity',
    '08|TRA_OTS_LPJsector|HFMOBPJactivity',
    '08|TRA_OTS_LPJsector|MDMOBPJactivity',
    '08|TRA_OTS_LPJsector|MD_MMOBPJactivity',
    '09|IND_FOOD_NOCkt CODsector|NOFPROCkt CODactivity',
    '09|IND_FOOD_TRMkt CODsector|NOFPROCkt CODactivity',
    '09|IND_OTH_NOCkt CODsector|NOFPROCkt CODactivity',
    '09|IND_OTH_TRMkt CODsector|NOFPROCkt CODactivity',
    '09|IND_PAP_NOCkt CODsector|NOFPROCkt CODactivity',
    '09|IND_PAP_TRMkt CODsector|NOFPROCkt CODactivity',
    '09|INW_FOODMt wastesector|10YR_BPPROCMt wasteactivity',
    '09|INW_FOODMt wastesector|NOFPROCMt wasteactivity',
    '09|INW_OTHMt wastesector|NOFPROCMt wasteactivity',
    '09|INW_PAPMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|INW_PAPMt wastesector|NOFPROCMt wasteactivity',
    '09|INW_RUBMt wastesector|NOFPROCMt wasteactivity',
    '09|INW_TEXMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|INW_TEXMt wastesector|NOFPROCMt wasteactivity',
    '09|INW_WOODMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|INW_WOODMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_RUR_FOODMt wastesector|10YR_BPPROCMt wasteactivity',
    '09|MSW_RUR_FOODMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_RUR_GLAMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_RUR_METMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_RUR_OTHMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|MSW_RUR_OTHMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_RUR_PAPMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|MSW_RUR_PAPMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_RUR_PLAMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_RUR_TEXMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|MSW_RUR_TEXMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_RUR_WOODMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|MSW_RUR_WOODMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_URB_FOODMt wastesector|10YR_BPPROCMt wasteactivity',
    '09|MSW_URB_FOODMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_URB_GLAMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_URB_METMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_URB_OTHMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|MSW_URB_OTHMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_URB_PAPMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|MSW_URB_PAPMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_URB_PLAMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_URB_TEXMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|MSW_URB_TEXMt wastesector|NOFPROCMt wasteactivity',
    '09|MSW_URB_WOODMt wastesector|20YR_BPPROCMt wasteactivity',
    '09|MSW_URB_WOODMt wastesector|NOFPROCMt wasteactivity',
    '09|RES_CREMM peoplesector|NOFPROCM peopleactivity',
    '09|WASTE_FLRPJsector|NOFPROCPJactivity',
    '09|WASTE_VOCkt VOCsector|EMIVOCPkt VOCactivity',
    '09|WW_DOMM peoplesector|POPPROCM peopleactivity',
    '09|WW_DOM_CC_NOCM peoplesector|POPPROCM peopleactivity',
    '09|WW_DOM_CC_TRMM peoplesector|POPPROCM peopleactivity',
    '09|WW_DOM_DC_NOCM peoplesector|POPPROCM peopleactivity',
    '09|WW_DOM_DC_TRMM peoplesector|POPPROCM peopleactivity',
    '10|AGR_ARABLEM hasector|NOFAGRM haactivity',
    '10|AGR_BEEFM animalssector|NOFAGRM animalsactivity',
    '10|AGR_BEEFM animalssector|OLAGRM animalsactivity',
    '10|AGR_BEEFM animalssector|OL_FAGRM animalsactivity',
    '10|AGR_BEEFM animalssector|OSAGRM animalsactivity',
    '10|AGR_COWSM animalssector|DLAGRM animalsactivity',
    '10|AGR_COWSM animalssector|DL_FAGRM animalsactivity',
    '10|AGR_COWSM animalssector|DSAGRM animalsactivity',
    '10|AGR_COWSM animalssector|NOFAGRM animalsactivity',
    '10|AGR_OTANIM animalssector|BSAGRM animalsactivity',
    '10|AGR_OTANIM animalssector|CMAGRM animalsactivity',
    '10|AGR_OTANIM animalssector|HOAGRM animalsactivity',
    '10|AGR_OTANIM animalssector|NOFAGRM animalsactivity',
    '10|AGR_OTANIM animalssector|SHAGRM animalsactivity',
    '10|AGR_PIGM animalssector|NOFAGRM animalsactivity',
    '10|AGR_PIGM animalssector|PLAGRM animalsactivity',
    '10|AGR_PIGM animalssector|PSAGRM animalsactivity',
    '10|AGR_POULTM animalssector|LHAGRM animalsactivity',
    '10|AGR_POULTM animalssector|NOFAGRM animalsactivity',
    '10|AGR_POULTM animalssector|OPAGRM animalsactivity',
    '10|APPLIC_Lkt Nsector|MANURE_NAGRkt Nactivity',
    '10|APPLIC_Lkt Nsector|RICE_NAGRkt Nactivity',
    '10|APPLIC_Lkt Nsector|SOIL_NAGRkt Nactivity',
    '10|APPLIC_Mkt Nsector|MANURE_NAGRkt Nactivity',
    '10|APPLIC_Mkt Nsector|RICE_NAGRkt Nactivity',
    '10|APPLIC_Mkt Nsector|SOIL_NAGRkt Nactivity',
    '10|APPLIC_Skt Nsector|MANURE_NAGRkt Nactivity',
    '10|APPLIC_Skt Nsector|RICE_NAGRkt Nactivity',
    '10|APPLIC_Skt Nsector|SOIL_NAGRkt Nactivity',
    '10|COWS_3000_MILKkt milksector|DLAGRkt milkactivity',
    '10|COWS_3000_MILKkt milksector|DL_FAGRkt milkactivity',
    '10|COWS_3000_MILKkt milksector|DSAGRkt milkactivity',
    '10|FCON_OTHNkt Nsector|NOFAGRkt Nactivity',
    '10|FCON_UREAkt Nsector|NOFAGRkt Nactivity',
    '10|GRASSLANDM hasector|AREAAGRM haactivity',
    '10|GRASSLANDMt biomasssector|FIRE_MASSAGRMt biomassactivity',
    '10|GRAZE_Lkt Nsector|EX_CTTLAGRkt Nactivity',
    '10|GRAZE_Lkt Nsector|EX_SHAGRkt Nactivity',
    '10|GRAZE_Mkt Nsector|EX_CTTLAGRkt Nactivity',
    '10|GRAZE_Mkt Nsector|EX_SHAGRkt Nactivity',
    '10|GRAZE_Skt Nsector|EX_CTTLAGRkt Nactivity',
    '10|GRAZE_Skt Nsector|EX_SHAGRkt Nactivity',
    '10|HISTOSOLSM hasector|AREAAGRM haactivity',
    '10|MANUREkt Nsector|BSAGRkt Nactivity',
    '10|MANUREkt Nsector|CMAGRkt Nactivity',
    '10|MANUREkt Nsector|DLAGRkt Nactivity',
    '10|MANUREkt Nsector|DSAGRkt Nactivity',
    '10|MANUREkt Nsector|HOAGRkt Nactivity',
    '10|MANUREkt Nsector|LHAGRkt Nactivity',
    '10|MANUREkt Nsector|OLAGRkt Nactivity',
    '10|MANUREkt Nsector|OPAGRkt Nactivity',
    '10|MANUREkt Nsector|OSAGRkt Nactivity',
    '10|MANUREkt Nsector|PLAGRkt Nactivity',
    '10|MANUREkt Nsector|PSAGRkt Nactivity',
    '10|MANUREkt Nsector|SHAGRkt Nactivity',
    '10|RICE_FLOODM hasector|AREAAGRM haactivity',
    '10|RICE_INTERM hasector|AREAAGRM haactivity',
    '10|STH_AGRMtsector|NOFPROCMtactivity',
    '10|WASTE_AGRMtsector|NOFAGRMtactivity',
    '11|FORESTMt biomasssector|FIRE_MASSAGRMt biomassactivity',
    '11|OTH_NH3_EMISSkt NH3sector|NOFAGRkt NH3activity'
/

Unit_AQ
/
 'PJ/yr',
 'million persons',
 'billion USD_2010/yr',
 'Mt CO2/yr',
 'million t DM/yr',
 'Tg N/yr',
 'million ha'
/

year_AQ(time)
/
 2019*2050
/

Browncoal(p_coal)
/
'p6_SUBCOAL', 
'p7_LIGNITE'
/

Hardcoal(p_coal)
/
'p3_ANTCOAL',
'p4_COKCOAL', 
'p5_BITCOAL'
/

Derivedcoal(p_coal)
/
'p8_PATFUEL', 
'p11_COALTAR', 
'p12_BKB'
/

Naturalgas(p_gas)
/
'p20_NATGAS'
/

Gasoline(p_oilproduct)
/
'p30_NONBIOGASO'
/

Heavyfueloil(p_oilproduct)
/
'p36_RESFUEL'
/

LPG(p_oilproduct)
/
'p29_LPG'
/

Diesel(p_oilproduct)
/
'p35_NONBIODIES'
/

Biomassfuels(product)
/
'p47_PRIMSBIO',
'p48_BIOGASES',  
'p49_BIOGASOL',    
'p50_BIODIESEL',    
'p51_BIOJETKERO'
/

Otherbiomass(product)
/
'p52_OBIOLIQ'
/

Wastefuels_nonrenewable(product)
/
'p44_INDWASTE',
'p46_MUNWASTEN'
/

Wastefuels_renewable(product)
/
'p45_MUNWASTER'
/

Fuelwood(product)
/
'p54_CHARCOAL'
/

Transformation_combustion(J)
/
 02_COAL        Coal
 03_OIL         Crude petroleum
 04_GAS         Natural gas Gas distribution
 10_PETROLCOAL  Petroleum and coal products
/

;

*======================= Reporting AQ Linkage Platform =====================================================================
Scalar
GWhtoEJ GWh to EJ
ktoetoPJ ktoe to PJ
USD2019toUSD2010
;

GWhtoEJ  = 3.6/(10**6);
ktoetoPJ = 4.1868/(10**2) ;
USD2019toUSD2010 = 86.5/100 ;
*https://stats.oecd.org/index.aspx?DataSetCode=DACDEFL

Parameter
AQ(model_AQ, Scenario_name, z, variable_AQ, Unit_AQ, time) AQ Linkage Format ;

*======================= 01 Combustion in energy and transformation industries=====================================================

*01 Combustion in energy and transformation industries - Transformation - combustion
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|BC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|BC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|DCENEPJactivity','PJ/yr',year_AQ)   =  sum((Derivedcoal,Transformation_combustion),valEE(Derivedcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|GASENEPJactivity','PJ/yr',year_AQ)  =  sum((Naturalgas,Transformation_combustion),valEE(Naturalgas,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|GASENEPJactivity','PJ/yr',year_AQ)  =  sum((Gasoline,Transformation_combustion),valEE(Gasoline,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|HC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|HC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|HC3ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|HFENEPJactivity','PJ/yr',year_AQ)   =  sum((Heavyfueloil,Transformation_combustion),valEE(Heavyfueloil,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|LPGENEPJactivity','PJ/yr',year_AQ)  =  sum((LPG,Transformation_combustion),valEE(LPG,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMBPJsector|MDENEPJactivity','PJ/yr',year_AQ)   =  sum((Diesel,Transformation_combustion),valEE(Diesel,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Transformation - Fuel conversion (grate firingr)
AQ(model_AQ,'BAU',Country,'01|CON_COMB1PJsector|BC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB1PJsector|BC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB1PJsector|HC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB1PJsector|HC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB1PJsector|HC3ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Transformation - Fuel conversion (fluidized bed boiler)
AQ(model_AQ,'BAU',Country,'01|CON_COMB2PJsector|BC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB2PJsector|BC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB2PJsector|HC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB2PJsector|HC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB2PJsector|HC3ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Transformation - Fuel conversion (pulverized bed boiler)
AQ(model_AQ,'BAU',Country,'01|CON_COMB3PJsector|BC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB3PJsector|BC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal,Transformation_combustion),valEE(Browncoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB3PJsector|HC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB3PJsector|HC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|CON_COMB3PJsector|HC3ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal,Transformation_combustion),valEE(Hardcoal,Transformation_combustion,Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Diesel generator sets
AQ(model_AQ,'BAU',Country,'01|PP_ENGPJsector|GASENEPJactivity','PJ/yr',year_AQ)     =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_ENGPJsector|GAS_MENEPJactivity','PJ/yr',year_AQ)   =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_ENGPJsector|HFENEPJactivity','PJ/yr',year_AQ)      =  sum((Heavyfueloil),valEE(Heavyfueloil,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_ENGPJsector|MDENEPJactivity','PJ/yr',year_AQ)      =  sum((Diesel),valEE(Diesel,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_ENGPJsector|MD_MENEPJactivity','PJ/yr',year_AQ)    =  sum((Diesel),valEE(Diesel,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - existing coal (>50 MWth)
AQ(model_AQ,'BAU',Country,'01|PP_EX_LPJsector|BC1ENEPJactivity','PJ/yr',year_AQ)    =  sum((Browncoal),valEE(Browncoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_LPJsector|HC1ENEPJactivity','PJ/yr',year_AQ)    =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_LPJsector|HC2ENEPJactivity','PJ/yr',year_AQ)    =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_LPJsector|HC3ENEPJactivity','PJ/yr',year_AQ)    =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - existing (excl. coal)
AQ(model_AQ,'BAU',Country,'01|PP_EX_OTHPJsector|DCENEPJactivity','PJ/yr',year_AQ)    =  sum((Derivedcoal),valEE(Derivedcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_OTHPJsector|GASENEPJactivity','PJ/yr',year_AQ)   =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_OTHPJsector|GSLENEPJactivity','PJ/yr',year_AQ)   =  sum((Gasoline),valEE(Gasoline,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_OTHPJsector|HFENEPJactivity','PJ/yr',year_AQ)    =  sum((Heavyfueloil),valEE(Heavyfueloil,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_OTHPJsector|MDENEPJactivity','PJ/yr',year_AQ)    =  sum((Diesel),valEE(Diesel,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_OTHPJsector|OS1ENEPJactivity','PJ/yr',year_AQ)   =  sum((Biomassfuels),valEE(Biomassfuels,'26_eOther',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_OTHPJsector|OS2ENEPJactivity','PJ/yr',year_AQ)   =  sum((Otherbiomass),valEE(Otherbiomass,'26_eOther',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_OTHPJsector|WSFNRENEPJactivity','PJ/yr',year_AQ) =  sum((Wastefuels_nonrenewable),valEE(Wastefuels_nonrenewable,'26_eOther',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - existing coal (<50 MWth)
AQ(model_AQ,'BAU',Country,'01|PP_EX_SPJsector|BC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_EX_SPJsector|HC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - IGCC
AQ(model_AQ,'BAU',Country,'01|PP_IGCCPJsector|HC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_IGCCPJsector|HC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_IGCCPJsector|HC3ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - Modern power plants (coal: ultra & supercritical; gas: CCGT)
AQ(model_AQ,'BAU',Country,'01|PP_MODPJsector|BC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_MODPJsector|GASENEPJactivity','PJ/yr',year_AQ)  =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_MODPJsector|HC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_MODPJsector|HC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_MODPJsector|HC3ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - Power & district heat plants - new (excl. coal)
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|DCENEPJactivity','PJ/yr',year_AQ)    =  sum((Derivedcoal),valEE(Derivedcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|FWDENEPJactivity','PJ/yr',year_AQ)   =  sum((Fuelwood),valEE(Fuelwood,'26_eOther',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|GASENEPJactivity','PJ/yr',year_AQ)   =  sum((Naturalgas),valEE(Naturalgas,'21_eGas',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|GSLENEPJactivity','PJ/yr',year_AQ)   =  sum((Gasoline),valEE(Gasoline,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|HFENEPJactivity','PJ/yr',year_AQ)    =  sum((Heavyfueloil),valEE(Heavyfueloil,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|MDENEPJactivity','PJ/yr',year_AQ)    =  sum((Diesel),valEE(Diesel,'22_eOil',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|OS1ENEPJactivity','PJ/yr',year_AQ)   =  sum((Biomassfuels),valEE(Biomassfuels,'26_eOther',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|OS2ENEPJactivity','PJ/yr',year_AQ)   =  sum((Otherbiomass),valEE(Otherbiomass,'26_eOther',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|WSFNRENEPJactivity','PJ/yr',year_AQ) =  sum((Wastefuels_nonrenewable),valEE(Wastefuels_nonrenewable,'26_eOther',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEWPJsector|WSFRENEPJactivity','PJ/yr',year_AQ)  =  sum((Wastefuels_renewable),valEE(Wastefuels_renewable,'26_eOther',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

*01 Combustion in energy and transformation industries - Power & district heat plants - Power & district heat plants - new coal (>50 MWth)
AQ(model_AQ,'BAU',Country,'01|PP_NEW_LPJsector|BC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Browncoal),valEE(Browncoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEW_LPJsector|HC1ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEW_LPJsector|HC2ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 
AQ(model_AQ,'BAU',Country,'01|PP_NEW_LPJsector|HC3ENEPJactivity','PJ/yr',year_AQ)  =  sum((Hardcoal),valEE(Hardcoal,'20_eCoal',Country,year_AQ,'bau'))*ktoetoPJ+eps ; 

execute_unload 'Output_w-t\Baseline_Results_AQ_Linkage',
 AQ
 
;