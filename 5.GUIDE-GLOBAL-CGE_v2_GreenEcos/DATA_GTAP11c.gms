*==============================================================================*
*GTAP DataBase Verion 11b Mapping Code Manual
*Version: 2.0
*Author: [Jintae Kim]
*Original Code Authors: Veronique Robichaud, Andre Lemelin, Helene Maisonnave, Bernard Decaluwe (PEP-w-1)
*License: CC BY-NC-SA 3.0
*Last Updated: 2026-04-25

*==============================================================================*
*Introduction
*This manual is based on the GTAP data mapping code (DATA_GTAP11b.gms). It explains the process of mapping between GTAP data and the PEP-w model, clarifying key variables and data transformation processes within the code.
*
*This manual can only be used for non-commercial (NC) purposes and must be shared under the same license (CC BY-NC-SA 3.0).
*For detailed license information, please visit:
*https://creativecommons.org/licenses/by-nc-sa/3.0/

*License Notice
*This manual is based on the GTAP data mapping code (DATA_GTAP11b.gms), originally developed by Veronique Robichaud, Andre Lemelin, Helene Maisonnave, and Bernard Decaluwe. It is distributed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 (CC BY-NC-SA 3.0) license.

*Key License Terms:
*Attribution (BY): You must give appropriate credit to the original authors.
*Non-Commercial (NC): This work cannot be used for commercial purposes.
*Share-Alike (SA): If you modify or build upon this work, you must distribute the modified work under the same license.
*For more details, please visit:
*https://creativecommons.org/licenses/by-nc-sa/3.0/

*==============================================================================*
* Running new GTAP Model generates a number of files, of which two are
* used below: BaseData2019.har and Parameters2019.har.

* The har2gdx facility allows converting these two files into GDX format.
*==============================================================================
$CALL har2gdx Input_CGE\basedata2019.har Input_CGE\GTAP11c_basedata2019.gdx
$CALL har2gdx Input_CGE\parameter2019.prm Input_CGE\GTAP11c_Parameters2019.gdx

*==============================================================================
* 1. Define the sets
*==============================================================================
*  1.1 Sets that will be used in the aggregated model
*==============================================================================
SET J All industries
/
 01_AGRICULT    Agricultural forest and fishery goods
 02_COAL        Coal
 03_OIL         Crude petroleum
 04_GAS         Natural gas Gas distribution
 05_MINING      Mined and quarried goods
 06_FOODPRO     Food beverages and tobacco products
 07_TEXTILES    Textile and leather products
 08_WOODPRO     Wood products
 09_PAPERPRO    Paper products
 10_PETROLCOAL  Petroleum and coal products
 11_CHEMICAL    Chemical products
 12_NONMET      Non-metallic mineral products
 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
 18_TnD         Transmission and Distribution
 19_eNuclear    Nuclear generation
 20_eCoal       Coal generation
 21_eGas        Gas generation
 22_eOil        Oil generation
 23_eWind       Wind generation
 24_eSolar      Solar generation
 25_eHydro      Hydro generation
 26_eOther      Other generation
 27_CONSTRUC    Construction
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
/

J2(J) KLE Sectors
/
 01_AGRICULT    Agricultural forest and fishery goods
 06_FOODPRO     Food beverages and tobacco products
 07_TEXTILES    Textile and leather products
 08_WOODPRO     Wood products
 09_PAPERPRO    Paper products
 10_PETROLCOAL  Petroleum and coal products
 11_CHEMICAL    Chemical products
 12_NONMET      Non-metallic mineral products
 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
 27_CONSTRUC    Construction
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
/

J3(J) Non-KLE Sectors
/
 02_COAL        Coal
 03_OIL         Crude petroleum
 04_GAS         Natural gas Gas distribution
 05_MINING      Mined and quarried goods
 18_TnD         Transmission and Distribution
 19_eNuclear    Nuclear generation
 20_eCoal       Coal generation
 21_eGas        Gas generation
 22_eOil        Oil generation
 23_eWind       Wind generation
 24_eSolar      Solar generation
 25_eHydro      Hydro generation
 26_eOther      Other generation
/

I All commodities except agriculture
/
 01_AGRICULT    Agricultural forest and fishery goods
 02_COAL        Coal
 03_OIL         Crude petroleum
 04_GAS         Natural gas Gas distribution
 05_MINING      Mined and quarried goods
 06_FOODPRO     Food beverages and tobacco products
 07_TEXTILES    Textile and leather products
 08_WOODPRO     Wood products
 09_PAPERPRO    Paper products
 10_PETROLCOAL  Petroleum and coal products
 11_CHEMICAL    Chemical products
 12_NONMET      Non-metallic mineral products
 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
 18_ELEC        Electricity
 19_CONSTRUC    Construction
 20_LTRP        Land transport service(road rail)
 21_WTRP        Water transport service
 22_ATRP        Air transport service
 23_SER         Service
/

ENE(I) Energy commodities full list
/
 02_COAL         Coal
 03_OIL          Crude petroleum
 04_GAS         Natural gas
 10_PETROLCOAL   Petroleum and coal products
 18_ELEC         Electricity
/

BUS(J) Private industries
/
 01_AGRICULT    Agricultural forest and fishery goods
 02_COAL        Coal
 03_OIL         Crude petroleum
 04_GAS         Natural gas Gas distribution
 05_MINING      Mined and quarried goods
 06_FOODPRO     Food beverages and tobacco products
 07_TEXTILES    Textile and leather products
 08_WOODPRO     Wood products
 09_PAPERPRO    Paper products
 10_PETROLCOAL  Petroleum and coal products
 11_CHEMICAL    Chemical products
 12_NONMET      Non-metallic mineral products
 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
 18_TnD         Transmission and Distribution
 19_eNuclear    Nuclear generation
 20_eCoal       Coal generation
 21_eGas        Gas generation
 22_eOil        Oil generation
 23_eWind       Wind generation
 24_eSolar      Solar generation
 25_eHydro      Hydro generation
 26_eOther      Other generation
 27_CONSTRUC    Construction
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
/

TRP(J) TRANSPORT
/
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
/

