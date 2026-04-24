*==============================================================================
* A. Initialization Assignment of initial values to variables prior to resolution
*==============================================================================
* A.1 Initialization for the first period
*==============================================================================

*==============================================================================
* A.1.1 Volume variables
*==============================================================================
 CABX.L(z,t1)                   = CABXO(z);
 C.L(i,z,t1)                    = CO(i,z);
 CG.L(i,z,t1)                   = CGO(i,z);
 CI.L(j,z,t1)                   = CIO(j,z);
 CE.L(j,z,t1)                   = CEO(j,z);
 CMIN.L(i,z,t1)                 = CMINO(i,z);
 CTH_REAL.L(z,t1)               = CTH_REALO(z);
 DI.L(i,j,z,t1)                 = DIO(i,j,z);
 DE.L(ene,j,z,t1)               = DEO(ene,j,z);
 DEelec.L(j2,z,t1)              = DEelecO(j2,z);
 DEnelec.L(j2,z,t1)             = DEnelecO(j2,z);
 DEcoalgas.L(j2,z,t1)           = DEcoalgasO(j2,z);
 DEoilpetrol.L(j2,z,t1)         = DEoilpetrolO(j2,z);
 DIT.L(i,z,t1)                  = DITO(i,z);
 DD.L(i,z,t1)                   = DDO(i,z);
 DS.L(j,i,z,t1)                 = DSO(j,i,z);
 DS_I.L(i,z,t1)                 = DSO_I(i,z);
 EX.L(i,z,zj,t1)                = EXO(i,z,zj);
 EXT.L(i,z,t1)                  = EXTO(i,z);
 EXTT.L(j,i,z,t1)               = EXTTO(j,i,z);
 G_REAL.L(z,t1)                 = G_REALO(z);
 GDP_BP_REAL.L(z,t1)            = GDP_BP_REALO(z);
 GDP_MP_REAL.L(z,t1)            = GDP_MP_REALO(z);
 GDP_BP_W_REAL.L(t1)            = GDP_BP_W_REALO;
 IM.L(i,zj,z,t1)                = IMO(i,zj,z);
 IMT.L(i,z,t1)                  = IMTO(i,z);
 IND.L(k,j,z,t1)                = INDO(k,j,z);
 INV.L(i,z,t1)                  = INVO(i,z);
 IT_REAL.L(z,t1)                = IT_REALO(z);
 KD.L(k,j,z,t1)                 = KDO(k,j,z);
 KDC.L(j,z,t1)                  = KDCO(j,z);
 KS.L(k,z,t1)                   = KSO(k,z);
 LD.L(j,z,t1)                   = LDO(j,z);
 LS.L(z,t1)                     = LSO(z);
 LST.L(z,t1)                    = LSTO(z);
 LDC.L(j,z,t1)                  = LDCO(j,z);
 MRGN.L(i,z,t1)                 = MRGNO(i,z);
 Q.L(i,z,t1)                    = QO(i,z);
 VA.L(j,z,t1)                   = VAO(j,z);
 KLE.L(j,z,t1)                  = KLEO(j,z);
 XS.L(j,i,z,t1)                 = XSO(j,i,z);
 XS_I.L(i,z,t1)                 = XSO_I(i,z);
 XST.L(j,z,t1)                  = XSTO(j,z);
 QPOWER.L(z,t1)                 = QPOWERO(z);
 QBS.L(BS,Z_GRN,t1)             = QBSO(BS,Z_GRN);
 PERMIT.L(j,z,t1)               = PERMITO(j,z);
 PERMIT_TOTAL.L(PERMIT_Z,t1)    = PERMIT_TOTALO(PERMIT_Z);
 CTAX.L(z,t1)                 = CTAXO(z);
 NEA_REGIONAL_CTAX.L(t1)     = NEA_REGIONAL_CTAXO;
 OBJ.L                          = OBJO;
 TSFD.L(BS,Z_GRN,t1)   = TSFO(BS,Z_GRN);
 VAT.L(BS,Z_GRN,t1)      = VATO(BS,Z_GRN);
 QDAC.L(z,t1) = 0;
 
