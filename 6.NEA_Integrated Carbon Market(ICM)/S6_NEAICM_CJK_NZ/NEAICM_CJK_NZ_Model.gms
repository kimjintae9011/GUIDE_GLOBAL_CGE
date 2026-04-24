$TITLE     GUIDE_GLOBAL_CGE model GTAP11c 
*==============================================================================                                                                             
*           GUIDE_GLOBAL_CGE GTAP11c Model Code Manual                  
*           Version: 1.0                                                       
*           Author: Jintae Kim                                                 
*           Original Code Authors: Veronique Robichaud, Andre Lemelin,        
*           Helene Maisonnave, Bernard Decaluwe (PEP-w-1)                    
*                                                                              
*           Except where otherwise noted, this work is licensed under         
*           the Creative Commons Attribution-NonCommercial-ShareAlike 3.0     
*           (CC BY-NC-SA 3.0) License.                                         
*           https://creativecommons.org/licenses/by-nc-sa/3.0/                
*==============================================================================

*==============================================================================
* Set 
*==============================================================================
SET
 J               All industries
 I               All commodities
 I1(I)           All commodities except agriculture (agr)
 I2(I)           Backstop technology
 PUB(J)          Public industries
 F               Production factors
 K(F)            Capital categories
 Z               Regions
 ZR(Z)           Reference country (USA)
 Z1(Z)           All regions except reference region
 Zrich(Z)        Rich regions
 Zother(Z)       Non-rich regions

J Industries including backstop technologies
/
01_AGRICULT Agricultural forest and fishery goods
02_COAL Coal
03_OIL Crude petroleum
04_GAS Natural gas Gas distribution
05_MINING Mined and quarried goods
06_FOODPRO Food beverages and tobacco products
07_TEXTILES Textile and leather products
08_WOODPRO Wood products
09_PAPERPRO Paper products
10_PETROLCOAL Petroleum and coal products
11_CHEMICAL Chemical products
12_NONMET Non-metallic mineral products
13_IRONSTL Primary iron and steel products
14_NONFERR Non-ferrous metal products
15_MACHINE Fabricated metal products Electronic and electrical equipment Machinery and equipment
16_TRANSEQ Motor vehicles Other transport equipment
17_OTHERIND Other manufactured products Water supply
18_TnD Transmission and Distribution
19_eNuclear Nuclear generation
20_eCoal Coal generation
21_eGas Gas generation
22_eOil Oil generation
23_eWind Wind generation
24_eSolar Solar generation
25_eHydro Hydro generation
26_eOther Other generation
27_CONSTRUC Construction
28_LTRP Land transport service(road rail)
29_WTRP Water transport service
30_ATRP Air transport service
31_SER Service
32_BSCHEMICAL Low-carbon chemical products (e.g. green ammonia)
33_BSNONMET Low-carbon non-metallic minerals (e.g. green cement)
34_BSIRONSTL Green steel products (e.g. hydrogen DRI)
35_BS_LTRP Zero-emission land transport (e.g. EV and FCEV)
36_BS_WTRP Zero-emission water transport (e.g. green methanol)
37_BS_ATRP Zero-emission air transport (e.g. SAF)
/

BUS(J) Industries
/
01_AGRICULT Agricultural forest and fishery goods
02_COAL Coal
03_OIL Crude petroleum
04_GAS Natural gas Gas distribution
05_MINING Mined and quarried goods
06_FOODPRO Food beverages and tobacco products
07_TEXTILES Textile and leather products
08_WOODPRO Wood products
09_PAPERPRO Paper products
10_PETROLCOAL Petroleum and coal products
11_CHEMICAL Chemical products
12_NONMET Non-metallic mineral products
13_IRONSTL Primary iron and steel products
14_NONFERR Non-ferrous metal products
15_MACHINE Fabricated metal products Electronic and electrical equipment Machinery and equipment
16_TRANSEQ Motor vehicles Other transport equipment
17_OTHERIND Other manufactured products Water supply
18_TnD Transmission and Distribution
19_eNuclear Nuclear generation
20_eCoal Coal generation
21_eGas Gas generation
22_eOil Oil generation
23_eWind Wind generation
24_eSolar Solar generation
25_eHydro Hydro generation
26_eOther Other generation
27_CONSTRUC Construction
28_LTRP Land transport service(road rail)
29_WTRP Water transport service
30_ATRP Air transport service
31_SER Service
32_BSCHEMICAL Low-carbon chemical products (e.g. green ammonia)
33_BSNONMET Low-carbon non-metallic minerals (e.g. green cement)
34_BSIRONSTL Green steel products (e.g. hydrogen DRI)
35_BS_LTRP Zero-emission land transport (e.g. EV and FCEV)
36_BS_WTRP Zero-emission water transport (e.g. green methanol)
37_BS_ATRP Zero-emission air transport (e.g. SAF)
/

$GDXIN Input_CGE/DATA_AGG-2019_GTAP11c_Regen.gdx
$LOAD I, PUB, F, K, Z, ZR, Z1, Zrich, Zother

I1(I) Commodities excluding agriculture LEON
/
* 01_AGRICULT    Agricultural forest and fishery goods
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

I2(I) Commodities excluding electricity and backstop technologies
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
* 11_CHEMICAL    Chemical products
* 12_NONMET      Non-metallic mineral products
* 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
* 18_ELEC        Electricity
 19_CONSTRUC    Construction
* 20_LTRP        Land transport service(road rail)
* 21_WTRP        Water transport service
* 22_ATRP        Air transport service
 23_SER         Service
/

ENE(I) Energy commodities full list
/
 02_COAL         Coal
 03_OIL          Crude petroleum
 04_GAS          Natural gas
 10_PETROLCOAL   Petroleum and coal products
 18_ELEC         Electricity
/

ENE1(I) Energy commodities exclduing electricity
/
 02_COAL         Coal
 03_OIL          Crude petroleum
 04_GAS          Natural gas
 10_PETROLCOAL   Petroleum and coal products
/

ENE2(I) Energy commodities Only electricity
/
 18_ELEC         Electricity
/

ENE3(ene) Energy commodities exclduing electricity
/
 02_COAL         Coal
 03_OIL          Crude petroleum
 04_GAS          Natural gas
 10_PETROLCOAL   Petroleum and coal products
/

ENE4(ene) Energy commodities exclduing electricity
/
* 02_COAL         Coal
* 03_OIL          Crude petroleum
* 04_GAS          Natural gas
* 10_PETROLCOAL   Petroleum and coal products
 18_ELEC         Electricity
/

ENE5(ene) Energy commodities exclduing electricity
/
 02_COAL         Coal
 04_GAS          Natural gas
/

ENE6(ene) Energy commodities exclduing electricity
/
 03_OIL          Crude petroleum
 10_PETROLCOAL   Petroleum and coal products
/

ENE7(ene) Energy commodities exclduing electricity
/
 02_COAL         Coal
 04_GAS          Natural gas
* 10_PETROLCOAL   Petroleum and coal products
/

NENE(I) Non-energy commodities
/
 01_AGRICULT    Agricultural forest and fishery goods
 05_MINING      Mined and quarried goods
 06_FOODPRO     Food beverages and tobacco products
 07_TEXTILES    Textile and leather products
 08_WOODPRO     Wood products
 09_PAPERPRO    Paper products
 11_CHEMICAL    Chemical products
 12_NONMET      Non-metallic mineral products
 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
 19_CONSTRUC    Construction
 20_LTRP        Land transport service(road rail)
 21_WTRP        Water transport service
 22_ATRP        Air transport service
 23_SER         Service
* 02_COAL        Coal
* 03_OIL         Crude petroleum
* 04_GAS         Natural gas Gas distribution
* 10_PETROLCOAL  Petroleum and coal products
* 18_ELEC        Electricity
/

I_BS(I)
/
11_CHEMICAL    Chemical products
12_NONMET      Non-metallic mineral products
13_IRONSTL     Primary iron and steel products
20_LTRP        Land transport service(road rail)
21_WTRP        Water transport service
22_ATRP        Air transport service
/

J2(J) KLE Sectors
/
 01_AGRICULT   Agricultural forest and fishery goods
 05_MINING      Mined and quarried goods
 06_FOODPRO   Food beverages and tobacco products
 07_TEXTILES   Textile and leather products
 08_WOODPRO  Wood products
 09_PAPERPRO  Paper products
 14_NONFERR     Non-ferrous metal products  
 15_MACHINE   Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ   Motor vehicles Other transport equipment
 17_OTHERIND Other manufactured products Water supply
 27_CONSTRUC    Construction
 28_LTRP          Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP         Air transport service
 31_SER           Service
/

J3(J) Non-KLE Sectors
/
 02_COAL Coal
 03_OIL Crude petroleum
 04_GAS Natural gas Gas distribution
 10_PETROLCOAL  Petroleum and coal products
 11_CHEMICAL    Chemical products
 12_NONMET      Non-metallic mineral products
 13_IRONSTL Primary iron and steel products
 18_TnD Transmission and Distribution
 19_eNuclear Nuclear generation
 20_eCoal Coal generation
 21_eGas Gas generation
 22_eOil Oil generation
 23_eWind Wind generation
 24_eSolar Solar generation
 25_eHydro Hydro generation
 26_eOther Other generation
 32_BSCHEMICAL Low-carbon chemical products (e.g. green ammonia)
 33_BSNONMET Low-carbon non-metallic minerals (e.g. green cement)
 34_BSIRONSTL Green steel products (e.g. hydrogen DRI)
 35_BS_LTRP Zero-emission land transport (e.g. EV and FCEV)
 36_BS_WTRP Zero-emission water transport (e.g. green methanol)
 37_BS_ATRP Zero-emission air transport (e.g. SAF)
/

J4(J) Industries excluding specified energy-related industries
/
 01_AGRICULT    Agricultural forest and fishery goods
* 02_COAL        Coal
* 03_OIL         Crude petroleum
* 04_GAS         Natural gas Gas distribution
 05_MINING      Mined and quarried goods
 06_FOODPRO     Food beverages and tobacco products
 07_TEXTILES    Textile and leather products
 08_WOODPRO     Wood products
 09_PAPERPRO    Paper products
* 10_PETROLCOAL  Petroleum and coal products
 11_CHEMICAL    Chemical products
 12_NONMET      Non-metallic mineral products
 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
* 18_TnD         Transmission and Distribution
* 19_eNuclear    Nuclear generation
* 20_eCoal       Coal generation
* 21_eGas        Gas generation
* 22_eOil        Oil generation
* 23_eWind       Wind generation
* 24_eSolar      Solar generation
* 25_eHydro      Hydro generation
* 26_eOther      Other generation
 27_CONSTRUC    Construction
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
 32_BSCHEMICAL Low-carbon chemical products (e.g. green ammonia)
 33_BSNONMET Low-carbon non-metallic minerals (e.g. green cement)
 34_BSIRONSTL Green steel products (e.g. hydrogen DRI)
 35_BS_LTRP Zero-emission land transport (e.g. EV and FCEV)
 36_BS_WTRP Zero-emission water transport (e.g. green methanol)
 37_BS_ATRP Zero-emission air transport (e.g. SAF)
/

J5(J) Fossil fuel power sector
/
 20_eCoal       Coal generation
 21_eGas        Gas generation
 22_eOil        Oil generation
/

J6(J) Industries excluding specified energy-related industries
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
* 18_TnD         Transmission and Distribution
* 19_eNuclear    Nuclear generation
* 20_eCoal       Coal generation
* 21_eGas        Gas generation
* 22_eOil        Oil generation
* 23_eWind       Wind generation
* 24_eSolar      Solar generation
* 25_eHydro      Hydro generation
* 26_eOther      Other generation
 27_CONSTRUC    Construction
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
 32_BSCHEMICAL Low-carbon chemical products (e.g. green ammonia)
 33_BSNONMET Low-carbon non-metallic minerals (e.g. green cement)
 34_BSIRONSTL Green steel products (e.g. hydrogen DRI)
 35_BS_LTRP Zero-emission land transport (e.g. EV and FCEV)
 36_BS_WTRP Zero-emission water transport (e.g. green methanol)
 37_BS_ATRP Zero-emission air transport (e.g. SAF)
/

J7(J) Industries MAC
/
 01_AGRICULT    Agricultural forest and fishery goods
* 02_COAL        Coal
* 03_OIL         Crude petroleum
* 04_GAS         Natural gas Gas distribution
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
* 18_TnD         Transmission and Distribution
* 19_eNuclear    Nuclear generation
* 20_eCoal       Coal generation
* 21_eGas        Gas generation
* 22_eOil        Oil generation
* 23_eWind       Wind generation
* 24_eSolar      Solar generation
* 25_eHydro      Hydro generation
* 26_eOther      Other generation
 27_CONSTRUC    Construction
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
/

TND(J) Electricity Transmission and Distribution
/
 18_TnD         Electricity Transmission and Distribution
/

POWER(J) Power sectors
/
 19_eNuclear    Nuclear generation
 20_eCoal       Coal generation
 21_eGas        Gas generation
 22_eOil        Oil generation
 23_eWind       Wind generation
 24_eSolar      Solar generation
 25_eHydro      Hydro generation
 26_eOther      Other generation
/

Energy(J) Industries
/
 02_COAL        Coal
 03_OIL         Crude petroleum
 04_GAS         Natural gas Gas distribution
 05_MINING      Mined and quarried goods
 10_PETROLCOAL  Petroleum and coal products
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

IndCon(J) Industries
/
 06_FOODPRO     Food beverages and tobacco products
 07_TEXTILES    Textile and leather products
 08_WOODPRO     Wood products
 09_PAPERPRO    Paper products
 11_CHEMICAL    Chemical products
 12_NONMET      Non-metallic mineral products
 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
 27_CONSTRUC    Construction