PUB(J) Public industries
/
* 01_AGRICULT    Agricultural forest and fishery goods
* 02_COAL        Coal
* 03_OIL         Crude petroleum
* 04_GAS         Natural gas Gas distribution
* 05_MINING      Mined and quarried goods
* 06_FOODPRO     Food beverages and tobacco products
* 07_TEXTILES    Textile and leather products
* 08_WOODPRO     Wood products
* 09_PAPERPRO    Paper products
* 10_PETROLCOAL  Petroleum and coal products
* 11_CHEMICAL    Chemical products
* 12_NONMET      Non-metallic mineral products
* 13_IRONSTL     Primary iron and steel products
* 14_NONFERR     Non-ferrous metal products
* 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
* 16_TRANSEQ     Motor vehicles Other transport equipment
* 17_OTHERIND    Other manufactured products Water supply
* 18_TnD         Transmission and Distribution
* 19_eNuclear    Nuclear generation
* 20_eCoal       Coal generation
* 21_eGas        Gas generation
* 22_eOil        Oil generation
* 23_eWind       Wind generation
* 24_eSolar      Solar generation
* 25_eHydro      Hydro generation
* 26_eOther      Other generation
* 27_CONSTRUC    Construction
* 28_LTRP        Land transport service(road rail)
* 29_WTRP        Water transport service
* 30_ATRP        Air transport service
* 31_SER         Service
/

F Production factors
/
 slab            Skilled labour
 ulab            Unskilled Labour
 cap             Capital
 land            Land
 natr            Natural resources
/

L(F) Labor categories
/
 slab            Skilled labour
 ulab            Unskilled Labour
/

K(F) Capital categories
/
 cap             Capital
 land            Land
 natr            Natural resources
/

Z Regions
/
 01_KOR Korea
 02_CHN China
 03_JPN Japan
 04_RUS Russian Federation
 05_MNG Mongolia
 06_PRK Peoples Republic of Korea
 07_NAM North America
 08_LAM Latin America and the Caribbean
 09_WEU Western Europe
 10_EEU Central and Eastern Europe
 11_RFSU Rest of Former Soviet Union
 12_MEA Middle East and North Africa
 13_AFR Sub-Saharan Africa
 14_RCPA Rest of Centrally Planned Asia and China
 15_SAS South Asia
 16_RPAS Rest of Other Pacific Asia
 17_RPAO Rest of Pacific OECD
/

Z1(Z) All regions except reference region
/
 01_KOR Korea
 02_CHN China
 03_JPN Japan
 04_RUS Russian Federation
 05_MNG Mongolia
 06_PRK Peoples Republic of Korea
* 07_NAM North America
 08_LAM Latin America and the Caribbean
 09_WEU Western Europe
 10_EEU Central and Eastern Europe
 11_RFSU Rest of Former Soviet Union
 12_MEA Middle East and North Africa
 13_AFR Sub-Saharan Africa
 14_RCPA Rest of Centrally Planned Asia and China
 15_SAS South Asia
 16_RPAS Rest of Other Pacific Asia
 17_RPAO Rest of Pacific OECD
/

ZR(Z) Reference country
/
 07_NAM North America
/

Zrich(Z) Rich regions

Zother(Z) Non-rich regions

TIME Time periods
/
2018*2100
/

*==============================================================================
*  1.2 Sets used in GTAP DB
*==============================================================================

 GlobalSet(*) All of the elements of all sets
 endw(GlobalSet)  All factors of production
 acts(GlobalSet)  All industries
 comm(GlobalSet)  ALL commodities
 reg(GlobalSet)  All regions
 marg(comm) Margin commodities

$GDXIN Input_CGE\GTAP11c_basedata2019.gdx

$LOAD GlobalSet, reg, endw, acts, comm, marg

*==============================================================================
*  1.3 Mapping between sets used in PEP-w and GTAP DB
*==============================================================================

z1c(reg)  Elements in GTAP that refer to one single country
/
r_01KOR, r_02CHN, r_03JPN, r_04RUS, r_05MNG, r_06PRK, r_07NAM, r_08LAM,
r_09WEU, r_10EEU, r_11FSU, r_12MEA, r_13AFR, r_14CPA, r_15SAS, r_16PAS, r_17PAO
/

z2reg(z,reg) Mapping of regions
/
 01_KOR. (r_01KOR)
 02_CHN. (r_02CHN)
 03_JPN. (r_03JPN)
 04_RUS. (r_04RUS)
 05_MNG. (r_05MNG)
 06_PRK. (r_06PRK)
 07_NAM. (r_07NAM)
 08_LAM. (r_08LAM)
 09_WEU. (r_09WEU)
 10_EEU. (r_10EEU)
 11_RFSU. (r_11FSU)
 12_MEA. (r_12MEA)
 13_AFR. (r_13AFR)
 14_RCPA. (r_14CPA)
 15_SAS. (r_15SAS)
 16_RPAS. (r_16PAS)
 17_RPAO. (r_17PAO)
/

j2acts(j,acts) Mapping of sectors
/
 01_AGRICULT.     (pdr, wht, gro, v_f, osd, c_b, pfb, ocr, ctl, oap, rmk, wol, frs, fsh)
 02_COAL.         (coa)
 03_OIL.          (oil)
* 04_GAS.          (gas, gdt)
 04_GAS.          (gas)
 05_MINING.       (oxt)
 06_FOODPRO.      (cmt, omt, vol, mil, pcr, sgr, ofd, b_t)
 07_TEXTILES.     (tex, wap, lea)
 08_WOODPRO.      (lum)
 09_PAPERPRO.     (ppp)
 10_PETROLCOAL.   (p_c)
 11_CHEMICAL.     (chm, bph, rpp)
 12_NONMET.       (nmm)
 13_IRONSTL.      (i_s)
 14_NONFERR.      (nfm)
 15_MACHINE.      (fmp, ele, eeq, ome)
 16_TRANSEQ.      (mvh, otn)
 17_OTHERIND.     (omf)
 18_TnD.          (TnD)
 19_eNuclear.     (eNuclear)
 20_eCoal.        (eCoal)
 21_eGas.         (eGas)
 22_eOil.         (eOil)
 23_eWind.        (eWind)
 24_eSolar.       (eSolar)
 25_eHydro.       (eHydro)
 26_eOther.       (eOther)
 27_CONSTRUC.     (cns)
 28_LTRP.         (otp)
 29_WTRP.         (wtp)
 30_ATRP.         (atp)
 31_SER.          (trd, afs, whs, cmn, ofi, ins, rsa, obs, ros, dwe, osg, edu, hht, wtr)
/

j2comm(j,comm) Mapping of sectors
/
 01_AGRICULT.     (pdr, wht, gro, v_f, osd, c_b, pfb, ocr, ctl, oap, rmk, wol, frs, fsh)
 02_COAL.         (coa)
 03_OIL.          (oil)