*==============================================================================
* A.1.2 Price variables
*==============================================================================
 e.L(z,t1)                      = eO(z);
 IR.L(z,t1)                     = IRO(z);
 P.L(i,z,t1)                    = PO(i,z);
 P2.L(j,i,z,t1)                 = PO2(j,i,z);
 P4.L(ene,j,z,t1)               = PO4(ene,j,z);
 PPOWER.L(z,t1)                 = PPOWERO(z);
 PBS.L(BS,Z_GRN,t1)             = PBSO(BS,Z_GRN);
 PI.L(i,z,t1)                   = PO(i,z);
 PT.L(j,z,t1)                   = PTO(j,z);
 PP.L(j,z,t1)                   = PPO(j,z);
 PC.L(i,z,t1)                   = PCO(i,z);
 PCI.L(j,z,t1)                  = PCIO(j,z);
 PCE.L(j,z,t1)                  = PCEO(j,z);
 PCEelec.L(j2,z,t1)             = PCEelecO(j2,z);
 PCEnelec.L(j2,z,t1)            = PCEnelecO(j2,z);
 PCEcoalgas.L(j2,z,t1)          = PCEcoalgasO(j2,z);
 PCEoilpetrol.L(j2,z,t1)        = PCEoilpetrolO(j2,z);
 PD.L(i,z,t1)                   = PDO(i,z);
 PE.L(i,z,zj,t1)                = PEO(i,z,zj);
 PET.L(i,z,t1)                  = PETO(i,z);
 PIXCON.L(z,t1)                 = PIXCONO(z);
 PIXGDP.L(z,t1)                 = PIXGDPO(z);
 PIXGDP_W.L(t1)                 = PIXGDP_WO;
 PIXGVT.L(z,t1)                 = PIXGVTO(z);
 PIXINV.L(z,t1)                 = PIXINVO(z);
 PK.L(z,t1)                     = PKO(z);
 PL.L(i,z,t1)                   = PLO(i,z);
 PM.L(i,zj,z,t1)                = PMO(i,zj,z);
 PMT.L(i,z,t1)                  = PMTO(i,z);
 PVA.L(j,z,t1)                  = PVAO(j,z);
 PKLE.L(j,z,t1)                 = PKLEO(j,z);
 PWM.L(i,zj,z,t1)               = PWMO(i,zj,z);
 PWMG.L(i,t1)                   = PWMGO(i);
 PWX.L(i,z,zj,t1)               = PWXO(i,z,zj);
 R.L(k,j,z,t1)                  = RO(k,j,z);
 RC.L(j,z,t1)                   = RCO(j,z);
 RTI.L(k,j,z,t1)                = RTIO(k,j,z);
 U.L(z,t1)                      = UO(z);
 W.L(z,t1)                      = WO(z);
 WC.L(j,z,t1)                   = WCO(j,z);
 WTI.L(j,z,t1)                  = WTIO(j,z);
 PTSF.L(BS,Z_GRN,t1)            = PTSFO(BS,Z_GRN);
 PVAT.L(BS,Z_GRN,t1)            = PVATO(BS,Z_GRN);
 PX_INDEX.L(z,t1)                    = PX_INDEXO(z) ;
 PM_INDEX.L(z,t1)                   = PM_INDEXO(z);
 TOT.L(z,t1)                            = TOTO(z);
  