/

Roadrail(J) Industries
/
 28_LTRP        Land transport service(road rail)
/

Air(J) Industries
/
 30_ATRP        Air transport service
/

Water(J) Industries
/
 29_WTRP        Water transport service
/

Other(J) Industries
/
 01_AGRICULT    Agricultural forest and fishery goods
 31_SER         Service
/

Elec(J) Industries
/
 19_eNuclear    Nuclear generation
 20_eCoal       Coal generation
 21_eGas        Gas generation
 22_eOil        Oil generation
 23_eWind       Wind generation
 24_eSolar      Solar generation
 25_eHydro      Hydro generation
 26_eOther      Other generation
/

Conv(J)
/
11_CHEMICAL Chemical products
12_NONMET Non-metallic mineral products
13_IRONSTL Primary iron and steel products
28_LTRP Land transport service(road rail)
29_WTRP Water transport service
30_ATRP Air transport service
/

BS(J) Backstop sectors
 /
32_BSCHEMICAL
33_BSNONMET
34_BSIRONSTL
35_BS_LTRP
36_BS_WTRP
37_BS_ATRP
/

MAP_BS(*, *, *) Mapping backstop to conventional industry and commodity
/
  '32_BSCHEMICAL' . '11_CHEMICAL' . '11_CHEMICAL '
  '33_BSNONMET'   . '12_NONMET'   . '12_NONMET'
  '34_BSIRONSTL'  . '13_IRONSTL'  . '13_IRONSTL'
  '35_BS_LTRP'    . '28_LTRP'     . '20_LTRP'
  '36_BS_WTRP'    . '29_WTRP'     . '21_WTRP'
  '37_BS_ATRP'    . '30_ATRP'     . '22_ATRP'
/


MAP_Conv(*, *) Mapping backstop to conventional industry 
/
  '32_BSCHEMICAL' . '11_CHEMICAL'
  '33_BSNONMET'   . '12_NONMET'   
  '34_BSIRONSTL'  . '13_IRONSTL'  
  '35_BS_LTRP'    . '28_LTRP'     
  '36_BS_WTRP'    . '29_WTRP'     
  '37_BS_ATRP'    . '30_ATRP'     
/

DIRTY(J)
/
11_CHEMICAL Chemical products
12_NONMET Non-metallic mineral products
13_IRONSTL Primary iron and steel products
20_eCoal Coal generation
21_eGas Gas generation
22_eOil Oil generation
28_LTRP Land transport service(road rail)
29_WTRP Water transport service
30_ATRP Air transport service
/

NEA(z) NorthEastAisa 6 Countires
/
 01_KOR Korea
 02_CHN China
 03_JPN Japan
* 04_RUS Russian Federation
* 05_MNG Mongolia
* 06_PRK Peoples Republic of Korea
/

PERMIT_Z(z)
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
11_FSU Former Soviet Union
12_MEA Middle East and North Africa
13_AFR Sub-Saharan Africa
14_CPA Centrally Planned Asia and China
15_SAS South Asia
16_PAS Other Pacific Asia
17_PAO Pacific OECD
 /

PERMITOTH(z)
/
*01_KOR Korea
*02_CHN China
*03_JPN Japan
04_RUS Russian Federation
05_MNG Mongolia
06_PRK Peoples Republic of Korea
07_NAM North America
08_LAM Latin America and the Caribbean
09_WEU Western Europe
10_EEU Central and Eastern Europe
11_FSU Former Soviet Union
12_MEA Middle East and North Africa
13_AFR Sub-Saharan Africa
14_CPA Centrally Planned Asia and China
15_SAS South Asia
16_PAS Other Pacific Asia
17_PAO Pacific OECD
 /

Z_GRN(z)
 /
01_KOR Korea
02_CHN China
03_JPN Japan
07_NAM North America
09_WEU Western Europe
10_EEU Central and Eastern Europe
17_PAO Pacific OECD
 /

Z_OTH(z)
/
04_RUS Russian Federation
05_MNG Mongolia
06_PRK Peoples Republic of Korea
08_LAM Latin America and the Caribbean
11_FSU Former Soviet Union
12_MEA Middle East and North Africa
13_AFR Sub-Saharan Africa
14_CPA Centrally Planned Asia and China
15_SAS South Asia
16_PAS Other Pacific Asia
/

TIME Time periods
/
*2019
*2019*2020
*2019*2028
*2019*2034
*2019*2035
*2019*2036
*2019*2039
*2019*2040
*2019*2042
*2019*2045
*2019*2046
*2019*2047
*2019*2048
2019*2050
/

T(time)
T1(time)         First period;
T1(time)         = yes$[ord(time) eq 1];

Parameter EndTime /2050/;

Alias (j,jj)
Alias (j2,jj2)
Alias (i,ii,ij)
Alias (k,kj)
Alias (z,zj,zjj)
Alias (power, powerr)
Alias (BS, BSS)
Alias (ENE,ENEE)
Alias (TIME, TIMEE)
Alias (Elec, Elecc)
Alias (ene1, enee1)
Alias (ene3, enee3)
Alias (ene4, enee4)
Alias (ene5, enee5)
Alias (ene6, enee6)
Alias (ene7, enee7)
;

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
 B_X3(i,z)                    Scale parameter (CES - top level)
 B_X4(z)                      Scale parameter (CES - Aggregated Electricity)
 B_BS(j,Z_GRN)                Scale parameter for backstop nest
 B_VAT(BS,Z_GRN)              Scale parameter for VAT nest
 B_VAT_t(BS,Z_GRN,time)        Scale parameter for VAT nest over time

* --- [2] Share Parameters ---
 beta_D_X1(i,z)             Share parameter (CET - total output - local sales)
 beta_EX_X1(i,z)            Share parameter (CET - total output - export)
 beta_X2(i,z,zj)              Share parameter (CET - composite export)
 beta_X3(j,i,z)               Share parameter (CES - top level)
 beta_X4(power,z)          Share parameter (CES - Aggregated Electricity)
 beta_BS(j, I_BS, z)           Share parameter for backstop nest
 beta_BS_t(j, I_BS, z, time) Share parameter for backstop nest over time
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
 beta_VAT(BS,Z_GRN)          Share parameter for VA in VAT nest
 gamma_GVT(i,z)               Share of commodity i in total current public expenditures
 gamma_INV(i,z)               Share of commodity i in total investment expenditures
 gamma_LES(i,z)               Marginal share of commodity i in household consumption budget
 Cap_Share(j,z)               Capital Cost Share [Ratio]
 Lab_Share(j,z)               Labor Cost Share [Ratio]
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
 rho_X3(i,z)                  Elasticity parameter (CES - top level)
 rho_X4(z)                    Elasticity parameter (CES - Aggregated Electricity)
 rho_BS(j, Z_GRN)      Substitution parameter for backstop nest
 rho_VAT(BS,Z_GRN)               Substitution parameter for VAT nest
 sigma_INV(k,j,z)             Elasticity (investment demand)
 sigma_KD(j,z)                Elasticity (CES - composite capital)
 sigma_LD(j,z)                Elasticity (CES - composite labor)
 sigma_M1(i,z)                Elasticity (CES - composite commodity)
 sigma_M2(i,z)                Elasticity (CES - composite import)
 sigma_VA(j,z)                Elasticity (CES - value added)
 sigma_KLE(j,z)               Elasticity (CES - kle)
 sigma_ENER_elec(j,z)         Elasticity (CES - within energy)
 sigma_ENER_nelec(j,z)        Elasticity (CES - within energy)
 sigma_ENER_coalgas(j,z)      Elasticity (CES - within energy)
 sigma_ENER_oilprod(j,z)      Elasticity (CES - within energy)
 sigma_X0(j,z)               Elasticity (CET - exports and local sales)
 sigma_X1(i,z)               Elasticity (CET - total output)
 sigma_X2(i,z)               Elasticity (CET - composite export)
 sigma_X3(i,z)               Elasticity (CES - top level)
 sigma_X4(z)                 Elasticity (CES - Aggregated Electricity)
 sigma_BS(BS, Z_GRN)   Substitution elasticity between conventional and backstop
 sigma_Y(i,z)                 Income elasticity of consumption
 sigma_VAT(BS,Z_GRN)  Elasticity of substitution between VA and TSF
 elasLS(z)                     Elasticity of labor supply
 eta                             Price elasticity of indexed transfers and parameters

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
 EMPLOY(j,z)                  Employment by sector 2019 [Thousand Persons]
 delta(z)                     Depreciation rate of capital in country z
 frisch(z)                    Frisch parameter (LES function)
 CABXsur(z,time)              Current account balance surplus component
 CABXdef(z,time)              Current account balance deficit component
 Bal(time)                    Global current account balance check
 mu(time)                     Adjustment factor for CAB
 CABix(z,time)                Current account balance index

* --- [6] Energy, Emissions & Policy Flags ---
 AEEI(z,time)                 Autonomous energy efficiency improvement (Reference)
 AEEI_low(z,time)             Autonomous energy efficiency improvement (Low)
 AEEI_medium(z,time)          Autonomous energy efficiency improvement (Medium)
 AEEI_high(z,time)            Autonomous energy efficiency improvement (High)
 PERMIT_NDC_old(z,time)       PERMIT
 PERMIT_NZ(z,time)            PERMIT
 recycle_gov(z,time)          Binary variable (0 if no use of CTAX Rebate)
 recycle_hou(z,time)          Binary variable (0 if no use of CTAX Rebate)
 recycle_labor(z,time)        Binary variable (0 if no use of CTAX Rebate)
 recycle_capital(z,time)      Binary variable (0 if no use of CTAX Rebate)
 recycle_ptax(z,time)         Binary variable (0 if no use of CTAX Rebate)

* --- [7] Other Coefficients & Rescaling ---
 aij(i,j,z)                   Input-output coefficient
 aij_t(i,j,z,time)                   Input-output coefficient
 aij2(i,j,z)                  Input-output coefficient (intermediate energy)
 aij2_t(i,j,z,time)           Input-output coefficient (intermediate energy)
 io(j,z)                      Coefficient (Leontief - intermediate consumption)
 io2(j,z)                     Coefficient (Leontief - intermediate energy consumption)
 v(j,z)                       Value added Coefficient (Leontief)
 v2(j,z)                      KLE Share parameter (Leontief)
 kmob                         Flag parameter (1 if capital is mobile)
 RES                          Rescaling factor [Base = 10000 for 10G$]
 v_tsf(BS,Z_GRN)               Leontief input coefficient for TSF
 TSFS(BS,Z_GRN,time)             Supply of TSF
 VATO(BS,Z_GRN)                  Base year quantity of VAT composite
 PVATO(BS,Z_GRN)                 Base year price of VAT composite    
 v_vat(BS,Z_GRN)                 Leontief coefficient for VAT composite to XST
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
 QPOWERO(z)     Total power output in region z
 QBSO(BS, Z_GRN)               Base year total output of backstop nest
 OBJO
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
 PBSO(BS, Z_GRN)   Base year price of backstop nest composite
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
 TIPO_Share(j,z)
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

$LOAD CO, CGO, DDO, DEPO, DIO, DSO, DSO_I, EXO, IMO, INVO, KSTO, LDO, MRGNO, XSO, XSO_I, XSTO, 
$LOAD TOT_POP, g_GDP, g_POP, g_SDR, EMPLOY, AEEI_low, AEEI_Medium, AEEI_high, PERMIT_NDC_old, PERMIT_NZ,
$LOAD RKDO, TDHO, TICO, TIKO, TIMO, TIPO, TIWO, TIXO, 
$LOAD tmrg, sigma_M1, sigma_M2, sigma_VA, sigma_KLE, POPO

* Other exogenous parameters can be defined if the Excel file VAL_PAR.XLS
PARAMETER PARZ;
$CALL gdxxrw Input_CGE\PAR.xlsx @Input_CGE\PAR.txt Rdim=2 Cdim=1 output = Input_CGE\PAR.gdx
$GDXIN Input_CGE\PAR.gdx
$LOAD sigma_KD, sigma_LD, sigma_X1, sigma_X2, sigma_X3, sigma_X0, sigma_y, sigma_inv, PARZ

Parameter
S3_EMISSIONS(z,time)
;
$CALL gdxxrw Input_CGE\S3_EMISSIONS.xlsx par=S3_EMISSIONS rng=S3_EMISSIONS!A1 Rdim=1 Cdim=1 output=Input_CGE\S3_EMISSIONS.gdx
$GDXIN Input_CGE\S3_EMISSIONS.gdx
$LOAD S3_EMISSIONS

PARAMETER
S5_PERMIT(time)
;
$CALL gdxxrw Input_CGE\S5_PERMIT.xlsx par=S5_PERMIT rng=S5_PERMIT!A1 Rdim=1 output=Input_CGE\S5_PERMIT.gdx
$GDXIN Input_CGE\S5_PERMIT.gdx
$LOAD S5_PERMIT

*===============================================================================
* Elasticity Parameter Assignments
*===============================================================================
*CES - KLE(backstop)
 sigma_KLE(BS,z)          = 0.5;
 sigma_KLE('16_TRANSEQ','07_NAM') = 0.5 ; 

* CES - composite K-L
 sigma_VA('10_PETROLCOAL',z) = 0.2;
 sigma_VA('18_TnD',z)        = 0.2;
 sigma_VA('19_eNuclear',z)   = 0.2;
 sigma_VA('20_eCoal',z)      = 0.2;
 sigma_VA('21_eGas',z)       = 0.2;
 sigma_VA('22_eOil',z)       = 0.2;
 sigma_VA('23_eWind',z)      = 0.2;
 sigma_VA('24_eSolar',z)     = 0.2;
 sigma_VA('25_eHydro',z)     = 0.2;
 sigma_VA('26_eOther',z)     = 0.2;
 sigma_VA(BS,z)              = 0.5;