* 04_GAS.          (gas, gdt)
 04_GAS.          (gas)
 05_MINING.       (oxt)
 06_FOODPRO.      (cmt, omt, vol, mil, pcr, sgr, ofd, b_t)
 07_TEXTILES.     (tex, wap, lea)
 08_WOODPRO.      (lum)
 09_PAPERPRO.     (ppp)
 10_PETROLCOAL.   (p_c)
 11_CHEMICAL.     (chm, bph, rpp)
 12_NONMET.       (nmm)
 13_IRONSTL.      (i_s)
 14_NONFERR.      (nfm)
 15_MACHINE.      (fmp, ele, eeq, ome)
 16_TRANSEQ.      (mvh, otn)
 17_OTHERIND.     (omf)
 18_TnD.          (TnD)
 19_eNuclear.     (eNuclear)
 20_eCoal.        (eCoal)
 21_eGas.         (eGas)
 22_eOil.         (eOil)
 23_eWind.        (eWind)
 24_eSolar.       (eSolar)
 25_eHydro.       (eHydro)
 26_eOther.       (eOther)
 27_CONSTRUC.     (cns)
 28_LTRP.         (otp)
 29_WTRP.         (wtp)
 30_ATRP.         (atp)
 31_SER.          (trd, afs, whs, cmn, ofi, ins, rsa, obs, ros, dwe, osg, edu, hht, wtr)
/

i2comm(i,comm) Mapping of sectors
/
 01_AGRICULT.     (pdr, wht, gro, v_f, osd, c_b, pfb, ocr, ctl, oap, rmk, wol, frs, fsh)
 02_COAL.         (coa)
 03_OIL.          (oil)
* 04_GAS.          (gas, gdt)
 04_GAS.          (gas)
 05_MINING.       (oxt)
 06_FOODPRO.      (cmt, omt, vol, mil, pcr, sgr, ofd, b_t)
 07_TEXTILES.     (tex, wap, lea)
 08_WOODPRO.      (lum)
 09_PAPERPRO.     (ppp)
 10_PETROLCOAL.   (p_c)
 11_CHEMICAL.     (chm, bph, rpp)
 12_NONMET.       (nmm)
 13_IRONSTL.      (i_s)
 14_NONFERR.      (nfm)
 15_MACHINE.      (fmp, ele, eeq, ome)
 16_TRANSEQ.      (mvh, otn)
 17_OTHERIND.     (omf)
 18_ELEC.         (TnD, eNuclear, eCoal, eGas, eOil, eWind, eSolar, eHydro, eOther)
 19_CONSTRUC.     (cns)
 20_LTRP.         (otp)
 21_WTRP.         (wtp)
 22_ATRP.         (atp)
 23_SER.          (trd, afs, whs, cmn, ofi, ins, rsa, obs, ros, dwe, osg, edu, hht, wtr)
/

i2comm2(i,comm) Mapping of sectors
/
 02_COAL.         (coa, oil, gas, p_c, TnD, eNuclear, eCoal, eGas, eOil, eWind, eSolar, eHydro, eOther)
/

COMtoIND(j,i)
/
 01_AGRICULT.     (01_AGRICULT)
 02_COAL.         (02_COAL)
 03_OIL.          (03_OIL)
 04_GAS.          (04_GAS)
 05_MINING.       (05_MINING)
 06_FOODPRO.      (06_FOODPRO)
 07_TEXTILES.     (07_TEXTILES)
 08_WOODPRO.      (08_WOODPRO)
 09_PAPERPRO.     (09_PAPERPRO)
 10_PETROLCOAL.   (10_PETROLCOAL)
 11_CHEMICAL.     (11_CHEMICAL)
 12_NONMET.       (12_NONMET)
 13_IRONSTL.      (13_IRONSTL)
 14_NONFERR.      (14_NONFERR)
 15_MACHINE.      (15_MACHINE)
 16_TRANSEQ.      (16_TRANSEQ)
 17_OTHERIND.     (17_OTHERIND)
 18_TnD.          (18_ELEC)
 19_eNuclear.     (18_ELEC)
 20_eCoal.        (18_ELEC)
 21_eGas.         (18_ELEC)
 22_eOil.         (18_ELEC)
 23_eWind.        (18_ELEC)
 24_eSolar.       (18_ELEC)
 25_eHydro.       (18_ELEC)
 26_eOther.       (18_ELEC)
 27_CONSTRUC.     (19_CONSTRUC)
 28_LTRP.         (20_LTRP)
 29_WTRP.         (21_WTRP)
 30_ATRP.         (22_ATRP)
 31_SER.          (23_SER)
/

f2endw(f,endw) Mapping of production factors
/
 slab.     (SkLab)
 ulab.     (UnSkLab)
 cap.      (Capital)
 land.     (Land)
 natr.     (NatRes)
/

;

ALIAS(reg,regj)
ALIAS(comm,commi)
ALIAS(acts,actsj)
ALIAS(j,jj)
ALIAS(i,ij)
ALIAS(l,lj)
ALIAS(k,kj)
ALIAS(z,zj,zjj)
ALIAS(time,timej)
AlIAS (ENE,ENEE)

*==============================================================================
* 2. Calibration of variables
*==============================================================================

Parameter
*==============================================================================
*  2.1 Variables in GTAP DB
*==============================================================================
* These are the variables from GTAP DB format 6 verion used in the calibration process.
* Population data is in million while all other data are expressed in millions of USD

 EVOS(endw,acts,reg)            Endowments at agents prices
 FBEP(endw,acts,reg)            Factor-based subsidies
 FTRV(endw,acts,reg)            Taxes - Factor Employment Tax Revenue
 MFRV(comm,reg,reg)             Protection MFA export subsidy equivalent
 OSEP(comm,reg)                 Ordinary output subsidies
 POP(reg)                       Population
 TFRV(comm,reg,reg)             Protection Ordinary Import Duty
 VDEP(reg)                      Capital Stock Value of Depreciation
 VDFP(comm,acts,reg)            Intermed Firms Dom Purchases at Agent Prices
 VDFB(comm,acts,reg)            Intermed Firms Dom Purchases at Mkt Prices
 VMFP(comm,acts,reg)            Intermed Firms Imp Purchases at Agent Prices
 VMFB(comm,acts,reg)            Intermed Firms Imp Purchases at Mkt Prices
 VDGP(comm,reg)                 Government Dom Purchases at Agents Prices
 VDGB(comm,reg)                 Government Dom Purchases at Market Prices
 VDPP(comm,reg)                 Private Hhold Dom Purchases at Agents Prices
 VDPB(comm,reg)                 Private Hhold Dom Purchases at Market Prices
 EVFB(endw,acts,reg)            Endowments Firms Purchases at Market Prices
 VIFA(comm,acts,reg)            Intermed Firms Imports at Agents Prices
 VIFM(comm,acts,reg)            Intermed Firms Imports at Market Prices
 VMGP(comm,reg)                 Government Imports at Agents Prices
 VMGB(comm,reg)                 Government Imports at Market Prices
 VMSB(comm,reg,reg)             Trade Bilateral Imports at Market Prices
 VMPP(comm,reg)                 Private Households Imports at Agents Prices
 VMPB(comm,reg)                 Private Households Imports at Market Prices
 VCIF(comm,reg,reg)             Trade Bilateral Imports at World Prices
 VKB(reg)                       Capital Stock Value at Beginning-of-Period
 VST(marg,reg)                  Trade Exports Internatl Trans Mkt Prices
 VTMFSD(marg,comm,reg,reg)      Trade Margins Internatl Trans World Prices
 VXSB(comm,reg,reg)             Trade Bilateral Exports at Market Prices
 VFOB(comm,reg,reg)             Trade Bilateral Exports at World Prices
 XTRV(comm,reg,reg)             Protection Ordinary Export Subsidy
 VDIP(comm,reg)                 Investment expenditure on dom. c in r at producer prices
 VMIP(comm,reg)                 Investment expenditure on imp. c in r at producer prices
 VDIB(comm,reg)                 Investment expenditure on dom. c in r at basic prices
 VMIB(comm,reg)                 Investment expenditure on imp. c in r at basic prices
 MAKES(comm,acts,reg)           Make matrix valued at suppliers prices
 MAKEB(comm,acts,reg)           Make matrix valued at basic prices