*==============================================================================
* A.1.3 Nominal (value) variables
*==============================================================================
 CAB.L(z,t1)                    = CABO(z);
 CTH.L(z,t1)                    = CTHO(z);
 DEP.L(z,t1)                    = DEPO(z);
 G.L(z,t1)                      = GO(z);
 GDP_BP.L(z,t1)                 = GDP_BPO(z);
 GDP_BP_W.L(t1)                 = SUM[z,GDP_BPO(z)];
 GDP_FD.L(z,t1)                 = GDP_FDO(z);
 GDP_IB.L(z,t1)                 = GDP_IBO(z);
 GDP_MP.L(z,t1)                 = GDP_MPO(z);
 IT.L(z,t1)                     = ITO(z);
 SG.L(z,t1)                     = SGO(z);
 SH.L(z,t1)                     = SHO(z);
 SROW.L(z,t1)                   = SROWO(z);
 TCTAX.L(z,t1)                  = TCTAXO(z);
 TDH.L(z,t1)                    = TDHO(z);
 TIC.L(i,z,t1)                  = TICO(i,z);
 TICT.L(z,t1)                   = TICTO(z);
 TIK.L(k,j,z,t1)                = TIKO(k,j,z);
 TIKT.L(z,t1)                   = TIKTO(z);
 TIM.L(i,zj,z,t1)               = TIMO(i,zj,z);
 TIMT.L(z,t1)                   = TIMTO(z);
 TIP.L(j,z,t1)                  = TIPO(j,z);
 TIPT.L(z,t1)                   = TIPTO(z);
 TIW.L(j,z,t1)                  = TIWO(j,z);
 TIWT.L(z,t1)                   = TIWTO(z);
 ttiw.L(j,z,t1)                 = ttiwO(j,z);
 TIW_Share.L(j,z,t1)            = TIWO_Share(j,z);
 TIX.L(i,z,zj,t1)               = TIXO(i,z,zj);
 TIXT.L(z,t1)                   = TIXTO(z);
 TPRODN.L(z,t1)                 = TPRODNO(z);
 TPRCTS.L(z,t1)                 = TPRCTSO(z);
 YDH.L(z,t1)                    = YDHO(z);
 YG.L(z,t1)                     = YGO(z);
 YH.L(z,t1)                     = YHO(z);
 YHK.L(z,t1)                    = YHKO(z);
 YHL.L(z,t1)                    = YHLO(z);
 YROW.L(z,t1)                   = YROWO(z);

*==============================================================================
* A.1.4 Rates and intercepts
*==============================================================================
 phi.L(z,t1)                    = phio(z);