* CES - composite capital
  sigma_KD(j,z)        = 2 * sigma_VA(j,z);
  sigma_KD(BS,Z)     = 0.5;
  
* CES - composite labor
  sigma_LD(j,z)        = 2 * sigma_VA(j,z); 
  sigma_LD(BS,Z)     = 0.5;

* CES - composite ENER
 sigma_ENER_elec(j2,z)         = 1.5;
 sigma_ENER_nelec(j2,z)       = 0.5;
 sigma_ENER_coalgas(j2,z)    = 2.0;
 sigma_ENER_oilprod(j2,z)     = 0.5;

* CES - DOM vs.IMP
 sigma_M1('03_OIL','06_PRK') = 0.5;
 sigma_M1('04_GAS',Z) = 6;
 sigma_M1('11_CHEMICAL','05_MNG') = 1.5;
 sigma_M1('13_IRONSTL','05_MNG') = 1.1;
 
* CES - IMP sourcing
 sigma_M2('03_OIL',Z) = 2;
 sigma_M2('04_GAS',Z) = 2;

*CET - exports and local sales
 sigma_X0(j,z)                 = 1.5;
 
* CET - total output
 sigma_X2(i,z)                 = 2;

* CES - composite Power sector
 sigma_X4(z)              = 2.5;
 sigma_X4('07_NAM')       = 1.5;
 sigma_X4('09_WEU')       = 1.5;
* sigma_X4('16_PAS')      = 0.5;
 sigma_X4('06_PRK')       = 0.5;
 
* CES - composite BS sector
 sigma_BS(BS, Z_GRN)       = 5;
 sigma_BS(BS, '07_NAM')    = 5;
 sigma_BS(BS, '09_WEU')    = 5;
  
* sigma_VAT(BS,Z_GRN)   = 1.5;
sigma_VAT('32_BSCHEMICAL',Z_GRN)   = 0.5;
sigma_VAT('33_BSNONMET',Z_GRN)     = 0.5;
sigma_VAT('34_BSIRONSTL',Z_GRN)     = 0.5;
sigma_VAT('35_BS_LTRP',Z_GRN)         = 0.5;
sigma_VAT('36_BS_WTRP',Z_GRN)        = 0.5;
sigma_VAT('37_BS_ATRP',Z_GRN)         = 0.5;

* Investment demand elasticity
 sigma_INV(k,j,z)              = 0.5;

* LES parameters - Frisch all (1.1)
* frisch(z)                     = PARZ(z,'frisch');
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
frisch('11_FSU') = -1.60;
frisch('12_MEA') = -1.60;
frisch('13_AFR') = -1.90;
frisch('14_CPA') = -1.70;
frisch('15_SAS') = -1.80;
frisch('16_PAS') = -1.50;
frisch('17_PAO') = -1.20;

* Labour supply 
 elasLS(z)                     = 0.1;

*==============================================================================
* Rescaling 
*==============================================================================
* GTAP data are in millions of US dollars With RES = 10000, model results are in tens of billions (10G$)
 RES = 10000;
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
* [NEW] Backstop Technology Split & TSF Initialization (Upstream Injection)
*==============================================================================
PARAMETER
 seed(j)                Initial share of the new technology
 TSFO(j, z)             Initial year TSF input for backstop (Value)
 PTSFO(j, z)            Initial year TSF price for backstop
 Green_Markup(j, z)     Initial efficiency penalty for backstop
 SHR_MRGN(j, i, z)      Share of international transport margin for sector j !! [Added] Margin distribution share
;

seed(BS) = 0.01;
PTSFO(BS, Z_GRN) = 1.0;       
Green_Markup(BS, Z_GRN) = 1.0;

* [Added] Initialize default margin share to 1.0 (100%) for all industries before splitting
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
    EMPLOY(j, Z_GRN)    = EMPLOY(jj, Z_GRN) * seed(j);
    
    XSO(j, i, Z_GRN)    = (XSO(jj, i, Z_GRN) * seed(j)) / Green_Markup(j, Z_GRN);
    XSTO(j, Z_GRN)      = (XSTO(jj, Z_GRN) * seed(j)) / Green_Markup(j, Z_GRN);
    DSO(j, i, Z_GRN)    = (DSO(jj, i, Z_GRN) * seed(j)) / Green_Markup(j, Z_GRN);
    
* [Added] Allocate international margin share to backstop industry by seed share
    SHR_MRGN(j, i, Z_GRN) = seed(j);

* Deduct exact share from conventional industry
    LDO(jj, Z_GRN)      = LDO(jj, Z_GRN) * (1 - seed(j));
    RKDO(k, jj, Z_GRN)  = RKDO(k, jj, Z_GRN) * (1 - seed(j));
    TIPO(jj, Z_GRN)     = TIPO(jj, Z_GRN) * (1 - seed(j));
    TIWO(jj, Z_GRN)     = TIWO(jj, Z_GRN) * (1 - seed(j));
    TIKO(k, jj, Z_GRN)  = TIKO(k, jj, Z_GRN) * (1 - seed(j));
    DIO(ii, jj, Z_GRN)  = DIO(ii, jj, Z_GRN) * (1 - seed(j));
    EMPLOY(jj, Z_GRN)   = EMPLOY(jj, Z_GRN) * (1 - seed(j));
    
    XSO(jj, i, Z_GRN)   = XSO(jj, i, Z_GRN) * (1 - seed(j));
    XSTO(jj, Z_GRN)     = XSTO(jj, Z_GRN) * (1 - seed(j));
    DSO(jj, i, Z_GRN)   = DSO(jj, i, Z_GRN) * (1 - seed(j));
    
* [Added] Deduct international margin share from conventional industry (remaining share)
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
 ttdh0O(z)       = 0;
 eO(z)             = 1;
 PEO(i,z,zj)      = 1;
 PLO(i,z)          = 1;
 PWMGO(i)      = 1;
 WO(z)            = 1;
 WO_lag(z)      = WO(z);

* -------------------------------------------------------------------
* [동태 모형 고도화] 유령 산업에 초소형 정상 구조(Micro-Seed) 주입
* -------------------------------------------------------------------
SCALAR micro_tol / 0.01 /;

* 1. 필터링을 위해 임시 PPO(가격 왜곡도)를 먼저 계산
PARAMETER PPO_TEMP(j,z);
PPO_TEMP(j,z)$XSTO(j,z) = ( TIWO(j,z) + WO(z)*LDO(j,z) 
                          + SUM(k, TIKO(k,j,z) + RKDO(k,j,z)) 
                          + SUM(i, DIO(i,j,z)) ) / XSTO(j,z);