*==============================================================================
*  2.2 Variables in the aggregated model
*==============================================================================
 CO(i,z)         Household consumption of commodity I
 CGO(i,z)        Public final consumption of commodity i
 INVO(i,z)       Final demand of commodity i for investment purposes
 DDO(i,z)        Demand for domestic production of commodity i
 DEPO(z)         Depreciation
 DIO(i,j,z)      Intermediate consumption of commodity i by industry j
 DSO(j,i,z)      Supply of commodity i by sector j to the domestic market
 EXO(i,z,zj)     Exports supply of commodity i from country z to country zj
 EXTO(i,z)       Total Export
 IMO(i,zj,z)     Imports of commodity m by country z from country zj
 RKDO(k,j,z)     Type k capital income in industry j
 RKDO_J(k,z)     Type k capital income
 KSTO(z)         Total capital stock in region z
 LDO2(l,j,z)     Industry j demand for labour l
 LDO2_J(l,z)     Demand for labour l
 LDO(j,z)        Industry j demand for labour l
 LDO_J(z)        Demand for labour l
 MRGNO(i,z)      Demand for commodity i as a margin
 POPO(z)         Population
 TDHO(z)         Household income taxes
 DTAX(f,z)       Direct taxes
 TICO(i,z)       Government receipts of indirect taxes on commodity i
 TIKO(k,j,z)     Government receipts of indirect taxes on capital k of industry j
 TIKO_J(k,z)     Government receipts of indirect taxes on capital k
 TIMO(i,zj,z)    Government receipts of indirect taxes on imports of commodity i
 TIPO(j,z)       Government receipts of indirect taxes on production of industry j
 TIWO2(l,j,z)     Government receipts of indirect taxes on wages and salaries of industry j
 TIWO2_J(l,z)     Government receipts of indirect taxes on wages and salaries
 TIWO(j,z)     Government receipts of indirect taxes on wages and salaries of industry j
 TIWO_J(z)     Government receipts of indirect taxes on wages and salaries
 TIXO(i,z,zj)    Government receipts of indirect taxes on exports of commodity i
 tmrg(i,ij,zj,z) Rate of commodity i margin applied to import m from country zj
 XSO_I(i,z)      total production by commodity
 XSO(j,i,z)      Industry j production of commodity i
 XSTO(j,z)       Total aggregate output of industry j
 tssm(i,j,z)     Intermediate tax by source import
 tssd(i,j,z)     Intermediate tax by source domestic
 MAKE(j,i,z)     Make matrix valued at basic prices
 DSO_I(i,z)      Supplys of domestic production of commodity i
 XSO_I(i,z)      Total aggregate output of commoity i
 TotalCost(j,z)  Total Cost by industry
;

*==============================================================================
*  2.3 Loading parameters from GTAP database
*==============================================================================
$LOAD EVOS, FBEP, FTRV, MFRV, OSEP, POP, TFRV, VDEP, VDFP, VDFB, VDGP, VDGB, VMFP, VMFB, MAKES, MAKEB
$LOAD VDPP, VDPB, EVFB, VDIP, VDIB, VMIP, VMIB, VMGP, VMGB, VMPP, VMPB, VMSB, VCIF, VKB, VST
$LOAD VTMFSD, VXSB, VFOB, XTRV

*==============================================================================
* 2.4 Mapping between variables in the model and GTAP
*==============================================================================
*==============================================================================
* 2.4.1 Households consumption
*==============================================================================
* Households consumption is given by the sum of domestic purchases at
* agents prices (VDPP) and private household imports at agents prices (VMPP).

 CO(i,z)         = SUM{(comm,reg)$[i2comm(i,comm)$z2reg(z,reg)],
                       VDPP(comm,reg)+VMPP(comm,reg)};

 CO(i,z)$(CO(i,z) lt 0.1) = 0.1 ;

*==============================================================================
* 2.4.2 Public final consumption
*==============================================================================
* Public final consumption is given by the sum of domestic purchases at
* agents prices (VDGP) and public final imports at agents prices (VMGP).

 CGO(i,z)        = SUM{(comm,reg)$[i2comm(i,comm)$z2reg(z,reg)],
                       VDGP(comm,reg)+VMGP(comm,reg)};

 CGO(i,z)$(CGO(i,z) lt 0.1) = 0.1 ;

*==============================================================================
* 2.4.3 Demand for investment purposes
*=============================================================================
*  In the GTAP data, the accumulation account is presented in the
*  production sector CGDS (Capital goods). Demand for investment purposes
*  is thus given by the sum of domestic purchases at agents prices (VDIP)
*  and public final imports at agents prices (VMIP) for this sector.

 INVO(i,z)       = SUM{(comm,reg)$[i2comm(i,comm)$z2reg(z,reg)],
                      VDIP(comm,reg)+VMIP(comm,reg)};

 INVO(i,z)$(INVO(i,z) lt 0.1) = 0.1 ;

*==============================================================================
* 2.4.4 Intermediate demand
*==============================================================================
* Intermediate consumption is given by the sum of domestic purchases at
* agents prices (VDFP) and public final imports at agents prices (VMFP).

 DIO(i,j,z)      = SUM[(comm,acts,reg)$[i2comm(i,comm)
                      $j2acts(j,acts)$z2reg(z,reg)],
                      VDFP(comm,acts,reg)+VMFP(comm,acts,reg)];

 DIO(ene,j2,z)$(DIO(ene,j2,z) lt 0.1) = sum(enee,DIO(enee,j2,z))*0.015 ;
 DIO(i,j,z)$(DIO(i,j,z) lt 0.1) = 0.1 ;