*==============================================================================
* A.2 Initialization for the following periods
*==============================================================================
IF{ord(time) gt 1,

*==============================================================================
* A.2.1 Volume variables
*==============================================================================
    CABX.L(z,time)              = CABX.L(z,time-1);
    C.L(i,z,time)               = C.L(i,z,time-1);
    CG.L(i,z,time)              = CG.L(i,z,time-1);
    CI.L(j,z,time)              = CI.L(j,z,time-1);
    CE.L(j,z,time)              = CE.L(j,z,time-1); 
    CMIN.L(i,z,time)            = CMIN.L(i,z,time-1);
    CTH_REAL.L(z,time)          = CTH_REAL.L(z,time-1);
    DI.L(i,j,z,time)            = DI.L(i,j,z,time-1);
    DE.L(ene,j,z,time)          = DE.L(ene,j,z,time-1);
    DEelec.L(j2,z,time)         = DEelec.L(j2,z,time-1);
    DEnelec.L(j2,z,time)        = DEnelec.L(j2,z,time-1);
    DEcoalgas.L(j2,z,time)      = DEcoalgas.L(j2,z,time-1);
    DEoilpetrol.L(j2,z,time)    = DEoilpetrol.L(j2,z,time-1);
    DIT.L(i,z,time)             = DIT.L(i,z,time-1);
    DD.L(i,z,time)              = DD.L(i,z,time-1);
    DS.L(j,i,z,time)            = DS.L(j,i,z,time-1);
    DS_I.L(i,z,time)            = DS_I.L(i,z,time-1);
    EX.L(i,z,zj,time)           = EX.L(i,z,zj,time-1);
    EXT.L(i,z,time)             = EXT.L(i,z,time-1);
    EXTT.L(j,i,z,time)          = EXTT.L(j,i,z,time-1);
    G_REAL.L(z,time)            = G_REAL.L(z,time-1);
    GDP_BP_REAL.L(z,time)       = GDP_BP_REAL.L(z,time-1);
    GDP_MP_REAL.L(z,time)       = GDP_MP_REAL.L(z,time-1);
    GDP_BP_W_REAL.L(time)       = GDP_BP_W_REAL.L(time-1);
    IM.L(i,zj,z,time)           = IM.L(i,zj,z,time-1);
    IMT.L(i,z,time)             = IMT.L(i,z,time-1);
    IND.L(k,j,z,time)           = IND.L(k,j,z,time-1);
    INV.L(i,z,time)             = INV.L(i,z,time-1);
    IT_REAL.L(z,time)           = IT_REAL.L(z,time-1);
    KD.L(k,j,z,time)            = KD.L(k,j,z,time-1);
    KDC.L(j,z,time)             = KDC.L(j,z,time-1);
    KS.L(k,z,time)              = KS.L(k,z,time-1);
    LD.L(j,z,time)              = LD.L(j,z,time-1);
    LS.L(z,time)                = LS.L(z,time-1);
    LST.L(z,time)               = LST.L(z,time-1);
    LDC.L(j,z,time)             = LDC.L(j,z,time-1);
    MRGN.L(i,z,time)            = MRGN.L(i,z,time-1);
    Q.L(i,z,time)               = Q.L(i,z,time-1);
    VA.L(j,z,time)              = VA.L(j,z,time-1);
    KLE.L(j,z,time)             = KLE.L(j,z,time-1);
    XS.L(j,i,z,time)            = XS.L(j,i,z,time-1);
    XS_I.L(i,z,time)            = XS_I.L(i,z,time-1);
    XST.L(j,z,time)             = XST.L(j,z,time-1);
    QPOWER.L(z,time)            = QPOWER.L(z,time-1);
    QBS.L(BS,Z_GRN,time)        = QBS.L(BS,Z_GRN,time-1);
    PERMIT.L(j,z,time)          = PERMIT.L(j,z,time-1);
    PERMIT_TOTAL.L(PERMIT_Z,time) = PERMIT_TOTAL.L(PERMIT_Z,time-1);
    CTAX.L(z,time)              = CTAX.L(z,time-1);
    NEA_REGIONAL_CTAX.L(time) = NEA_REGIONAL_CTAX.L(time-1);
    TSFD.L(BS,Z_GRN,time)       = TSFD.L(BS,Z_GRN,time-1);
    VAT.L(BS,Z_GRN,time)        = VAT.L(BS,Z_GRN,time-1);
 
*==============================================================================
* A.2.2 Price variables
*==============================================================================
    e.L(z,time)                 = e.L(z,time-1);
    IR.L(z,time)                = IR.L(z,time-1);
    P.L(i,z,time)               = P.L(i,z,time-1);
    P2.L(j,i,z,time)            = P2.L(j,i,z,time-1);
    P4.L(ene,j,z,time)          = P4.L(ene,j,z,time-1);
    PPOWER.L(z,time)            = PPOWER.L(z,time-1);
    PBS.L(BS,Z_GRN,time)        = PBS.L(BS,Z_GRN,time-1);
    PI.L(i,z,time)              = PI.L(i,z,time-1);
    PT.L(j,z,time)              = PT.L(j,z,time-1);
    PP.L(j,z,time)              = PP.L(j,z,time-1); 
    PC.L(i,z,time)              = PC.L(i,z,time-1);
    PCI.L(j,z,time)             = PCI.L(j,z,time-1);
    PCE.L(j,z,time)             = PCE.L(j,z,time-1);
    PCEelec.L(j2,z,time)        = PCEelec.L(j2,z,time-1);
    PCEnelec.L(j2,z,time)       = PCEnelec.L(j2,z,time-1);
    PCEcoalgas.L(j2,z,time)     = PCEcoalgas.L(j2,z,time-1);
    PCEoilpetrol.L(j2,z,time)   = PCEoilpetrol.L(j2,z,time-1);
    PD.L(i,z,time)              = PD.L(i,z,time-1);
    PE.L(i,z,zj,time)           = PE.L(i,z,zj,time-1);
    PET.L(i,z,time)             = PET.L(i,z,time-1);
    PIXCON.L(z,time)            = PIXCON.L(z,time-1);
    PIXGDP.L(z,time)            = PIXGDP.L(z,time-1);
    PIXGDP_W.L(time)            = PIXGDP_W.L(time-1);
    PIXGVT.L(z,time)            = PIXGVT.L(z,time-1);
    PIXINV.L(z,time)            = PIXINV.L(z,time-1);
    PK.L(z,time)                = PK.L(z,time-1);
    PL.L(i,z,time)              = PL.L(i,z,time-1);
    PM.L(i,zj,z,time)           = PM.L(i,zj,z,time-1);
    PMT.L(i,z,time)             = PMT.L(i,z,time-1);
    PVA.L(j,z,time)             = PVA.L(j,z,time-1);
    PKLE.L(j,z,time)            = PKLE.L(j,z,time-1);
    PWM.L(i,zj,z,time)          = PWM.L(i,zj,z,time-1);
    PWMG.L(i,time)              = PWMG.L(i,time-1);
    PWX.L(i,z,zj,time)          = PWX.L(i,z,zj,time-1);
    R.L(k,j,z,time)             = R.L(k,j,z,time-1);
    RC.L(j,z,time)              = RC.L(j,z,time-1);
    RTI.L(k,j,z,time)           = RTI.L(k,j,z,time-1);
    U.L(z,time)                 = U.L(z,time-1);
    W.L(z,time)                 = W.L(z,time-1);
    WC.L(j,z,time)              = WC.L(j,z,time-1);
    WTI.L(j,z,time)             = WTI.L(j,z,time-1);
    PTSF.L(BS,Z_GRN,time)       = PTSF.L(BS,Z_GRN,time-1);
    PVAT.L(BS,Z_GRN,time)       = PVAT.L(BS,Z_GRN,time-1);
    PX_INDEX.L(z,time)                    = PX_INDEX.L(z,time-1) ;
    PM_INDEX.L(z,time)                   = PM_INDEX.L(z,time-1);
    TOT.L(z,time)                            = TOT.L(z,time-1);
 
*==============================================================================
* A.2.3 Nominal (value) variables
*==============================================================================
    CAB.L(z,time)               = CAB.L(z,time-1);
    CTH.L(z,time)               = CTH.L(z,time-1);
    DEP.L(z,time)               = DEP.L(z,time-1);
    G.L(z,time)                 = G.L(z,time-1);
    GDP_BP.L(z,time)            = GDP_BP.L(z,time-1);
    GDP_BP_W.L(time)            = SUM[z,GDP_BP.L(z,time)];
    GDP_FD.L(z,time)            = GDP_FD.L(z,time-1);
    GDP_IB.L(z,time)            = GDP_IB.L(z,time-1);
    GDP_MP.L(z,time)            = GDP_MP.L(z,time-1);
    IT.L(z,time)                = IT.L(z,time-1);
    SG.L(z,time)                = SG.L(z,time-1);
    SH.L(z,time)                = SH.L(z,time-1);
    SROW.L(z,time)              = SROW.L(z,time-1);
    TCTAX.L(z,time)             = TCTAX.L(z,time-1);
    TDH.L(z,time)               = TDH.L(z,time-1);
    TIC.L(i,z,time)             = TIC.L(i,z,time-1);
    TICT.L(z,time)              = TICT.L(z,time-1);
    TIK.L(k,j,z,time)           = TIK.L(k,j,z,time-1);
    TIKT.L(z,time)              = TIKT.L(z,time-1);
    TIM.L(i,zj,z,time)          = TIM.L(i,zj,z,time-1);
    TIMT.L(z,time)              = TIMT.L(z,time-1);
    TIP.L(j,z,time)             = TIP.L(j,z,time-1);
    TIPT.L(z,time)              = TIPT.L(z,time-1);
    TIW.L(j,z,time)             = TIW.L(j,z,time-1);
    TIWT.L(z,time)              = TIWT.L(z,time-1);
    ttiw.L(j,z,time)            = ttiw.L(j,z,time-1);
    TIW_Share.L(j,z,time)       = TIW_Share.L(j,z,time-1);
    TIX.L(i,z,zj,time)          = TIX.L(i,z,zj,time-1);
    TIXT.L(z,time)              = TIXT.L(z,time-1);
    TPRODN.L(z,time)            = TPRODN.L(z,time-1);
    TPRCTS.L(z,time)            = TPRCTS.L(z,time-1);
    YDH.L(z,time)               = YDH.L(z,time-1);
    YG.L(z,time)                = YG.L(z,time-1);
    YH.L(z,time)                = YH.L(z,time-1);
    YHK.L(z,time)               = YHK.L(z,time-1);
    YHL.L(z,time)               = YHL.L(z,time-1);
    YROW.L(z,time)              = YROW.L(z,time-1);

*============================================================================
* A.2.4 Rates and intercepts
*==============================================================================
    phi.L(z,time)               = phi.L(z,time-1);
 
};