* 2. [수정됨] 생산량이 적거나(XSTO < 0.01) OR 가격 왜곡이 극심한 경우(PPO > 2.0) 모두 포함
LOOP((j,z)$( ( (XSTO(j,z) < micro_tol) or (PPO_TEMP(j,z) > 2.0) ) 
             and (PPO_TEMP(j,z) > 1.2 or PPO_TEMP(j,z) < 0.8) 
             and not (BS(j) and Z_OTH(z)) ),
             
* 3. 생산량(XSTO)이 너무 작으면 최소 Seed로 덮어쓰고, 어느 정도 있으면 그 규모 유지
    XSTO(j,z) = MAX(XSTO(j,z), 1E-5);
    
* 4. 중국(02_CHN)의 동일 산업(j) 투입 구조 비율을 이식
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

* ==============================================================================

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
  
 DEelecO(j,z)     = DIO("18_ELEC",j,z) / PCO("18_ELEC",z);
 DEnelecO(j,z)    = SUM(ene3, DEO(ene3,j,z));

 DEcoalgasO(j,z)  = SUM(ene5, DEO(ene5,j,z));
 DEcoalO(j,z)     = DEO("02_COAL ",j,z);
 DEgasO(j,z)      = DEO("04_GAS",j,z);
 
 DEoilpetrolO(j,z)= SUM(ene6, DEO(ene6,j,z));
 DEoilO(j,z)      = DEO("03_OIL",j,z);
 DEpetrolO(j,z)   = DEO("10_PETROLCOAL",j,z);
 INVO(i,z)        = INVO(i,z) / PCO(i,z);

 CIO(j,z)         = SUM[nene, DIO(nene,j,z)];
 CEO(j3,z)        = SUM[ene, DEO(ene,j3,z)];
 CEO(j2,z)        = DEelecO(j2,z) + DEnelecO(j2,z);
 DITO(nene,z)     = SUM[j, DIO(nene,j,z)];
 DITO(ene,z)      = SUM[j, DEO(ene,j,z)];
 
 PO4(ene,j,z)     = PCO(ene,z);
 PCIO(j,z)$XSTO(j,z) 
                  = SUM[nene, PCO(nene,z) * DIO(nene,j,z)] / CIO(j,z);

 PCEcoalO(j,z)$XSTO(j,z)   = PO4("02_COAL",j,z);
 PCEgasO(j,z)$XSTO(j,z)    = PO4("04_GAS",j,z);
 PCEoilO(j,z)$XSTO(j,z)    = PO4("03_OIL",j,z);
 PCEpetrolO(j,z)$XSTO(j,z) = PO4("10_PETROLCOAL",j,z);
 
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

*$Ontext
* ==============================================================================
* [ADDITION] Backup setup of initial values for tracking parameter changes
* ==============================================================================
SET eval_sig "Evaluation items for sigmas" / Initial "Initial value", Final "Final value", Diff "Difference (Change)" /;
SET sig_type "Types of Industry Elasticities" / 
    s_coalgas "sigma_ENER_coalgas", 
    s_oilprod "sigma_ENER_oilprod", 
    s_nelec   "sigma_ENER_nelec", 
    s_elec    "sigma_ENER_elec", 
    s_kle     "sigma_KLE" 
/;

PARAMETER Init_sigma_M1(ene,z) "Backup for initial sigma_M1";
PARAMETER Init_sigma_M2(ene,z) "Backup for initial sigma_M2";
PARAMETER Init_sigma_IND(j,z,sig_type) "Backup for initial industry nest sigmas";

* Store the current (initial) parameter values before entering the loop
Init_sigma_M1(ene,z) = sigma_M1(ene,z);
Init_sigma_M2(ene,z) = sigma_M2(ene,z);
Init_sigma_IND(j,z,'s_coalgas') = sigma_ENER_coalgas(j,z);
Init_sigma_IND(j,z,'s_oilprod') = sigma_ENER_oilprod(j,z);
Init_sigma_IND(j,z,'s_nelec')   = sigma_ENER_nelec(j,z);
Init_sigma_IND(j,z,'s_elec')    = sigma_ENER_elec(j,z);
Init_sigma_IND(j,z,'s_kle')     = sigma_KLE(j,z);

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
    S_DOM(i,z)           "Share of Domestic product in composite demand"
    W_IND(i,j,z)         "Share of Industry j in Total Composite Demand QO"
    W_HH(i,z)            "Share of Household in Total Composite Demand QO"
    W_INV(i,z)           "Share of Investment in Total Composite Demand QO"
    W_GOV(i,z)           "Share of Government in Total Composite Demand QO"
    W_DDO(i,z)           "Share of Domestic Sales in Total Output"
    W_EXTO(i,z)          "Share of Export Sales in Total Output"
    Val_Total(i,z)       "Total Value of Domestic and Export Sales"
    
* 3. Composite Price Elasticities by Agent (Imported + Domestic)
    Elas_Comp_IND(ene,j,z) "Composite elasticity for Industry"
    Elas_Comp_HH(ene,z)    "Composite elasticity for Household (LES)"
    Elas_Comp_INV(ene,z)   "Composite elasticity for Investment (Cobb-Douglas = -1)"
    Elas_Comp_GOV(ene,z)   "Composite elasticity for Government (Cobb-Douglas = -1)"
    
* 4. Domestic Price Elasticities by Agent
    Elas_Dom_IND(ene,j,z)  "Domestic elasticity for Industry"
    Elas_Dom_HH(ene,z)     "Domestic elasticity for Household"
    Elas_Dom_INV(ene,z)    "Domestic elasticity for Investment"
    Elas_Dom_GOV(ene,z)    "Domestic elasticity for Government"
    Elas_EXP(ene,z)        "Export elasticity (based on importer's sigma_M2)"
    
* 5. Economy-Wide Price Elasticities
    Elas_Total_DDO(ene,z)  "Weighted elasticity of Total Domestic Demand (DDO)"
    Elas_Total_ECON(ene,z) "Economy-wide Ex-ante Price Elasticity of Energy Commodity"
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
* Set and Parameter Declaration for Comparison Report
* ==============================================================================
SET eval "Comparison Items" / Initial "Initial Value", Final "Final Value", Target "Target Value" /;
PARAMETER Report_Elas(ene,z,eval) "Elasticity Comparison Report (Based on DDO)";
PARAMETER Initial_Elas_ECON(ene,z) "Backup of initial elasticity";

* Backup initially calculated DDO elasticity before entering the loop
Initial_Elas_ECON(ene,z) = Elas_Total_ECON(ene,z);

* ==============================================================================
* Step 0. Set Target Elasticities and Iterative Algorithm Parameters
* ==============================================================================
TABLE Target_Elas(ene,z) "Target economy-wide elasticities by region and energy commodity"
               01_KOR  02_CHN  03_JPN  04_RUS  05_MNG  06_PRK  07_NAM  08_LAM  09_WEU  10_EEU  11_FSU  12_MEA  13_AFR  14_CPA  15_SAS  16_PAS  17_PAO
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

SET iter "Maximum number of iterations" / 1*1000 /;
SCALAR step "Update speed (Damping factor)" / 0.15 /;
PARAMETER Adj_Ratio(ene,z) "Ratio to target";
PARAMETER Ind_Total_Weight(ene,z) "Total industry weight";

Ind_Total_Weight(ene,z) = SUM(j, W_IND(ene,j,z));

* ==============================================================================
* Declare temporary parameters before entering the loop (for calculating error weights by industry)
* ==============================================================================
PARAMETER Ind_Err_CG(j,z) "Weighted average error of Coal-Gas nest by industry";
PARAMETER Ind_Err_OP(j,z) "Weighted average error of Oil products nest by industry";
PARAMETER Ind_Err_NE(j,z) "Weighted average error of Non-Elec nest by industry";
PARAMETER Ind_Err_Tot(j,z) "Weighted average error of total energy by industry";

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
*    sigma_M2(ene,z) = sigma_M2(ene,z) * (1 + step * (Adj_Ratio(ene,z) - 1));
    sigma_M2(ene,z) = sigma_M1(ene,z) * (Init_sigma_M2(ene,z) / Init_sigma_M1(ene,z));

    LOOP(j2,
* A. Derive weighted average error by nest within each industry (j2) (Follow the error of the fuel heavily consumed by the industry)
        Ind_Err_CG(j2,z)  = S_Coal_CG(j2,z)*Adj_Ratio('02_COAL',z) + S_Gas_CG(j2,z)*Adj_Ratio('04_GAS',z);
        Ind_Err_OP(j2,z)  = S_Oil_OP(j2,z)*Adj_Ratio('03_OIL',z)   + S_Petrol_OP(j2,z)*Adj_Ratio('10_PETROLCOAL',z);
        Ind_Err_NE(j2,z)  = S_CG_NE(j2,z)*Ind_Err_CG(j2,z)         + S_OP_NE(j2,z)*Ind_Err_OP(j2,z);
        Ind_Err_Tot(j2,z) = S_Elec_E(j2,z)*Adj_Ratio('18_ELEC',z)  + S_NE_E(j2,z)*Ind_Err_NE(j2,z);

* B. Parameter modification (Cross-application according to mathematical partial derivative structure)
* Lower nests dominate the elasticity of "minority" fuels, so track errors inversely (Cross)
        sigma_ENER_coalgas(j2,z) = sigma_ENER_coalgas(j2,z) * (1 + step * ( S_Coal_CG(j2,z)*Adj_Ratio('04_GAS',z) + S_Gas_CG(j2,z)*Adj_Ratio('02_COAL',z) - 1 ));
        sigma_ENER_oilprod(j2,z) = sigma_ENER_oilprod(j2,z) * (1 + step * ( S_Oil_OP(j2,z)*Adj_Ratio('10_PETROLCOAL',z) + S_Petrol_OP(j2,z)*Adj_Ratio('03_OIL',z) - 1 ));
        
* Upper nests dominate the elasticity of "majority" fuels, so track the weighted average of the nest
        sigma_ENER_nelec(j2,z) = sigma_ENER_nelec(j2,z) * (1 + step * (Ind_Err_NE(j2,z) - 1));
        
* Cross nest (Cross-application of errors between electricity and non-electricity)
        sigma_ENER_elec(j2,z) = sigma_ENER_elec(j2,z) * (1 + step * ( S_NE_E(j2,z)*Adj_Ratio('18_ELEC',z) + S_Elec_E(j2,z)*Ind_Err_NE(j2,z) - 1 ));
        
* Top KLE elasticity tracks the integrated energy error of the entire industry
        sigma_KLE(j2,z) = sigma_KLE(j2,z) * (1 + (step/2) * (Ind_Err_Tot(j2,z) - 1));
    );

* --------------------------------------------------------------------------
* 4. Logical Constraints for Parameters
* --------------------------------------------------------------------------
*    sigma_M1(ene,z) = max(0.5, min(15.0, sigma_M1(ene,z)));
*    sigma_M2(ene,z) = max(0.5, min(30.0, sigma_M2(ene,z)));
    
*    sigma_ENER_coalgas(j,z) = max(0.5, min(3.0, sigma_ENER_coalgas(j,z)));
*    sigma_ENER_oilprod(j,z) = max(0.5, min(3.0, sigma_ENER_oilprod(j,z)));
*    sigma_ENER_nelec(j,z)   = max(0.5, min(3.0, sigma_ENER_nelec(j,z)));  
*    sigma_ENER_elec(j,z)    = max(0.5, min(3.0, sigma_ENER_elec(j,z)));
*    sigma_KLE(j,z)          = max(0.5, min(3.0, sigma_KLE(j,z)));

    sigma_M1(ene,z) = max(0.5, min(15.0, sigma_M1(ene,z)));
    sigma_M2(ene,z) = max(0.5, min(30.0, sigma_M2(ene,z)));    
    sigma_ENER_coalgas(j,z) = max(0.5, min(3.0, sigma_ENER_coalgas(j,z)));
    sigma_ENER_oilprod(j,z) = max(0.5, min(3.0, sigma_ENER_oilprod(j,z)));
    sigma_ENER_nelec(j,z)   = max(0.5, min(3.0, sigma_ENER_nelec(j,z)));  
    sigma_ENER_elec(j,z)    = max(0.5, min(3.0, sigma_ENER_elec(j,z)));
    sigma_KLE(j,z)          = max(0.5, min(3.0, sigma_KLE(j,z)));

* [2단계] 대체탄력성 1.0 부근(0.9 ~ 1.1) 회피 조건 추가 (Deadzone 설정)
* 값이 0.9 초과 1.0 이하인 경우 0.9로 고정
* 값이 1.0 초과 1.1 미만인 경우 1.1로 고정

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

* ==============================================================================
* [ADDITION] Generate consolidated report for elasticity parameter changes
* ==============================================================================
PARAMETER Report_sigma_M1(ene,z,eval_sig) "Report for Armington sigma_M1 changes";
PARAMETER Report_sigma_M2(ene,z,eval_sig) "Report for Armington sigma_M2 changes";
PARAMETER Report_sigma_IND(j,z,sig_type,eval_sig) "Report for Industry nest sigma changes";

* 1. Generate report for sigma_M1
Report_sigma_M1(ene,z,'Initial') = Init_sigma_M1(ene,z);
Report_sigma_M1(ene,z,'Final')   = sigma_M1(ene,z);
Report_sigma_M1(ene,z,'Diff')    = sigma_M1(ene,z) - Init_sigma_M1(ene,z);

Report_sigma_M2(ene,z,'Initial') = Init_sigma_M2(ene,z);
Report_sigma_M2(ene,z,'Final')   = sigma_M2(ene,z);
Report_sigma_M2(ene,z,'Diff')    = sigma_M2(ene,z) - Init_sigma_M2(ene,z);

* 2. Generate consolidated report for industry-specific elasticities
Report_sigma_IND(j,z,'s_coalgas','Initial') = Init_sigma_IND(j,z,'s_coalgas');
Report_sigma_IND(j,z,'s_coalgas','Final')   = sigma_ENER_coalgas(j,z);
Report_sigma_IND(j,z,'s_coalgas','Diff')    = sigma_ENER_coalgas(j,z) - Init_sigma_IND(j,z,'s_coalgas');

Report_sigma_IND(j,z,'s_oilprod','Initial') = Init_sigma_IND(j,z,'s_oilprod');
Report_sigma_IND(j,z,'s_oilprod','Final')   = sigma_ENER_oilprod(j,z);
Report_sigma_IND(j,z,'s_oilprod','Diff')    = sigma_ENER_oilprod(j,z) - Init_sigma_IND(j,z,'s_oilprod');

Report_sigma_IND(j,z,'s_nelec','Initial') = Init_sigma_IND(j,z,'s_nelec');
Report_sigma_IND(j,z,'s_nelec','Final')   = sigma_ENER_nelec(j,z);
Report_sigma_IND(j,z,'s_nelec','Diff')    = sigma_ENER_nelec(j,z) - Init_sigma_IND(j,z,'s_nelec');

Report_sigma_IND(j,z,'s_elec','Initial') = Init_sigma_IND(j,z,'s_elec');
Report_sigma_IND(j,z,'s_elec','Final')   = sigma_ENER_elec(j,z);
Report_sigma_IND(j,z,'s_elec','Diff')    = sigma_ENER_elec(j,z) - Init_sigma_IND(j,z,'s_elec');

Report_sigma_IND(j,z,'s_kle','Initial') = Init_sigma_IND(j,z,'s_kle');
Report_sigma_IND(j,z,'s_kle','Final')   = sigma_KLE(j,z);
Report_sigma_IND(j,z,'s_kle','Diff')    = sigma_KLE(j,z) - Init_sigma_IND(j,z,'s_kle');

Report_Elas(ene,z,'Initial') = Initial_Elas_ECON(ene,z);
Report_Elas(ene,z,'Final')   = Elas_Total_ECON(ene,z);
Report_Elas(ene,z,'Target')  = Target_ECON(ene,z);

* Display results in the .lst file
DISPLAY Report_sigma_M1, Report_sigma_IND;
*$Offtext
 
*==============================================================================
* Calibration of function parameters
*==============================================================================
 io(j,z)$XSTO(j,z)         = CIO(j,z) / XSTO(j,z);
 io2(j,z)$XSTO(j,z)        = CEO(j,z) / XSTO(j,z);
 v(j,z)$XSTO(j,z)          = VAO(j,z) / XSTO(j,z);
 v2(j,z)$XSTO(j,z)         = (CEO(j,z) + VAO(j,z)) / XSTO(j,z);

 aij(nene,j,z)$XSTO(j,z)   = DIO(nene,j,z) / CIO(j,z);
 aij2(ene,j,z)$XSTO(j,z)   = DEO(ene,j,z) / CEO(j,z);
 aij_t(nene,j,z,time)        = aij(nene,j,z);
 aij2_t(ene,j,z,time)        = aij2(ene,j,z);

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
 rho_X3(i,z) = (1 - sigma_X3(i,z)) / sigma_X3(i,z);

 beta_X3(j,i,z)$XSO(j,i,z)
    = [ PO2(j,i,z) * XSO(j,i,z)**(1 + rho_X3(i,z)) ] /
      SUM[jj$XSO(jj,i,z), PO2(jj,i,z) * XSO(jj,i,z)**(1 + rho_X3(i,z)) ];

 B_X3(i,z)
    = XSO_I(i,z) / 
      SUM[jj$XSO(jj,i,z), beta_X3(jj,i,z) * XSO(jj,i,z)**(-rho_X3(i,z))]**(-1 / rho_X3(i,z));

* Electricity
 QPOWERO(z) = SUM(POWER, XSO(power,'18_ELEC',z));
 rho_X4(z)  = (1 - sigma_X4(z)) / sigma_X4(z);

 beta_X4(power,z)
    = [ PO2(power,'18_ELEC',z) * XSO(power,'18_ELEC',z)**(1 + rho_X4(z)) ] /
      SUM[powerr$XSO(powerr,'18_ELEC',z), PO2(powerr,'18_ELEC',z) * XSO(powerr,'18_ELEC',z)**(1 + rho_X4(z)) ];

 B_X4(z)
    = QPOWERO(z) / 
      SUM[powerr$XSO(powerr,'18_ELEC',z), beta_X4(powerr,z) * XSO(powerr,'18_ELEC',z)**(-rho_X4(z))]**(-1 / rho_X4(z));

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
$INCLUDE DATA_WEB_2024.gms
$INCLUDE DATA_CO2coef.gms

PARAMETER
 EGINucGWh(j,z)    Nuclear GWh per 10 billion $
 EGICoalGWh(j,z)   Coal GWh per 10 billion $ 
 EGIGasGWh(j,z)    Gas GWh per 10 billion $ 
 EGIOilGWh(j,z)    Oil GWh per 10 billion $ 
 EGIWindGWh(j,z)   Wind GWh per 10 billion $
 EGISolarGWh(j,z)  Solar GWh per 10 billion $ 
 EGIHydroGWh(j,z)  Hydro GWh per 10 billion $
 EGIWasteGWh(j,z)  Waste GWh per 10 billion $
 EGIBioGWh(j,z)    Bio GWh per 10 billion $
 EGIGeoGWh(j,z)    Geothermal GWh per 10 billion $
 EGIOtherGWh(j,z)  Other GWh per 10 billion $
;

 EGINucGWh('19_eNuclear',z) = ElecNucGWh('19_eNuclear',z) / DSO_J('19_eNuclear',z);
 EGICoalGWh('20_eCoal',z)   = ElecCoalGWh('20_eCoal',z) / DSO_J('20_eCoal',z); 
 EGIGasGWh('21_eGas',z)     = ElecGasGWh('21_eGas',z) / DSO_J('21_eGas',z); 
 EGIOilGWh('22_eOil',z)     = ElecOilGWh('22_eOil',z) / DSO_J('22_eOil',z);
 EGIWindGWh('23_eWind',z)   = ElecWindGWh('23_eWind',z) / DSO_J('23_eWind',z); 
 EGISolarGWh('24_eSolar',z) = ElecSolarGWh('24_eSolar',z) / DSO_J('24_eSolar',z); 
 EGIHydroGWh('25_eHydro',z) = ElecHydroGWh('25_eHydro',z) / DSO_J('25_eHydro',z); 
 EGIWasteGWh('26_eOther',z) = ElecWasteGWh('26_eOther',z) / DSO_J('26_eOther',z); 
 EGIBioGWh('26_eOther',z)   = ElecBioGWh('26_eOther',z) / DSO_J('26_eOther',z);
 EGIGeoGWh('26_eOther',z)   = ElecGeoGWh('26_eOther',z) / DSO_J('26_eOther',z); 
 EGIOtherGWh('26_eOther',z) = ElecOtherGWh('26_eOther',z) / DSO_J('26_eOther',z); 

PARAMETER
 CTAXO(z)           Initial Carbon tax $ per ton CO2
 TCTAXO(z)          Initial Government Revenue from Carbon tax
 NEA_REGIONAL_CTAXO
 PERMITO(j,z)       CO2 emissions 
 PERMIT_TOTALO(z)   Total CO2 emissions (billion ton)
;
 CTAXO(z)           = 0;
 TCTAXO(z)          = 0;
 NEA_REGIONAL_CTAXO = 0;
 PERMITO(j,z)       = SUM(ene, CO2FACTOR(ene,j,z) * DEO(ene,j,z));
 PERMIT_TOTALO(z)   = SUM(j, PERMITO(j,z));

*==============================================================================
* Marginal abatement curves for emissions
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

 adjustment_factor = 0.5;
 trigger_price     = 1.0;
 SolarWind_TFP_BAU = 0.02;
 SolarWind_TFP_NDC = 0.02;
 SolarWind_TFP_NZ  = 0.04;
 residual_ratio  = 0.05;

 TIWO_Share(j,z)   = LDO(j,z) / LSO(z);
 TIKO_Share(k,j,z) = KDO(k,j,z) / KSO(k,z);
 TIPO_Share(j,z)   = XSTO(j,z) / SUM(jj, XSTO(jj,z));

*==============================================================================
* Direct Air Capture
*============================================================================== 
PARAMETER
 DAC_TRIGGER            DAC trigger Price (100$ per tCO2) 
 DAC_MAX(z)                Maximum DAC yearly
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

 DAC_TRIGGER               = 5.0;
 DAC_MAX(z)                = sum(j,PERMITO(j,z))*0.3;
 DAC_MAX('09_WEU')         = sum(j,PERMITO(j,'09_WEU'))*0.5;
 DAC_MAX('03_JPN')         = sum(j,PERMITO(j,'03_JPN'))*0.5;
 DAC_growth_rate(z,time)   = 0;
 DAC_Max_Pen(z)             = 1.0;
 DAC_Logistic_Coeff(z)      = 0.2;
 DAC_Inflection(z)            = 15;
 DAC_Start_Year(z)           = 0;
 DAC_Tech_Coeff('18_ELEC') = (DAC_Unit_Scale * DAC_Elec_Intensity * Price_USD_MWh) / 10**10;
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
Parameter MRGN_RES(i) "글로벌 마진 수급의 초기 데이터 불일치 흡수 잔차";
* 초기 총공급량 - 초기 총수요량의 차이를 고정값으로 계산
MRGN_RES(i) = SUM(z$MRGNO(i,z), MRGNO(i,z)) 
            - SUM((z,zj,ij)$IMO(ij,zj,z), tmrg(i,ij,zj,z) * IMO(ij,zj,z));

Parameter YROW_RES(z) "YROW 총수입액 계산의 초기 데이터 소수점 오차 잔차";
* 초기 장부상 총수입액(YROWO)과 개별 무역액 총합의 미세한 차이를 고정값으로 계산
YROW_RES(z) = YROWO(z) 
            - { 1.0 * SUM((i,zj)$IMO(i,zj,z), IMO(i,zj,z) * [PWMO(i,zj,z) + SUM(ij, PWMGO(ij) * tmrg(ij,i,zj,z))]) };

*==============================================================================
*  [ToT Calibration] Base Year FOB / CIF Values and Weights
*============================================================================== 
PARAMETER
  VFOB0(i,z,zj)   "Base year FOB value of exports"
  VCIF0(i,zj,z)   "Base year CIF value of imports"
  W_EXP(i,z,zj)   "Bilateral export weight (Laspeyres)"
  W_IMP(i,zj,z)   "Bilateral import weight (Laspeyres)"
  PWX0(i,z,zj)    "Base year World FOB price"
  PCIF0(i,zj,z)   "Base year World CIF price"
  PX_INDEXO(z)
  PM_INDEXO(z)
  TOTO(z)
;

* FOB 가치 = 수출물량 * 국제수출가격 * 환율
 VFOB0(i,z,zj) = eO(z) * PWXO(i,z,zj) * EXO(i,z,zj);

* CIF 가치 = 수입물량 * (국제수입가격 + 국제운송마진) * 환율
 VCIF0(i,zj,z) = eO(z) * IMO(i,zj,z) * (PWMO(i,zj,z) + SUM(ij, PWMGO(ij) * tmrg(ij,i,zj,z)));

* 2. 가중치 도출 (국가 z의 총 수출/수입액 대비 각 경로의 비중) 
 W_EXP(i,z,zj)$SUM((ii,zjj), VFOB0(ii,z,zjj)) = VFOB0(i,z,zj) / SUM((ii,zjj), VFOB0(ii,z,zjj));
 W_IMP(i,zj,z)$SUM((ii,zjj), VCIF0(ii,zjj,z))  = VCIF0(i,zj,z) / SUM((ii,zjj), VCIF0(ii,zjj,z));

* 3. 기준연도 가격 저장 (지수 분모용)
 PWX0(i,z,zj) = PWXO(i,z,zj);
 
 PCIF0(i,zj,z) = PWMO(i,zj,z) + SUM(ij, PWMGO(ij) * tmrg(ij,i,zj,z));

 PX_INDEXO(z) = SUM((i,zj)$VFOB0(i,z,zj), W_EXP(i,z,zj) * (PWXO(i,z,zj) / PWX0(i,z,zj)));

 PM_INDEXO(z) = SUM((i,zj)$VCIF0(i,zj,z), W_IMP(i,zj,z) * ( (PWMO(i,zj,z) + SUM(ij, PWMGO(ij) * tmrg(ij,i,zj,z))) / PCIF0(i,zj,z) ));

 TOTO(z)$PM_INDEXO(z) = PX_INDEXO(z) / PM_INDEXO(z);
*execute_unload 'Calibration_Check_GTAP11c';
*$exit

*==============================================================================
* Variable
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
 QBS(BS,Z_GRN,time)    Total ironstl output in region z
 QDAC(z,time)           100ktCO2 
 TSFD(j,Z_GRN,time)      Demand for TSF
 VAT(BS,Z_GRN,time)      Quantity of Value-Added and TSF composite

* --- [2] Price Variables ---
 e(z,time)               Exchange rate (price of international currency in terms of region z local currency)
 IR(z,time)              Interest rate 
 P(i,z,time)             Basic price of commodity i in region z
 P2(j,i,z,time)          Basic price of industry js production of commodity i
 P3(i,j,z,time)          Basic price of power industry js production of commodity i
 P4(ene,j,z,time)        Basic energy commodity price of industry js production of commodity i
 PPOWER(z,time)          Basic price of composite power commodity in region z
 PBS(BS,Z_GRN,time)    Basic price of composite BS commodity in region z
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
 PM_INDEX(z,time)       Import price index (World CIF base)
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
 CTAX(z,time)            Carbon tax in region z
 TCTAX(z,time)           Government revenue from Carbon tax
 NEA_REGIONAL_CTAX(time)
 PERMIT(j,z,time)        Permits by sector
 PERMIT_TOTAL(z,time)    Total permits
 deltatik(j,z,time)      Delta tax on capital
 deltatip(j,z,time)      Delta tax on production
 REBATE(z,time)          Carbon tax rebate
 TIW_Share(j,z,time)     Wage tax share
 LaborRebate(j,z,time)   Labor tax rebate
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
 OBJ                     Objective function value
;

*==============================================================================
* Equations Declaration
*==============================================================================
EQUATIONS
* --- Production and Inputs ---
 EQ1(j,z,time)           Leontief - demand for value added
 EQ1_1(j,z,time)         Leontief - demand for KLE (Industries) 
 EQ2(j,z,time)           Leontief - demand for intermediate consumption
 EQ2_1(j,z,time)         Leontief - demand for intermediate energy consumption (Energy Industries)
 EQ3(j,z,time)           CES - combination of labor and capital
 EQ3_1(j,z,time)         CES - combination of composite energy and value added
 EQ4(j,z,time)           CES - demand for composite labor
 EQ4_1(j,z,time)         Demand for value added relative to composite energy
 EQ5(j,z,time)           CES between labor categories
 EQ7(j,z,time)           CES between capital categories
 EQ8(k,j,z,time)         Demand for capital
 EQ9(i,j,z,time)         Leontief - demand for commodity i by sector j
 EQ9_1(ene,j3,z,time)    Energy nesting
 EQ9_2(j2,z,time)        Nested CES - Level 1
 EQ9_3(j2,z,time)        Nested CES - Level 2
 EQ9_4(j2,z,time)        Nested CES - Level 3
 EQ9_5(j2,z,time)        Nested CES - Level 4
 EQ9_6(ene2,j2,z,time)   Nested CES - Level 5
 EQ9_7(ene5,j2,z,time)   Nested CES - Level 6
 EQ9_8(ene6,j2,z,time)   Nested CES - Level 7

* --- Income and Savings ---
 EQ10(z,time)            Household total income
 EQ11(z,time)            Household labor income
 EQ12(z,time)            Household capital income
 EQ13(z,time)            Household disposable income
 EQ14(z,time)            Household consumption budget
 EQ15(z,time)            Household savings
 EQ16(z,time)            Government total income
 EQ16_1(z,time)          Government revenue from Ctax
 EQ17(z,time)            Total government receipts of taxes on production
 EQ18(z,time)            Government receipts of indirect taxes on wages
 EQ19(z,time)            Government receipts of indirect taxes on capital
 EQ20(z,time)            Government receipts of indirect taxes on production
 EQ21(z,time)            Total government receipts of taxes on products and imports
 EQ22(z,time)            Government receipts of indirect taxes on consumption
 EQ23(z,time)            Government receipts of indirect taxes on imports
 EQ24(z,time)            Government receipts of indirect taxes on exports
 EQ25(z,time)            Household income taxes
 EQ26(j,z,time)          Government receipts of indirect taxes on wages
 EQ27(k,j,z,time)        Government receipts of indirect taxes on capital
 EQ28(j,z,time)          Government receipts of indirect taxes on production of industry j
 EQ29(i,z,time)          Government receipts of indirect taxes on commodity i
 EQ30(i,zj,z,time)       Government receipts of indirect taxes on imports of commodity i
 EQ31(i,z,zj,time)       Government receipts of indirect taxes on exports of commodity i
 EQ32(z,time)            Government savings
 EQ33(z,time)            Rest of the world total income
 EQ34(z,time)            Rest of the world savings
 EQ35(z,time)            Equivalence between current account balance and savings

* --- Demand and Trade ---
 EQ36(i,z,time)          Household consumption of commodity i
 EQ37(i,z,time)          Final demand of commodity i for investment purposes
 EQ38(i,z,time)          Public final consumption of commodity i
 EQ39(i,z,time)          Total intermediate consumption of commodity i
 EQ39_1(i,z,time)        Total intermediate consumption of commodity i
 EQ39_2(i,z,time)        Total intermediate consumption of commodity i
 EQ40_3(i,z,time)        Domestic supply by commdities
 EQ40_4(j,z,time)        Total supply by commdities
 EQ40_5(i,z,time)        CET function between exports local production and margins
 EQ41(i,z,time)          Supply of composite exports
 EQ42(i,z,time)          Supply of margins
 EQ43(i,z,time)          CET function between exports by trading partner
 EQ44(i,z,zj,time)       Supply of exports by trading partner
 EQ45(i,z,time)          CES function between composite imports and local production
 EQ46(i,z,time)          Demand for composite imports
 EQ47(i,z,time)          CES function between imports by origin
 EQ48(i,zj,z,time)       Demand for imports by origin

* --- Prices ---
 EQ49(j,z,time)          Producer price in energy industries j after production taxes
 EQ49_1(j,z,time)        Producer price in industry j after production taxes
 EQ50(j,z,time)          Basic price of industry j production
 EQ51(j,z,time)          Price index of industry j intermediate consumption
 EQ51_1(j2,z,time)       Price index nested CES
 EQ51_2(j3,z,time)       Price index nested CES
 EQ51_3(j2,z,time)       Price index nested CES
 EQ51_4(j2,z,time)       Price index nested CES
 EQ51_5(j2,z,time)       Price index nested CES
 EQ51_6(j2,z,time)       Price index nested CES
 EQ52(j,z,time)          Value added price
 EQ52_1(j,z,time)        KLE price
 EQ53(j,z,time)          Price of composite labor in industry j (redundant)
 EQ54(j,z,time)          Wages including taxes
 EQ54_1(ene,j,z,time)    Energy commodity prices
 EQ56(k,j,z,time)        Rental rate including taxes
 EQ58(i,z,time)          Producer price is a weighted sum of PE and PL
 EQ60(i,z,zj,time)       Border price of exported commodity i
 EQ61(i,z,time)          Price of local product i (including all taxes and margins)
 EQ62(i,zj,z,time)       Price of imported commodity i (including all taxes and duties)
 EQ64(i,z,time)          Consumer price is a weighted sum of PD and PM
 EQ66(z,time)            GDP deflator (Fischer index)
 EQ67(time)              World GDP deflator (Fischer index)
 EQ68(z,time)            Consumer price index (Laspeyres)
 EQ69(z,time)            Investment price index (derived from investment function)
 EQ70(z,time)            Public expenditure price index

* --- Equilibrium and Macro ---
 EQ71(i1,z,time)         Domestic absorbtion
 EQ72(z,time)            Labor supply equals labor demand
 EQ73(k,z,time)          Capital supply equals capital demand
 EQ74(z,time)            Total investment equals total savings
 EQ75(z,time)            Depreciation
 EQ76(i,z,time)          Supply of domestic production equals demand
 EQ77(i,z,zj,time)       Exports supply equals imports demand
 EQ78(i,z,zj,time)       Exports price equals imports price
 EQ79(i,time)            World demand for margins equals world supply
 EQ81(z,time)            GDP at basic prices
 EQ82(z,time)            GDP at market prices
 EQ83(z,time)            GDP at market prices (income-based)
 EQ84(z,time)            GDP at market prices (expenditure-based)
 EQ85(time)              World GDP
 EQ86(z,time)            Real consumption budget of type h households
 EQ87(z,time)            Real current government expenditures on goods and services
 EQ88(z,time)            Real GDP at basic prices
 EQ89(time)              Real world GDP at basic prices
 EQ90(z,time)            Real GDP at market prices
 EQ91(z,time)            Real gross fixed capital formation
 EQ92(z,time)            Current account balance of region z in terms of the reference currency
 WALRAS(z,time)          Walras law verification

* --- Nested Trade & Output ---
 EQA_1(z,time)           Top Nest - Leontief function Aggregated-Electricity
 EQA_2(Z,time)           Top Nest - Leontief function Aggregated-Electricity
 EQA_3(BS, Conv, I_BS, Z_GRN, time)       Top Nest - Other
 EQA_3_OTH(BS, Conv, I_BS, Z_OTH, time)  Top Nest - OTH IRONSTAL
 EQA_4(z,time)           Second Nest - CES function - Aggregated-Electricity 
 EQA_5(POWER,i,z,time)   Second Nest - CES function - Aggregated-Electricity
 EQA_6(BS, Conv, I_BS, Z_GRN, time)       Second Nest - CES function - Aggregated-Backstop
 EQA_7_CONV(BS, Conv, I_BS, Z_GRN, time)
 EQA_7_BS(BS, Conv, I_BS, Z_GRN, time)
 EQB_1(i2,z,time)        Industry j production of commodity i (CES)
 EQB_2(j,i2,z,time)      Industry j production
 EQB_3(j,i,z,time)       Total producer price is equal to P if there is only one product
 EQB_4(j,i,z,time)       Basic price of industry js production of commodity i
 EQB_5(j,i,z,time)       Supply of exports for compsite activity

* --- Dynamics and Labor ---
 EQ94(z,time)            Total investment expenditure constraint
 EQ95(z,time)            Aggregate price of capital
 EQ96(k,bus,z,time)      Investment demand by industry
 EQ97a(z,time)           Interest rate (weighted average rate of return on capital)
 EQ97b(z,time)           User cost of capital
 EQ106(z,time)           Labor supply

* --- Climate Policy (CTAX, Permits, DAC) ---
 EQ107(j,z,time)         Permit calculation by sector
 EQ108(z,time)           Total permits
 EQ109(z,time)           Carbon tax rebate
 EQ110(j,z,time)         Wage share for rebate
 EQ111(j,z,time)         Labor rebate
 EQ118(z,time)           DAC volume
 EQ_OBJ                  Objective function
 EQ_NEA_Cap(time)
 EQ_NEA_Price_Sync(NEA, time)
 EQ_Independent_Cap(PERMITOTH, time)
 
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
* 5.3 Equation Definitions
*==============================================================================

*==============================================================================
* 5.3.1 Production
*==============================================================================
EQ1(j3,z,t)$[not BS(j3)]..
    VA(j3,z,t) =e= v(j3,z) * XST(j3,z,t);

 EQ1_1(j2,z,t)..
    KLE(j2,z,t) =e= v2(j2,z) * XST(j2,z,t);

 EQ2(j,z,t)..
    CI(j,z,t) =e= io(j,z) * XST(j,z,t);

 EQ2_1(j3,z,t)..
    CE(j3,z,t) =e= io2(j3,z) * XST(j3,z,t);

 EQ3(j,z,t)$[XSTO(j,z)]..
    VA(j,z,t) =e= A_VA(z,t) * B_VA_t(j,z,t) * {
                  [beta_VA(j,z) * LDC(j,z,t)**(-rho_VA(j,z))]$LDCO(j,z)
                + [(1 - beta_VA(j,z)) * KDC(j,z,t)**(-rho_VA(j,z))]$KDCO(j,z)
                }**(-1 / rho_VA(j,z));

 EQ3_1(j2,z,t)..
    KLE(j2,z,t) =e= B_KLE(j2,z) * {
                    [beta_KLE(j2,z) * VA(j2,z,t)**(-rho_KLE(j2,z))]$VAO(j2,z)
                  + [(1 - beta_KLE(j2,z)) * CE(j2,z,t)**(-rho_KLE(j2,z))]$CEO(j2,z)
                  }**(-1 / rho_KLE(j2,z));

EQ4_1(j2,z,t)$[VAO(j2,z) and CEO(j2,z)]..
    VA(j2,z,t) * (beta_KLE2(j2,z)**sigma_KLE(j2,z)) * (PVA(j2,z,t)**sigma_KLE(j2,z)) 
    =e= ((1 - beta_KLE2(j2,z))**sigma_KLE(j2,z)) * (PCE(j2,z,t)**sigma_KLE(j2,z)) * CE(j2,z,t);

 EQ4(j,z,t)$[LDCO(j,z) and KDCO(j,z)]..
    LDC(j,z,t) =e= {[beta_VA(j,z) / (1 - beta_VA(j,z))]
                   *[RC(j,z,t) / WC(j,z,t)]}**sigma_VA(j,z) * KDC(j,z,t);

 EQ5(j,z,t)$LDCO(j,z)..
    LDC(j,z,t) =e= LD(j,z,t);

 EQ7(j,z,t)$KDCO(j,z)..
    KDC(j,z,t) =e= B_KD(j,z) * SUM[k$KDO(k,j,z), beta_KD(k,j,z)
                   * KD(k,j,z,t)**(-rho_KD(j,z))]**(-1 / rho_KD(j,z));

 EQ8(k,j,z,t)$KDO(k,j,z)..
    KD(k,j,z,t) =e= [beta_KD(k,j,z) * RC(j,z,t) / RTI(k,j,z,t)]**sigma_KD(j,z) 
                  * B_KD(j,z)**(sigma_KD(j,z) - 1) * KDC(j,z,t);

 EQ9(nene,j,z,t)..
    DI(nene,j,z,t) =e= aij_t(nene,j,z,t) * CI(j,z,t);

 EQ9_1(ene,j3,z,t)..
    DE(ene,j3,z,t) =e= aij2_t(ene,j3,z,t) * CE(j3,z,t) * AEEI(z,t);

*============================= Level 1, 2, 3 (CES Energy Nesting) =====================
 EQ9_2(j2,z,t)..
    CE(j2,z,t) =e= B_ENER_elec(j2,z) * {
                   [(beta_ENER_elec(j2,z)) * DEelec(j2,z,t)**(-rho_ENER_elec(j2,z))]
                 + [(1 - beta_ENER_elec(j2,z)) * DEnelec(j2,z,t)**(-rho_ENER_elec(j2,z))]
                 }**(-1 / rho_ENER_elec(j2,z));

 EQ9_3(j2,z,t)..
    DEnelec(j2,z,t) =e= {[(1 - beta_ENER_elec(j2,z)) / (beta_ENER_elec(j2,z))]
                        *[PCEelec(j2,z,t) / PCEnelec(j2,z,t)]}**sigma_ENER_elec(j2,z) * DEelec(j2,z,t);

 EQ9_4(j2,z,t)..
    DEnelec(j2,z,t) =e= B_ENER_nelec(j2,z) * {
                        [(beta_ENER_nelec(j2,z)) * DEcoalgas(j2,z,t)**(-rho_ENER_nelec(j2,z))]
                      + [(1 - beta_ENER_nelec(j2,z)) * DEoilpetrol(j2,z,t)**(-rho_ENER_nelec(j2,z))]
                      }**(-1 / rho_ENER_nelec(j2,z));

 EQ9_5(j2,z,t)..
    DEoilpetrol(j2,z,t) =e= {[(1 - beta_ENER_nelec(j2,z)) / (beta_ENER_nelec(j2,z))]
                            *[PCEcoalgas(j2,z,t) / PCEoilpetrol(j2,z,t)]}**sigma_ENER_nelec(j2,z) * DEcoalgas(j2,z,t);

 EQ9_6(ene2,j2,z,t)..
    DE(ene2,j2,z,t) =e= DEelec(j2,z,t) * AEEI(z,t);  
 
 EQ9_7(ene5,j2,z,t)..
    DE(ene5,j2,z,t) =e= [beta_ENER_coalgas(ene5,j2,z) * PCEcoalgas(j2,z,t) / (P4(ene5,j2,z,t) + P4(ene5,j2,z,t) * CTAX(z,t) * CO2FACTOR2(ene5,j2,z,t))]
                        **sigma_ENER_coalgas(j2,z) * B_ENER_coalgas(j2,z)**(sigma_ENER_coalgas(j2,z) - 1)
                        * DEcoalgas(j2,z,t) * AEEI(z,t);

 EQ9_8(ene6,j2,z,t)..
    DE(ene6,j2,z,t) =e= [beta_ENER_oilprod(ene6,j2,z) * PCEoilpetrol(j2,z,t) / (P4(ene6,j2,z,t) + P4(ene6,j2,z,t) * CTAX(z,t) * CO2FACTOR2(ene6,j2,z,t))]
                        **sigma_ENER_oilprod(j2,z) * B_ENER_oilprod(j2,z)**(sigma_ENER_oilprod(j2,z) - 1)
                        * DEoilpetrol(j2,z,t) * AEEI(z,t);

*==============================================================================
* 5.3.2 Income and savings
*==============================================================================
 EQ10(z,t)..
    YH(z,t) =e= YHL(z,t) + YHK(z,t) + REBATE(z,t) * recycle_hou(z,t) 
              + SUM((BS, Z_GRN)$sameas(z, Z_GRN), PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t));
              
 EQ11(z,t)..
    YHL(z,t) =e= SUM[(j)$LDO(j,z), W(z,t) * (LD(j,z,t))];

 EQ12(z,t)..
    YHK(z,t) =e= SUM[(k,j)$KDO(k,j,z), R(k,j,z,t) * (KD(k,j,z,t))];

 EQ13(z,t)..
    YDH(z,t) =e= YH(z,t) - TDH(z,t);

 EQ14(z,t)..
    CTH(z,t) =e= YDH(z,t) - SH(z,t);

 EQ15(z,t)..
    SH(z,t) =e= PIXCON(z,t)**eta * sh0(z,t) + sh1(z,t) * YDH(z,t);