* for data balancing
* DIO(i,'09_PAPERPRO','05_MNG')$(DIO(i,'09_PAPERPRO','05_MNG') lt 0.0000068505) = 0.000001 ;

 tssm(i,j,z)    = SUM[(comm,acts,reg)$[i2comm(i,comm)
                      $j2acts(j,acts)$z2reg(z,reg)],
                      VMFP(comm,acts,reg)-VMFB(comm,acts,reg)];

 tssd(i,j,z)    = SUM[(comm,acts,reg)$[i2comm(i,comm)
                      $j2acts(j,acts)$z2reg(z,reg)],
                      VDFP(comm,acts,reg)-VDFB(comm,acts,reg)];

*==============================================================================
* 2.4.5 Imports
*==============================================================================
* Imports are defined in GTAP at world prices (VCIF) and at market prices
* (VMSB). Data on bilateral flows also include margins on imports (VTMFSD) and
* import duties (TFRV). On the export side, the database includes exports at
* market prices (VXSB), at world prices (VFOB) and subsidies on exports (MFRV
* and XTRV).
* The relationships between those variables is the following:
*       VMSB = VCIF + TFRV
*       VCIF = VFOB + VTMFSD
*       VXSB = VFOB - MFRV - XTRV
*
* Imports are evaluated at world prices (VCIF) less transport margins (VTMFSD).

** Elimination of trade within a country:
** Trade within any entity that is a GTAP single-country region (or equivalent)
** is removed.
 VCIF(comm,z1c,z1c)        = 0;
 VTMFSD(marg,comm,z1c,z1c) = 0;

 IMO(i,zj,z)     = SUM{(comm,regj,reg)$[i2comm(i,comm)
                       $z2reg(zj,regj)$z2reg(z,reg)],
                       VCIF(comm,regj,reg)-
                       SUM[marg,VTMFSD(marg,comm,regj,reg)]};
*lt Strictly less than
 IMO(i,zj, z)$(IMO(i, zj, z) lt 0.1) = 0.1 ;
 IMO(i,zj,z)$sameas(zj,z) = 0 ;

* IMO(i,zj,z)$(abs(IMO(i,zj,z)) < 1e-3) = 0;
* IMO(i,zj,z)$sameas(zj,z) = 0 ;

*==============================================================================
* 2.4.6 Exports
*==============================================================================
*  To limit the sources of potential desequilibrium, exports are simply set
*  equal to imports.

 EXO(i,zj,z)     = IMO(i,zj,z);
 EXTO(i,z)       = sum(zj, EXO(i,z,zj));

* VXSB(comm,z1c,z1c)        = 0;
 
* Alternative method bring the export value
* EXO(i,zj,z)     = SUM{(comm,regj,reg)$[i2comm(i,comm)
*                       $z2reg(zj,regj)$z2reg(z,reg)],
*                       VXSB(comm,regj,reg)};
*
*;
                       
* EXO(i,zj,z)$(abs(EXO(i,zj,z)) < 1e-8) = 1e-3;
* EXTO(i,z)       = sum(zj, EXO(i,z,zj));

*==============================================================================
* 2.4.7 Margins
*==============================================================================
*  Transport margins are given by the variable VTMFSD
* tmrg(TRP,ij,zj,z)$IMO(ij,zj,z)
*                 = SUM{(comm,regj,reg)$[j2comm(ij,comm)
*                       $z2reg(zj,regj)$z2reg(z,reg)],
*                       SUM[marg,VTMFSD(marg,comm,regj,reg)]};

 tmrg('20_LTRP',ij,zj,z)$IMO(ij,zj,z)
                 = SUM{(comm,regj,reg)$[i2comm(ij,comm)
                       $z2reg(zj,regj)$z2reg(z,reg)],
                       VTMFSD('otp',comm,regj,reg)};

* tmrg('20_LTRP',ij,zj,z)$(tmrg('20_LTRP',ij,zj,z)lt 0.1) = 0.1 ;

 tmrg('21_WTRP',ij,zj,z)$IMO(ij,zj,z)
                 = SUM{(comm,regj,reg)$[i2comm(ij,comm)
                       $z2reg(zj,regj)$z2reg(z,reg)],
                       VTMFSD('wtp',comm,regj,reg)};

* tmrg('21_WTRP',ij,zj,z)$(tmrg('21_WTRP',ij,zj,z)lt 0.1) = 0.1 ;

 tmrg('22_ATRP',ij,zj,z)$IMO(ij,zj,z)
                 = SUM{(comm,regj,reg)$[i2comm(ij,comm)
                       $z2reg(zj,regj)$z2reg(z,reg)],
                       VTMFSD('atp',comm,regj,reg)};

* tmrg('22_ATRP',ij,zj,z)$(tmrg('22_ATRP',ij,zj,z)lt 0.1) = 0.1 ;


* Supply of transport margin are given by the variable VST
 MRGNO(i,z)      = SUM{(marg,reg)$[i2comm(i,marg)$z2reg(z,reg)],
                       VST(marg,reg)};
                       
 MRGNO(i,z)$(MRGNO(i,z)lt 0.1) = 0.1 ;
 
*==============================================================================
* 2.4.8 Import duties
*==============================================================================
*  Import duties are given by the variable TFRV

 TIMO(i,zj,z)$IMO(i,zj,z)
                 = SUM{(comm,regj,reg)$[i2comm(i,comm)
                       $z2reg(zj,regj)$z2reg(z,reg)],
                       TFRV(comm,regj,reg)};

*==============================================================================
* 2.4.9 Taxes on exports
*==============================================================================
*  Taxes on exports are given by the sum of MFRV and XTRV

 TIXO(i,z,zj)$IMO(i,z,zj)
                 = SUM{(comm,reg,regj)$[i2comm(i,comm)
                       $z2reg(z,reg)$z2reg(zj,regj)],
                       MFRV(comm,reg,regj)+XTRV(comm,reg,regj)};

*==============================================================================
* 2.4.10 Taxes on factors of production
*==============================================================================
* Net taxes on factor of production are calculated as taxes (FTRV)
* less subsidies (FBEP).

 TIWO2(l,j,z)     = SUM{(endw,acts,reg)$[f2endw(l,endw)
                       $j2acts(j,acts)$z2reg(z,reg)],
                       FTRV(endw,acts,reg)+
                       FBEP(endw,acts,reg)};

 TIWO2_J(l,z)   = SUM(j, TIWO2(l,j,z));

 TIWO(j,z) = SUM(l, TIWO2(l,j,z));

 TIWO_J(z)   = SUM(j, TIWO(j,z));

 TIKO(k,j,z)     = SUM{(endw,acts,reg)$[f2endw(k,endw)
                       $j2acts(j,acts)$z2reg(z,reg)],
                       FTRV(endw,acts,reg)+
                       FBEP(endw,acts,reg)};

 TIKO_J(k,z) = SUM(j, TIKO(k,j,z));
  