*==============================================================================
* 5.3.2.2 Government
*==============================================================================
 EQ16(z,t)..
    YG(z,t) =e= TDH(z,t) + TPRODN(z,t) + TPRCTS(z,t) + REBATE(z,t) * recycle_gov(z,t) - SUM(i1, PC(i1,z,t) * QDAC(z,t) * DAC_Tech_Coeff(i1));

 EQ16_1(z,t)..
    TCTAX(z,t) =e= SUM((ene,j), PC(ene,z,t) * CTAX(z,t) * CO2FACTOR2(ene,j,z,t) * DE(ene,j,z,t));

 EQ17(z,t)..
    TPRODN(z,t) =e= TIWT(z,t) + TIKT(z,t) + TIPT(z,t);

EQ18(z,t)..
    TIWT(z,t) =e= SUM[(j)$LDO(j,z), TIW(j,z,t)] ;

 EQ19(z,t)..
    TIKT(z,t) =e= SUM[(k,j)$KDO(k,j,z), TIK(k,j,z,t)] ;

 EQ20(z,t)..
    TIPT(z,t) =e= SUM[j, TIP(j,z,t)] ;

 EQ21(z,t)..
    TPRCTS(z,t) =e= TICT(z,t) + TIMT(z,t) + TIXT(z,t);

 EQ22(z,t)..
    TICT(z,t) =e= SUM[i, TIC(i,z,t)];

 EQ23(z,t)..
    TIMT(z,t) =e= SUM[(i,zj)$IMO(i,zj,z), TIM(i,zj,z,t)];

 EQ24(z,t)..
    TIXT(z,t) =e= SUM[(i,zj)$EXO(i,z,zj), TIX(i,z,zj,t)];

 EQ25(z,t)..
    TDH(z,t) =e= PIXCON(z,t)**eta * ttdh0(z,t) + ttdh1(z,t) * YH(z,t);

 EQ26(j,z,t)$LDO(j,z)..
    TIW(j,z,t) =e= ttiw(j,z,t) * W(z,t) * (LD(j,z,t)) - LaborRebate(j,z,t);

 EQ27(k,j,z,t)$KDO(k,j,z)..
    TIK(k,j,z,t) =e= ttik(k,j,z,t) * R(k,j,z,t) * (KD(k,j,z,t));

 EQ28(j,z,t)..
    TIP(j,z,t) =e= ttip(j,z,t) * PP(j,z,t) * XST(j,z,t);

 EQ29(i,z,t)..
    TIC(i,z,t) =e= ttic(i,z,t) * {
                   [PL(i,z,t) * DD(i,z,t)]$DDO(i,z)
                 + [SUM[zj$IMO(i,zj,z), (1 + ttim(i,zj,z,t)) * IM(i,zj,z,t) * e(z,t)
                   *(PWM(i,zj,z,t) + SUM(ij, PWMG(ij,t) * tmrg(ij,i,zj,z)))]]
                 };

 EQ30(i,zj,z,t)$IMO(i,zj,z)..
    TIM(i,zj,z,t) =e= ttim(i,zj,z,t) * IM(i,zj,z,t) * e(z,t) * (PWM(i,zj,z,t) + SUM[ij, PWMG(ij,t) * tmrg(ij,i,zj,z)]);

 EQ31(i,z,zj,t)$EXO(i,z,zj)..
    TIX(i,z,zj,t) =e= ttix(i,z,zj,t) * PE(i,z,zj,t) * EX(i,z,zj,t);

 EQ32(z,t)..
    SG(z,t) =e= YG(z,t) - G(z,t);

*==============================================================================
* 5.3.2.4 Rest of the world
*==============================================================================
 EQ33(z,t)..
    YROW(z,t) =e= e(z,t) * SUM{(i,zj)$IMO(i,zj,z), IM(i,zj,z,t) * [PWM(i,zj,z,t) + SUM(ij, PWMG(ij,t) * tmrg(ij,i,zj,z))]}+YROW_RES(z);

 EQ34(z,t)..
    SROW(z,t) =e= YROW(z,t) - e(z,t) * SUM[(i,zj)$EXO(i,z,zj), EX(i,z,zj,t) * PWX(i,z,zj,t)]
                  - e(z,t) * SUM[i$MRGNO(i,z), MRGN(i,z,t) * PWMG(i,t)]
                  - [(S3_EMISSIONS(z,t)/10000 - PERMIT_TOTAL(z,t)) * NEA_REGIONAL_CTAX(t)]$NEA(z);

 EQ35(z,t)..
    SROW(z,t) =e= -CAB(z,t);

*==============================================================================
* 5.3.3 Demand
*==============================================================================
 EQ36(i,z,t)..
    PC(i,z,t) * C(i,z,t) =e= PC(i,z,t) * (CMIN(i,z,t))
                           + gamma_LES(i,z) * {CTH(z,t) - SUM[ij, PC(ij,z,t) * (CMIN(ij,z,t))]};

 EQ37(i,z,t)..
    PC(i,z,t) * INV(i,z,t) =e= gamma_INV(i,z) * IT(z,t);

 EQ38(i,z,t)..
    PC(i,z,t) * CG(i,z,t) =e= gamma_GVT(i,z) * G(z,t);

 EQ39(nene,z,t)..
    DIT(nene,z,t) =e= SUM[j, DI(nene,j,z,t)];

 EQ39_1(ene1,z,t)..
    DIT(ene1,z,t) =e= SUM[j, DE(ene1,j,z,t)];

 EQ39_2(ene2,z,t)..
    DIT(ene2,z,t) =e= SUM[j, DE(ene2,j,z,t)];