*==============================================================================
* 2.4.11 Taxes on production
*==============================================================================
* Taxes on production are set equal to the negative value of production
* subsidies (OSEP).

 TIPO(j,z)       = SUM{(comm,reg)$[j2comm(j,comm)$z2reg(z,reg)],
                       OSEP(comm,reg)};

*==============================================================================
* 2.4.12 Domestic taxes on commodities
*==============================================================================
* Domestic taxes on commodities are evaluated as the difference between
* demand at agent prices and demand at market prices.

 TICO(i,z)       = SUM{(comm,reg)$[i2comm(i,comm)$z2reg(z,reg)],
                      VDPP(comm,reg)-VDPB(comm,reg)
                     +VMPP(comm,reg)-VMPB(comm,reg)
                     +VDGP(comm,reg)-VDGB(comm,reg)
                     +VMGP(comm,reg)-VMGB(comm,reg)
                     +SUM[acts,VDFP(comm,acts,reg)
                          +VMFP(comm,acts,reg)]

                     -SUM[acts,VDFB(comm,acts,reg)
                           +VMFB(comm,acts,reg)]};


*Balancing 2019

TICO('04_GAS','06_PRK')   = TICO('04_GAS','06_PRK') -3.59655 -1.0;
TICO('04_GAS','05_MNG')   = TICO('04_GAS','05_MNG') -2.15382 -1.0;
TICO('03_OIL','05_MNG')   = TICO('03_OIL','05_MNG') -3.30004 -1.0;
TICO('03_OIL','06_PRK')   = TICO('03_OIL','06_PRK') -2.13592 -1.0;

*==============================================================================
* 2.4.13 Direct taxes
*==============================================================================
* Direct taxes is given by the difference between factor payment at
* market prices (EVFB) and endowment at agent prices (EVOS)

 TDHO(z)            = SUM{reg$z2reg(z,reg),
                       SUM[endw,SUM(acts,EVFB(endw,acts,reg))
                       -SUM(acts,EVOS(endw, acts, reg))]};

 DTAX(f,z)          = SUM{(endw,reg)$[f2endw(f,endw)$z2reg(z,reg)],
                       SUM[acts,EVFB(endw,acts,reg)] -
                       SUM[acts,EVOS(endw,acts, reg)]} ;

*==============================================================================
* 2.4.14 Factors of production
*==============================================================================
* Remuneration of the production factors is evaluated at market prices,
* that is before taxes (EVFB).

 LDO2(l,j,z)       = SUM{(endw,acts,reg)$[f2endw(l,endw)
                       $j2acts(j,acts)$z2reg(z,reg)],
                       EVFB(endw,acts,reg)};

 LDO2(l,j,z)$(LDO2(l,j,z) lt 0.1) = 0.1 ;
 LDO2_J(l,z)  = SUM(j,LDO2(l,j,z)) - DTAX(l,z);

 LDO(j,z) = SUM(l,LDO2(l,j,z));
 LDO_J(z) = SUM(j,LDO(j,z));

 RKDO(k,j,z)      = SUM{(endw,acts,reg)$[f2endw(k,endw)
                       $j2acts(j,acts)$z2reg(z,reg)],
                       EVFB(endw,acts,reg)};

 RKDO("cap",j,z)$(RKDO("cap",j,z) lt 0.1) = 0.1 ;
 RKDO("natr","04_GAS","01_KOR")$(RKDO("natr","04_GAS","01_KOR") lt 0.1) = 0.1 ;
 RKDO("natr","04_GAS","05_MNG")$(RKDO("natr","04_GAS","05_MNG") lt 0.1) = 0.1 ;
 RKDO("natr","04_GAS","06_PRK")$(RKDO("natr","04_GAS","06_PRK") lt 0.1) = 0.1 ;
 RKDO("natr","05_MINING","06_PRK")$(RKDO("natr","05_MINING","06_PRK") lt 0.1) = 0.1 ;

* Total capital stock at the beginning of the period
 KSTO(z)         = SUM{reg$z2reg(z,reg),VKB(reg)};

*==============================================================================
* 2.4.15 Depreciation
*==============================================================================
* Depreciation is given by the variable VDEP

 DEPO(z)         = SUM{reg$z2reg(z,reg),VDEP(reg)};

*==============================================================================
* 2.4.16 Population
*==============================================================================
*  Population by region
 POPO(z)         = SUM{reg$z2reg(z,reg),POP(reg)};

*==============================================================================
* 2.4.17 Domestic demand
*==============================================================================
* Once again, to avoid descrepencies, domestic purchases are calculated
* by substracting imports, transport margins and indirect taxes from total
* domestic absorption.

 DDO(i,z)        = CO(i,z)+CGO(i,z)+INVO(i,z)+SUM[j,DIO(i,j,z)]-TICO(i,z)
                   -SUM[zj,TIMO(i,zj,z)]-SUM[zj,IMO(i,zj,z)]
                   -SUM[(ij,zj),tmrg(ij,i,zj,z)];

*==============================================================================
* 2.4.18 MAKE Matrix
*==============================================================================

 MAKE(j,i,z) = SUM[(acts,comm,reg)$[i2comm(i,comm)
                      $j2acts(j,acts)$z2reg(z,reg)],
                      MAKEB(comm,acts,reg)];

*==============================================================================
* 2.5 Equilibrate data
*==============================================================================
*  2.5.1 Equilibrium on the world margin market
*==============================================================================
*  The first step would be to equilibrate international markets. As there is a
*  small difference between supply of margins and demand, we chose to adjust
*  the supply side by increasing or reducing each region's production
*  proportionately.

 MRGNO(i,z)$MRGNO(i,z)
                 = MRGNO(i,z)*SUM[(ij,zj,zjj),tmrg(i,ij,zj,zjj)]
                  /SUM[zjj,MRGNO(i,zjj)];