*==============================================================================
* 5.3.4 International trade
*==============================================================================
 EQA_1(z,t)..
    XS('18_TnD','18_ELEC',z,t) =e= TnDShare(z) * XS_I('18_ELEC',z,t);

 EQA_2(z,t)..
    XS_I('18_ELEC',z,t) =e= XS('18_TnD','18_ELEC',z,t) + QPOWER(z,t);

 EQA_3(BS, Conv, I_BS, Z_GRN, t)$MAP_BS(BS, Conv, I_BS)..
    XS_I(I_BS, Z_GRN, t) =e= QBS(BS, Z_GRN, t);

 EQA_3_OTH(BS, Conv, I_BS, Z_OTH, t)$MAP_BS(BS, Conv, I_BS)..
    XS_I(I_BS, Z_OTH, t) =e= XS(Conv, I_BS, Z_OTH, t);

 EQA_4(z,t)..
    QPOWER(z,t) =e= B_X4(z) * SUM[POWER, beta_X4(power,z) * XS(POWER,'18_ELEC',z,t)**(-rho_X4(z))]**(-1 / rho_X4(z));

 EQA_5(power,'18_ELEC',z,t)..
    XS(POWER,'18_ELEC',z,t) =e= QPOWER(z,t) / B_X4(z)**(1 - sigma_X4(z)) *
                                [beta_X4(power,z) * PPOWER(z,t) / P2(POWER,'18_ELEC',z,t)]**sigma_X4(z);

EQA_6(BS, Conv, I_BS, Z_GRN, t)$MAP_BS(BS, Conv, I_BS)..
    QBS(BS, Z_GRN, t) =e= B_BS(BS, Z_GRN) * (
          beta_BS_t(Conv, I_BS, Z_GRN, t) * XS(Conv, I_BS, Z_GRN, t)**(-rho_BS(BS, Z_GRN))
        + beta_BS_t(BS, I_BS, Z_GRN, t) * XS(BS, I_BS, Z_GRN, t)**(-rho_BS(BS, Z_GRN))
    )**(-1 / rho_BS(BS, Z_GRN));
    
 EQA_7_CONV(BS, Conv, I_BS, Z_GRN, t)$MAP_BS(BS, Conv, I_BS)..
    XS(Conv, I_BS, Z_GRN, t) =e= QBS(BS, Z_GRN, t) / B_BS(BS, Z_GRN)**(1 - sigma_BS(BS, Z_GRN)) *
        [beta_BS_t(Conv, I_BS, Z_GRN, t) * PBS(BS, Z_GRN, t) / P2(Conv, I_BS, Z_GRN, t)]**sigma_BS(BS, Z_GRN);

 EQA_7_BS(BS, Conv, I_BS, Z_GRN, t)$MAP_BS(BS, Conv, I_BS)..
    XS(BS, I_BS, Z_GRN, t) =e= QBS(BS, Z_GRN, t) / B_BS(BS, Z_GRN)**(1 - sigma_BS(BS, Z_GRN)) *
        [beta_BS_t(BS, I_BS, Z_GRN, t) * PBS(BS, Z_GRN, t) / P2(BS, I_BS, Z_GRN, t)]**sigma_BS(BS, Z_GRN);

 EQB_1(i2,z,t)..
    XS_I(i2,z,t) =e= B_X3(i2,z) * SUM[j$XSO(j,i2,z), beta_X3(j,i2,z) * XS(j,i2,z,t)**(-rho_X3(i2,z))]**(-1 / rho_X3(i2,z));

 EQB_2(j,i2,z,t)${DSO(j,i2,z) and [DSO(j,i2,z) ne DSO_I(i2,z)]}..
    XS(j,i2,z,t) =e= XS_I(i2,z,t) / B_X3(i2,z)**(1 - sigma_X3(i2,z)) *[beta_X3(j,i2,z) * P(i2,z,t) / P2(j,i2,z,t)]**sigma_X3(i2,z);

 EQB_3(j,i,z,t)${DSO(j,i,z)}..
    P2(j,i,z,t) =e= PT(j,z,t);

 EQB_4(j,i,z,t)$DSO(j,i,z)..
*    P2(j,i,z,t) * XS(j,i,z,t) =e= [PET(i,z,t) * EXTT(j,i,z,t)]$EXTTO(j,i,z)
*                                + [e(z,t) * MRGN(i,z,t) * PWMG(i,t)]$MRGNO(i,z)
*                                + [PL(i,z,t) * DS(j,i,z,t)]$DSO(j,i,z);

    P2(j,i,z,t) * XS(j,i,z,t) =e= [PET(i,z,t) * EXTT(j,i,z,t)]$EXTTO(j,i,z)
                                + [e(z,t) * MRGN(i,z,t) * PWMG(i,t) * SHR_MRGN(j,i,z)]$MRGNO(i,z)  
                                + [PL(i,z,t) * DS(j,i,z,t)]$DSO(j,i,z);

 EQB_5(j,i,z,t)$DSO(j,i,z)..
    EXTT(j,i,z,t) =e= theta2(j,i,z) * EXT(i,z,t);

 EQ40_3(i,z,t)..
    DS_I(i,z,t) =e= SUM(j, DS(j,i,z,t)$DSO(j,i,z));

 EQ40_4(j,z,t)..
    XST(j,z,t)  =e= SUM(i, XS(j,i,z,t)$XSO(j,i,z));

 EQ40_5(i,z,t)..
    XS_I(i,z,t) =e= B_X1(i,z) * {
                    [beta_EX_X1(i,z) * EXT(i,z,t)**rho_X1(i,z)]$EXTO(i,z)
                  + [beta_D_X1(i,z) * DS_I(i,z,t)**rho_X1(i,z)]$DSO_I(i,z)
                  + [(1 - beta_EX_X1(i,z) - beta_D_X1(i,z)) * MRGN(i,z,t)**rho_X1(i,z)]$MRGNO(i,z)
                  }**(1 / rho_X1(i,z));

 EQ41(i,z,t)$[EXTO(i,z) and DSO_I(i,z)]..
    EXT(i,z,t) =e= {[beta_D_X1(i,z) / beta_EX_X1(i,z)] * [PET(i,z,t) / PL(i,z,t)]}**sigma_X1(i,z) * DS_I(i,z,t);

 EQ42(i,z,t)$[MRGNO(i,z) and DSO_I(i,z)]..
    MRGN(i,z,t) =e= {[beta_D_X1(i,z) / (1 - beta_EX_X1(i,z) - beta_D_X1(i,z))] * [e(z,t) * PWMG(i,t) / PL(i,z,t)]}**sigma_X1(i,z) * DS_I(i,z,t);

 EQ43(i,z,t)$EXTO(i,z)..
    EXT(i,z,t) =e= B_X2(i,z) * SUM[zj$EXO(i,z,zj), beta_X2(i,z,zj) * EX(i,z,zj,t)**rho_X2(i,z)]**(1 / rho_X2(i,z));

 EQ44(i,z,zj,t)$EXO(i,z,zj)..
    EX(i,z,zj,t) =e= EXT(i,z,t) / B_X2(i,z)**(1 + sigma_X2(i,z)) *
                     [PE(i,z,zj,t) / (beta_X2(i,z,zj) * PET(i,z,t))]**sigma_X2(i,z);

 EQ45(i,z,t)..
    Q(i,z,t) =e= B_M1(i,z) * {
                 [beta_M1(i,z) * IMT(i,z,t)**(-rho_M1(i,z))]$IMTO(i,z)
               + [(1 - beta_M1(i,z)) * DD(i,z,t)**(-rho_M1(i,z))]$DDO(i,z)
                 }**(-1 / rho_M1(i,z));

 EQ46(i,z,t)$[IMTO(i,z) and DDO(i,z)]..
    IMT(i,z,t) =e= {[beta_M1(i,z) / (1 - beta_M1(i,z))] * [PD(i,z,t) / PMT(i,z,t)]}**sigma_M1(i,z) * DD(i,z,t);

 EQ47(i,z,t)$IMTO(i,z)..
    IMT(i,z,t) =e= B_M2(i,z) * SUM[zj$IMO(i,zj,z), beta_M2(i,zj,z) * IM(i,zj,z,t)**(-rho_M2(i,z))]**(-1 / rho_M2(i,z));

 EQ48(i,zj,z,t)$IMO(i,zj,z)..
    IM(i,zj,z,t) =e= IMT(i,z,t) / B_M2(i,z)**(1 - sigma_M2(i,z)) *
                     [beta_M2(i,zj,z) * PMT(i,z,t) / PM(i,zj,z,t)]**sigma_M2(i,z);

*==============================================================================
* 5.3.5 Prices
*==============================================================================
 EQ49(j2,z,t)..
    PP(j2,z,t) * XST(j2,z,t) =e= PKLE(j2,z,t) * KLE(j2,z,t) + PCI(j2,z,t) * CI(j2,z,t);

EQ49_1(j3,z,t)$[not BS(j3)]..    
    PP(j3,z,t) * XST(j3,z,t) =e= PVA(j3,z,t) * VA(j3,z,t) + PCI(j3,z,t) * CI(j3,z,t) + PCE(j3,z,t) * CE(j3,z,t);

 EQ50(j,z,t)..
    PT(j,z,t) =e= (1 + ttip(j,z,t)) * PP(j,z,t);

 EQ51(j,z,t)..
    PCI(j,z,t) * CI(j,z,t) =e= SUM[nene, PC(nene,z,t) * DI(nene,j,z,t)];

 EQ51_2(j3,z,t)..
    PCE(j3,z,t) * CE(j3,z,t) =e= SUM[ene, PC(ene,z,t) * DE(ene,j3,z,t) + PC(ene,z,t) * CTAX(z,t) * CO2FACTOR2(ene,j3,z,t) * DE(ene,j3,z,t)];

 EQ51_1(j2,z,t)..
    PCE(j2,z,t) * CE(j2,z,t) =e= [PCEelec(j2,z,t) * DEelec(j2,z,t) + PCEnelec(j2,z,t) * DEnelec(j2,z,t)];

 EQ51_3(j2,z,t)..
    PCEelec(j2,z,t) * DEelec(j2,z,t) =e= PC("18_ELEC",z,t) * DE("18_ELEC",j2,z,t);

 EQ51_4(j2,z,t)..
    PCEnelec(j2,z,t) * DEnelec(j2,z,t) =e= [PCEcoalgas(j2,z,t) * DEcoalgas(j2,z,t) + PCEoilpetrol(j2,z,t) * DEoilpetrol(j2,z,t)];

 EQ51_5(j2,z,t)..
    PCEcoalgas(j2,z,t) * DEcoalgas(j2,z,t) =e= [PC("02_COAL",z,t) * DE("02_COAL",j2,z,t) + PC("02_COAL",z,t) * CTAX(z,t) * CO2FACTOR2("02_COAL",j2,z,t) * DE("02_COAL",j2,z,t)
                                             + PC("04_GAS",z,t) * DE("04_GAS",j2,z,t) + PC("04_GAS",z,t) * CTAX(z,t) * CO2FACTOR2("04_GAS",j2,z,t) * DE("04_GAS",j2,z,t)];

 EQ51_6(j2,z,t)..
    PCEoilpetrol(j2,z,t) * DEoilpetrol(j2,z,t) =e= [PC("03_OIL",z,t) * DE("03_OIL",j2,z,t) + PC("03_OIL",z,t) * CTAX(z,t) * CO2FACTOR2("03_OIL",j2,z,t) * DE("03_OIL",j2,z,t)
                                                 + PC("10_PETROLCOAL",z,t) * DE("10_PETROLCOAL",j2,z,t) + PC("10_PETROLCOAL",z,t) * CTAX(z,t) * CO2FACTOR2("10_PETROLCOAL",j2,z,t) * DE("10_PETROLCOAL",j2,z,t)];

EQ52(j,z,t)..
    PVA(j,z,t) * VA(j,z,t) =e= [WC(j,z,t) * LDC(j,z,t)]$LDCO(j,z)
                             + [RC(j,z,t) * KDC(j,z,t)]$KDCO(j,z);

 EQ52_1(j2,z,t)..
    PKLE(j2,z,t) * KLE(j2,z,t) =e= [PVA(j2,z,t) * VA(j2,z,t)]$VAO(j2,z)
                                 + [PCE(j2,z,t) * CE(j2,z,t)]$CEO(j2,z);

 EQ53(j,z,t)..
    WC(j,z,t) * LDC(j,z,t) =e= WTI(j,z,t) * (LD(j,z,t));

 EQ54(j,z,t)$LDO(j,z)..
    WTI(j,z,t) * LD(j,z,t) =e= W(z,t) * (1 + ttiw(j,z,t)) * LD(j,z,t) - LaborRebate(j,z,t);

 EQ54_1(ene,j2,z,t)$DEO(ene,j2,z)..
    P4(ene,j2,z,t) =e= PC(ene,z,t);

 EQ56(k,j,z,t)$KDO(k,j,z)..
    RTI(k,j,z,t) =e= R(k,j,z,t) * (1 + ttik(k,j,z,t));

 EQ58(i,z,t)..
    P(i,z,t) * XS_I(i,z,t) =e= [PL(i,z,t) * DS_I(i,z,t)]$DSO_I(i,z)
                             + [PET(i,z,t) * EXT(i,z,t)]$EXTO(i,z)
                             + [e(z,t) * PWMG(i,t) * MRGN(i,z,t)]$MRGNO(i,z);

 EQ60(i,z,zj,t)$EXO(i,z,zj)..
    PE(i,z,zj,t) * (1 + ttix(i,z,zj,t)) =e= e(z,t) * PWX(i,z,zj,t);

 EQ61(i,z,t)$DDO(i,z)..
    PD(i,z,t) =e= (1 + ttic(i,z,t)) * PL(i,z,t);

 EQ62(i,zj,z,t)$IMO(i,zj,z)..
    PM(i,zj,z,t) =e= (1 + ttic(i,z,t)) * (1 + ttim(i,zj,z,t)) * e(z,t) * (PWM(i,zj,z,t) + SUM[ij, PWMG(ij,t) * tmrg(ij,i,zj,z)]);

 EQ64(i,z,t)..
    PC(i,z,t) * Q(i,z,t) =e= [PD(i,z,t) * DD(i,z,t)]$DDO(i,z) + [PMT(i,z,t) * IMT(i,z,t)]$IMTO(i,z);

EQ66(z,t)..
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

 EQ67(t)..
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

 EQ68(z,t)..
    PIXCON(z,t) =e= SUM[i, PC(i,z,t) * CO(i,z)] / SUM[i, PCO(i,z) * CO(i,z)];

 EQ69(z,t)..
    PIXINV(z,t) =e= PROD[i$gamma_INV(i,z), (PC(i,z,t) / PCO(i,z))**gamma_INV(i,z)];

 EQ70(z,t)..
    PIXGVT(z,t) =e= PROD[i$gamma_GVT(i,z), (PC(i,z,t) / PCO(i,z))**gamma_GVT(i,z)];

*==============================================================================
* 5.3.6 Equilibrium
*==============================================================================
EQ71(i1,z,t)..
    Q(i1,z,t) =e= C(i1,z,t) + CG(i1,z,t) + INV(i1,z,t) + DIT(i1,z,t) + (QDAC(z,t) * DAC_Tech_Coeff(i1)) ;

 EQ72(z,t)..
    LS(z,t) =e= SUM[j$LDO(j,z), LD(j,z,t)] ;

 EQ73(k,z,t)$KSO(k,z)..
    KS(k,z,t) =e= SUM[j$KDO(k,j,z), KD(k,j,z,t)] ;

 EQ74(z,t)..
    IT(z,t) =e= SH(z,t) + SG(z,t) - CAB(z,t);

 EQ75(z,t)..
    DEP(z,t) =e= PK(z,t) * delta(z) * SUM[k$KSO(k,z), KS(k,z,t)];

 EQ76(i,z,t)$DDO(i,z)..
    SUM[j$DSO(j,i,z), DS(j,i,z,t)] =e= DD(i,z,t);

 EQ77(i,z,zj,t)$EXO(i,z,zj)..
    EX(i,z,zj,t) =e= IM(i,z,zj,t);

 EQ78(i,z,zj,t)$EXO(i,z,zj)..
    PWX(i,z,zj,t) =e= PWM(i,z,zj,t);

 EQ79(i,t)..
    SUM[z$MRGNO(i,z), MRGN(i,z,t)] =e= SUM[(z,zj,ij)$IMO(ij,zj,z), tmrg(i,ij,zj,z) * IM(ij,zj,z,t)]+MRGN_RES(i) ;

*==============================================================================
* 5.3.7 Gross domestic product
*==============================================================================
 EQ81(z,t)..
    GDP_BP(z,t) =e= SUM[j, PVA(j,z,t) * VA(j,z,t)] + TIPT(z,t)
                  + SUM((BS, Z_GRN)$sameas(z, Z_GRN), PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t));

 EQ82(z,t)..
    GDP_MP(z,t) =e= GDP_BP(z,t) + TPRCTS(z,t) + TCTAX(z,t);

 EQ83(z,t)..
    GDP_IB(z,t) =e= SUM[(j)$LDO(j,z), W(z,t) * (LD(j,z,t))]
                  + SUM[(k,j)$KDO(k,j,z), R(k,j,z,t) * (KD(k,j,z,t))]
                  + SUM((BS, Z_GRN)$sameas(z, Z_GRN), PTSF(BS, Z_GRN, t) * TSFD(BS, Z_GRN, t))
                  + TPRCTS(z,t) + TPRODN(z,t) + TCTAX(z,t);

 EQ84(z,t)..
    GDP_FD(z,t) =e= SUM[i, PC(i,z,t) * (C(i,z,t) + CG(i,z,t) + INV(i,z,t))]
                  + SUM[(i,zj)$EXO(i,z,zj), e(z,t) * PWX(i,z,zj,t) * EX(i,z,zj,t)]
                  + SUM[i$MRGNO(i,z), e(z,t) * PWMG(i,t) * MRGN(i,z,t)]
                  - SUM[(i,zj)$IMO(i,zj,z), e(z,t) * IM(i,zj,z,t) * (PWM(i,zj,z,t) + SUM[ij, PWMG(ij,t) * tmrg(ij,i,zj,z)])]
                  + SUM(i1, PC(i1,z,t) * QDAC(z,t) * DAC_Tech_Coeff(i1));

 EQ85(t)..
    GDP_BP_W(t) =e= SUM[z, GDP_BP(z,t) / e(z,t)];

*==============================================================================
* 5.3.8 Real (volume) variables computed from price indices
*==============================================================================
 EQ86(z,t)..
    CTH_REAL(z,t) =e= CTH(z,t) / PIXCON(z,t);

 EQ87(z,t)..
    G_REAL(z,t) =e= G(z,t) / PIXGVT(z,t);

 EQ88(z,t)..
    GDP_BP_REAL(z,t) =e= GDP_BP(z,t) / PIXGDP(z,t);

 EQ89(t)..
    GDP_BP_W_REAL(t) =e= GDP_BP_W(t) / PIXGDP_W(t);

 EQ90(z,t)..
    GDP_MP_REAL(z,t) =e= GDP_MP(z,t) / PIXCON(z,t);

 EQ91(z,t)..
    IT_REAL(z,t) =e= IT(z,t) / PIXINV(z,t);

 EQ92(z,t)..
    CABX(z,t) =e= CAB(z,t) / [PIXGDP_W(t) * e(z,t)];

*==============================================================================
* 5.3.8 Dynamic equations
*==============================================================================
 EQ94(z,t)..
    IT(z,t) =e= PK(z,t) * SUM[(k,j)$KDO(k,j,z), IND(k,j,z,t)];

 EQ95(z,t)..
    PK(z,t) =e= 1 / A_K(z) * PROD[i$gamma_INV(i,z), (PC(i,z,t) / gamma_INV(i,z))**gamma_INV(i,z)];

 EQ96(k,bus,z,t)$KDO(k,bus,z)..
    IND(k,bus,z,t) =e= phi(z,t) * [R(k,bus,z,t) / U(z,t)]**sigma_INV(k,bus,z) * (KD(k,bus,z,t));

 EQ97a(z,t)..
    IR(z,t) =e= {SUM[(k,j)$KDO(k,j,z), R(k,j,z,t) * (KD(k,j,z,t))] - DEP(z,t)} /
                {PK(z,t) * SUM[(k,j)$KDO(k,j,z), (KD(k,j,z,t))]};

 EQ97b(z,t)..
    U(z,t) =e= PK(z,t) * (delta(z) + IR(z,t));
 
*==============================================================================
* 5.3.9 Other
*==============================================================================
 WALRAS(z,t)..
    LEON(z,t) =e= Q('01_AGRICULT',z,t) - C('01_AGRICULT',z,t) - CG('01_AGRICULT',z,t) - INV('01_AGRICULT',z,t) - DIT('01_AGRICULT',z,t);

*================================================================================
* 6 Labour Supply
*================================================================================
 EQ106(z,t)..
    LS(z,t) =e= LST(z,t) * ((W(z,t) / PIXCON(z,t)) / (W_lag(z,t) / PIXCON_lag(z,t)))**elasLS(z);

*==============================================================================
* 7 PERMIT
*==============================================================================
 EQ107(j,z,t)..
    PERMIT(j,z,t) =e= SUM(ene, CO2FACTOR2(ene,j,z,t) * DE(ene,j,z,t));

 EQ108(z,t)..
    PERMIT_TOTAL(z,t) =e= SUM(j, PERMIT(j,z,t)) - QDAC(z,t) * switchDAC(z,t);

 EQ_NEA_Cap(t).. 
    SUM(NEA, PERMIT_TOTAL(NEA, t)) =e= S5_PERMIT(t)/10000;
    
EQ_NEA_Price_Sync(NEA, t)..
    CTAX(NEA, t) =e= NEA_REGIONAL_CTAX(t);

EQ_Independent_Cap(PERMITOTH, t)..
    PERMIT_TOTAL(PERMITOTH, t) =e= S3_EMISSIONS(PERMITOTH, t)/10000;
    
*==============================================================================
* 8 Carbon Tax Revenue Recycling
*==============================================================================                
EQ109(z,t)..
    REBATE(z,t) =e= TCTAX(z,t) + [(S3_EMISSIONS(z, t)/10000- PERMIT_TOTAL(z, t)) * NEA_REGIONAL_CTAX(t)]$NEA(Z);

 EQ110(j,z,t)..
    TIW_Share(j,z,t) =e= LD(j,z,t) / SUM(jj, LD(jj,z,t));

 EQ111(j,z,t)..
    LaborRebate(j,z,t) =e= TIW_Share(j,z,t) * TCTAX(z,t) * recycle_labor(z,t);
 
*==============================================================================
* 9 DAC
*==============================================================================
 EQ118(z,t)..
    QDAC(z,t) =e= DAC_MAX(z) * DAC_growth_rate(z,t) * switchDAC(z,t);

 EQ_OBJ..
    OBJ =e= 1.0;

*==============================================================================
* 10 TSF Equations - CES
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
* 11. Terms of Trade (ToT) Equations (Bilateral World Prices)
* ===================================================================
 EQ_PX_INDEX(z,t)..
    PX_INDEX(z,t) =e= SUM((i,zj)$VFOB0(i,z,zj), W_EXP(i,z,zj) * (PWX(i,z,zj,t) / PWX0(i,z,zj)));

 EQ_PM_INDEX(z,t)..
    PM_INDEX(z,t) =e= SUM((i,zj)$VCIF0(i,zj,z), W_IMP(i,zj,z) * ( (PWM(i,zj,z,t) + SUM(ij, PWMG(ij,t) * tmrg(ij,i,zj,z))) / PCIF0(i,zj,z) ));

 EQ_TOT(z,t)..
    TOT(z,t) * PM_INDEX(z,t) =e= PX_INDEX(z,t);
    
*==============================================================================
* 6 Numerical resolution to compute A_VA, sh0, G, G_REAL and IND
*==============================================================================
option cns = conopt4;
*option cns = path;
*option cns = minos;
*option nlp = conopt4;

*option iterlim = 0;
*option limrow = 100, limcol = 100;
*option conopt4.TolPiv = 1e-6;
*option iterlim = 100;
*option reslim = 1000;
*option lmmxsf = t ;
*Eliminating display of solution makes it easier to check whether model solves
*and to identify year when it crashes.
*option profile=1;
*option profile=3;
*option profiletol=10;

*Fast solve option
option profile=0;
option limrow=0, limcol=0, solprint = off;
$Offlisting
$Offsymlist
$Offinclude 

MODEL CGE World wide dynamic model /all/ ;
CGE.holdfixed = 1;
CGE.solvelink = 5;
CGE.scaleopt = 1;
*==============================================================================
*  6.1 Scenarios
*==============================================================================
* Define the set of scenarios
* For each scenario, there are two files to $INCLUDE:
* SOLVE, and RESULTS.

SET
SCEN  List of scenarios
/
NEAICM_CJK_NZ      NEA Integrated Carbon Market_China_Japan_Korea_Net Zero
/
;

*==============================================================================
*  6.4 NZ scenarios and Results
*==============================================================================
$INCLUDE NEAICM_CJK_NZ_SOLVE.gms
$INCLUDE NEAICM_CJK_NZ_RESULTS.gms