**==============================================================================
* 2.5.2 Equilibrium in each region
*==============================================================================
*  As exports have already been set equal to imports, the remaining differences
*  would appear in the national data. Total production is first set equal to
*  the sum of production for the domestic market (DSO), adjusted production
*  of margins (MRGNO) and exports.

 DSO_I(i,z)        = DDO(i,z) ;
 XSO_I(i,z)        = DDO(i,z)+MRGNO(i,z)+SUM[zj,EXO(i,z,zj)-TIXO(i,z,zj)];
 XSO(j,i,z)        = XSO_I(i,z)*[MAKE(j,i,z)/sum(jj,MAKE(jj,i,z))];
 XSTO(j,z)         = SUM(i, XSO(j,i,z));
 EXTO(i,z)         = SUM[zj,EXO(i,z,zj)];
 DSO(j,i,z)        = DDO(i,z)*[MAKE(j,i,z)/sum(jj,MAKE(jj,i,z))];

*  The operating surplus is the variable that was used to equilibrate the
*  regional data. As all other variables (income, savings and so on) will
*  be calculated based on the variables described in these steps, there
*  should not be any other descrepency.

* for Data Balancing in 2019 Database
TIPO('04_GAS','06_PRK')       = -9.19154 -0.1;
TIPO('09_PAPERPRO','05_MNG')  = -7.77282  -0.1;
TIPO('11_CHEMICAL','05_MNG')  = -7.2221  -0.809803 -0.1;
TIPO('03_OIL','06_PRK')       = -6.11563 -0.1;
TIPO('13_IRONSTL','05_MNG')   = -5.64578 -0.1;
TIPO('19_eNuclear','06_PRK')  = -4.99124 -0.1;
TIPO('23_eWind','06_PRK')     = -4.99122 -0.1;
TIPO('24_eSolar','06_PRK')    = -4.92509 -0.1;
TIPO('19_eNuclear','05_MNG')  = -4.81788 -0.1;
TIPO('19_eNuclear','17_RPAO')  = -4.80275 -0.1;
TIPO('26_eOther','05_MNG')    = -4.80001 -0.1;
TIPO('21_eGas','05_MNG')      = -4.78731 -0.1;
TIPO('19_eNuclear','14_RCPA')  = -4.63479 -0.1;
TIPO('21_eGas','06_PRK')      = -4.12172 -0.1;
TIPO('24_eSolar','14_RCPA')    = -3.06953 -0.1;
TIPO('26_eOther','06_PRK')    = -2.96659 -0.1;
TIPO('14_NONFERR','06_PRK')   = -2.12762 -0.1;
TIPO('10_PETROLCOAL','06_PRK')= -1.82929 -0.1;
TIPO('24_eSolar','05_MNG')    = -0.654131 -0.1;
TIPO('22_eOil','06_PRK')      = -0.408636 -0.1;
TIPO('04_GAS','01_KOR')       = -0.00115488 -0.1;
TIPO('04_GAS','05_MNG')       = -0.0039926 -7.1598 -0.1;
TIPO('05_MINING','06_PRK ')   = -0.0394804 -0.1;

RKDO('cap',j,z)  = XSTO(j,z)-SUM[i,DIO(i,j,z)]-LDO(j,z)-TIWO(j,z)
                   -TIPO(j,z)-SUM[k,TIKO(k,j,z)]-RKDO('land',j,z) -RKDO('natr',j,z);


RKDO_J(k,z) = sum(j,RKDO(k,j,z)) - DTAX(k,z);

TotalCost(j,z) = SUM[i,DIO(i,j,z)]
                    +LDO(j,z)+TIWO(j,z)
                    +TIPO(j,z)
                    +SUM[k,TIKO(k,j,z)+RKDO(k,j,z)];

*==============================================================================
* 3. CES elasticities
*==============================================================================
* 3.1 Definition of GTAP parameters
*==============================================================================
PARAMETER
 ESUBD(comm, reg)   Elasticity of substitution between domestic product and imports
 ESUBM(comm, reg)   Elasticity of substitution between imports from different regions
 ESUBVA(acts, reg)  Elasticity of substitution between primary factors in the production of value added
 ELFKLE(acts, reg)  Elasticity of substitution between VA-energy sub-production
 INCPAR(comm, reg) CDE expansion parameter for GTAP-E
*==============================================================================
* 3.2 Definition in GUIDE-GLOBAL-CGE
*==============================================================================
 sigma_M1(i,z)   Elasticity (CES - composite commodity)
 sigma_M2(i,z)   Elasticity (CES - composite import)
 sigma_VA(j,z)   Elasticity (CES - value added)
 sigma_KLE(j,z)  Elastcitiy (CES - KL-E)
 sigma_Y(i,z)     Income elasticity of consumption

*==============================================================================
* 3.3 Temporary variables
*==============================================================================
 IM_GTAP(comm,z)  Total imports using the GTAP commodity sets
 Q_GTAP(comm,z)   Composite commodity using the GTAP commodity sets
 Y_GTAP(comm,z)   Composite commodity using the GTAP commodity sets 
 VA_GTAP(acts,z)  Value added using the GTAP sectors
 KLE_GTAP(acts,z) KLE using the GTAP sectors
 E_GTAP(acts,z)   E using ther GTAP sectors
 SH_IM(comm,i,z)  Share of each import TRAD_COM in aggregation i for region z
 SH_Q(comm,i,z)   Share of each composite commodity TRAD_COM in aggregation i for region z
 SH_Y(comm,i,z)  Share of each import TRAD_COM in aggregation i for region z
 SH_VA(acts,j,z)  Share of each sector TRAD_COM in aggregation j for region z
 SH_KLE(acts,j,z) Share of each sector KLE in aggregation j for region z
 SH_ELEC(acts,j,z) Share of each sector KLE in aggregation j for region z
;

*==============================================================================
* 3.4 Load the GTAP file which includes the parameters
*==============================================================================
$GDXIN Input_CGE\GTAP11c_Parameters2019.gdx
$LOAD ESUBD, ESUBM, INCPAR, ESUBVA, ELFKLE

*==============================================================================
*  3.5 sigma_M1
*==============================================================================
* Elasticities of substitution between domestic product and imports are
* aggregated acording to the share of each commodity (QO) TRAD_COMM in total I

 Q_GTAP(comm,z)
                 = SUM{reg$z2reg(z,reg),
                   VDPP(comm,reg)+VMPP(comm,reg)+
                   VDGP(comm,reg)+VMGP(comm,reg)+
                   VDIP(comm,reg)+VMIP(comm,reg)+
                   SUM[acts,VDFP(comm,acts,reg)+
                       VMFP(comm,acts,reg)]};

 SH_Q(comm,i,z)$i2comm(i,comm)
                 = Q_GTAP(comm,z)/
                   SUM{commi$i2comm(i,commi),
                       Q_GTAP(commi,z)};

 sigma_M1(i,z)   = SUM{(comm,reg)$[i2comm(i,comm)$z2reg(z,reg)],
                   ESUBD(comm,reg)*SH_Q(comm,i,z)};

*==============================================================================
*  3.6 sigma_M2
*==============================================================================
* Elasticities of substitution between imports from different partners are
* aggregated acording to the share of total import (IMTO) TRAD_COMM in total I

 IM_GTAP(comm,z)
                 = SUM[regj,SUM{reg$z2reg(z,reg),VCIF(comm,regj,reg)}];

 SH_IM(comm,i,z)$i2comm(i,comm)
                 = IM_GTAP(comm,z)/
                   SUM{commi$i2comm(i,commi),
                       IM_GTAP(commi,z)};

 sigma_M2(i,z)   = SUM{(comm,reg)$[i2comm(i,comm)$z2reg(z,reg)],
                   ESUBM(comm,reg)*SH_IM(comm,i,z)};

*==============================================================================
*  3.7 sigma_VA
*==============================================================================
* Elasticities of substitution between factors of production are aggregated
* acording to the share of each sector (VA) TRAD_COMM in total I

 VA_GTAP(acts,z)
                 = SUM{endw,
                       SUM[reg$z2reg(z,reg),EVFB(endw,acts,reg)]};

 SH_VA(acts,j,z)$j2acts(j,acts)
                 = VA_GTAP(acts,z)/
                   SUM{actsj$j2acts(j,actsj),
                       VA_GTAP(actsj,z)};

 sigma_VA(j,z)   = SUM{(acts,reg)$[j2acts(j,acts)$z2reg(z,reg)],
                   ESUBVA(acts,reg)*SH_VA(acts,j,z)};

*==============================================================================
*  3.8 sigma_KLE
*==============================================================================
 KLE_GTAP(acts,z)
                 = SUM{endw,
                       SUM[reg$z2reg(z,reg),EVFB(endw,acts,reg)]} + 
                     SUM[i,
                        SUM[(comm,reg)$[i2comm2(i,comm)$z2reg(z,reg)],
                             VDFP(comm,acts,reg)+VMFP(comm,acts,reg)]];

 E_GTAP(acts,z)
                 = SUM[i,
                        SUM[(comm,reg)$[i2comm2(i,comm)$z2reg(z,reg)],
                             VDFP(comm,acts,reg)+VMFP(comm,acts,reg)]];

 SH_KLE(acts,j,z)$j2acts(j,acts)
                 = KLE_GTAP(acts,z)/
                   SUM{actsj$j2acts(j,actsj),
                       KLE_GTAP(actsj,z)};

 sigma_KLE(j,z)   = SUM{(acts,reg)$[j2acts(j,acts)$z2reg(z,reg)],
                    ELFKLE(acts, reg)*SH_KLE(acts,j,z)};

*==============================================================================
*  3.9  sigma_Y
*==============================================================================
 Y_GTAP(comm,z)
                 = SUM{reg$z2reg(z,reg),
                   VDPP(comm,reg)+VMPP(comm,reg)};

 SH_Y(comm,i,z)$i2comm(i,comm)
                 = Y_GTAP(comm,z)/
                   SUM{commi$i2comm(i,commi),
                       Y_GTAP(commi,z)};

 sigma_Y(i,z)   = SUM{(comm,reg)$[i2comm(i,comm)$z2reg(z,reg)],
                   INCPAR(comm,reg)*SH_Y(comm,i,z)};

*==============================================================================
* Projections used in Recursive Dynamic model
*==============================================================================
SET field / GDP, TOT_POP, g_GDP, g_POP, g_SDR, CTAX_BAU, PERMIT_REF, PERMIT_NDC, PERMIT_NZ, AEEI_BAU, AEEI_NDC, AEEI_NZ /;

PARAMETER ALL_DATA(field, z, time) "Integrated Projections Data";

$call csv2gdx Input_CGE/Integrated_Projection.csv output=Input_CGE/Integrated_Projection.gdx id=ALL_DATA index=1,2 values=3..34 useHeader=yes

$gdxIn Input_CGE/Integrated_Projection.gdx
$load ALL_DATA
$gdxIn

Table
 EMPLOY(j,z)             Employment by sector 2019 (thousand) 
$ondelim
$include Input_CGE\2019_Employment.csv
$offdelim
;

PARAMETER
    GDP(z,time)          GDP projection  
    TOT_POP(z,time)      Total population projection
    g_GDP(z,time)        GDP growth
    g_POP(z,time)        Population growth rate
    g_SDR(z,time)        Domestic savings rate growth rate
    CTAX_BAU(z,time)     BAU CTAX
    PERMIT_REF(z,time)   REF Emission Constraint
    PERMIT_NDC(z,time)   NDC Emission Constraint
    PERMIT_NZ(z,time)     NZ Emission Constraint
    AEEI_BAU(z,time)     AEEI BAU
    AEEI_NDC(z,time)     AEEI NDC
    AEEI_NZ(z,time)      AEEI NZ
;

GDP(z,time)         = ALL_DATA('GDP', z, time);
TOT_POP(z,time)  = ALL_DATA('TOT_POP', z, time);
g_GDP(z,time)      = ALL_DATA('g_GDP', z, time);
g_POP(z,time)      = ALL_DATA('g_POP', z, time);
g_SDR(z,time)      = ALL_DATA('g_SDR', z, time);
CTAX_BAU(z,time) = ALL_DATA('CTAX_BAU', z, time);
PERMIT_REF(z,time) = ALL_DATA('PERMIT_REF', z, time);
PERMIT_NDC(z,time) = ALL_DATA('PERMIT_NDC', z, time);
PERMIT_NZ(z,time) = ALL_DATA('PERMIT_NZ', z, time);
AEEI_BAU(z,time) = ALL_DATA('AEEI_BAU', z, time);
AEEI_NDC(z,time) = ALL_DATA('AEEI_NDC', z, time);
AEEI_NZ(z,time) = ALL_DATA('AEEI_NZ', z, time);

*==============================================================================
* UserDefined Parameter
*==============================================================================
PARAMETER
    CTAX_UserDefined(z,time) UserDefined CTAX
    AEEI_UserDefined(z,time)     UserDefined AEEI
    SolarWindTFP_UserDefined(z,time)  UserDefined SolarWind_TFP
;

$call gdxxrw Input_CGE\UserDefined.xlsx @Input_CGE\UserDefined.txt output = Input_CGE\UserDefined.gdx 
$gdxIn Input_CGE\UserDefined.gdx
$load CTAX_UserDefined, AEEI_UserDefined, SolarWindTFP_UserDefined

*==============================================================================
* GTAPSAM
*==============================================================================
$INCLUDE Input_CGE/DATA_GTAPSAM.gms

*==============================================================================
* Regenerating Input Data
*==============================================================================
$INCLUDE Input_CGE/DATA_ReGen.gms