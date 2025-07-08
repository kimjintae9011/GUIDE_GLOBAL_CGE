$TITLE     GUIDE_GLOBAL_CGE model Baseline Calibration GTAPc

*==============================================================================*
*                                                                              *
*           Except where otherwise noted, this work is licensed under          *
*               http://creativecommons.org/licenses/by-nc-sa/3.0/              *
*                                                                              *
*                                                                              *
*  You are free to share, to copy, distribute and transmit the work under      *
*  the following conditions:                                                   *
*                                                                              *
*  - Attribution:         You must attribute the work to:                      *
*                         Veronique Robichaud, Andre Lemelin,                  *
*                         Helene Maisonnave and Bernard Decaluwe.              *
*  - Noncommercial:       You may not use this work for commercial purposes.   *
*  - Share Alike:         If you alter, transform, or build upon this work,    *
*                         you may distribute the resulting work only under     *
*                         the same or similar license to this one.             *
*                                                                              *
*==============================================================================*

*==============================================================================
* 1 Set definition
*==============================================================================
SET
 J               All industries
 I               All commodities
 I1(I)           All commodities except agriculture (agr)
 I2(I)           Backstop technology
 BUS(J)          Private industries
 PUB(J)          Public industries
 F               Production factors
 L(F)            Labor categories
 K(F)            Capital categories
 Z               Regions
 ZR(Z)           Reference country (USA)
 Z1(Z)           All regions except reference region
 Zrich(Z)        Rich regions
 Zother(Z)       Non-rich regions

$GDXIN Input_w-t/DATA_AGG-2019_GTAP11c.gdx
$LOAD J, I, BUS, PUB, F, L, K, Z, ZR, Z1, Zrich, Zother

*==============================================================================
*  1.1 Sub sets for commodities
*==============================================================================
I1(I) Commodities excluding agriculture and backstop technology
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
* 11_CHEMICAL    Chemical products
* 12_NONMET      Non-metallic mineral products
* 13_IRONSTL     Primary iron and steel products
 14_NONFERR     Non-ferrous metal products
 15_MACHINE     Fabricated metal products Electronic and electrical equipment Machinery and equipment
 16_TRANSEQ     Motor vehicles Other transport equipment
 17_OTHERIND    Other manufactured products Water supply
 18_ELEC        Electricity
 19_CONSTRUC    Construction
* 20_LTRP        Land transport service(road rail)
* 21_WTRP        Water transport service
* 22_ATRP        Air transport service
 23_SER         Service
/

I2(I) Commodities excluding electricity
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
* 18_ELEC        Electricity
 19_CONSTRUC    Construction
 20_LTRP        Land transport service(road rail)
 21_WTRP        Water transport service
 22_ATRP        Air transport service
 23_SER         Service
/

I3(I) Commodities for backstop technology
/
 11_CHEMICAL   Chemical products
 12_NONMET     Non-metallic mineral products
 13_IRONSTL     Primary iron and steel products
 20_LTRP           Land transport service(road rail)
 21_WTRP         Water transport service
 22_ATRP          Air transport service 
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

*==============================================================================
*  1.2 Sub sets for industries
*==============================================================================
J2(J) KLE Sectors
/
 01_AGRICULT    Agricultural forest and fishery goods
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

J4(J) 'Industries excluding specified energy-related industries'
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
/

J5(J) Fossil fuel power sector
/
 20_eCoal       Coal generation
 21_eGas        Gas generation
 22_eOil        Oil generation
/

J6(J) 'Industries excluding specified energy-related industries'
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
* 
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

*==============================================================================
*  1.3 Sub sets for region
*==============================================================================
NEA(Z) NorthEastAisa 6 Countires
/
 01_KOR Korea
 02_CHN China
 03_JPN Japan
 04_RUS Russian Federation
 05_MNG Mongolia
 06_PRK Peoples Republic of Korea
/

NEA2(Z) Sub NEA KOR-CHN-JPN
/
 01_KOR Korea
 02_CHN China
 03_JPN Japan
/


NEA3(Z) Sub NEA KOR-CHN-JPN
/
 01_KOR Korea
 02_CHN China
 03_JPN Japan
 04_RUS Russian Federation
/

PERMIT_Z(z)
/
 01_KOR Korea
 /

CTAX_Z(z)
/
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

*==============================================================================
*  1.4 Mapping for Backstop technologies 
*==============================================================================
COMtoIND(j,i3) 
/
 11_CHEMICAL.    (11_CHEMICAL)
 12_NONMET.      (12_NONMET)
 13_IRONSTL.     (13_IRONSTL)
 28_LTRP.        (20_LTRP)
 29_WTRP.        (21_WTRP )
 30_ATRP.        (22_ATRP )
/

INDtoCOM(i3,j) 
/
 11_CHEMICAL.    (11_CHEMICAL)
 12_NONMET.      (12_NONMET)
 13_IRONSTL.     (13_IRONSTL)
 20_LTRP.        (28_LTRP )
 21_WTRP.        (29_WTRP )
 22_ATRP.        (30_ATRP )
/

*==============================================================================
*   1.5 Periods
*==============================================================================
TIME Time periods
/
2019*2050
/

T(time)
T1(time)         First period;
T1(time)         = yes$[ord(time) eq 1];

Parameter EndTime /2050/;

*===============================================================================
*   1.6 Alias
*===============================================================================
ALIAS (j,jj)
ALIAS (i,ii,ij)
ALIAS (l,lj)
ALIAS (k,kj)
ALIAS (z,zj,zjj)
ALIAS (power, powerr)
AlIAS (ENE,ENEE)
AlIAS (TIME, TIMEE)
Alias (Elec, Elecc)
Alias (ene3, enee3)
Alias (ene4, enee4)
Alias (ene5, enee5)
Alias (ene6, enee6)
;

*==============================================================================
* 2 Declaration of parameters and benchmark variables
*==============================================================================
PARAMETER
*==============================================================================
*  2.1 Parameters
*==============================================================================
 A_K(z)               Scale parameter (investment function)
 aij(i,j,z)           Input output coefficient
 aij2(i,j,z)          Input output coefficient (intermediate energy)
 aij2_t(i,j,z,time)   Input output coefficient (intermediate energy)
 B_KD(j,z)            Scale parameter (CES - composite capital)
 B_KD2(j,z,time)      Scale parameter (CES - composite capital)
 B_LD(j,z)            Scale parameter (CES - composite labor)
 B_LD2(j,z,time)      Scale parameter (CES - composite labor)
 B_M1(i,z)            Scale parameter (CES - composite commodity)
 B_M1_t(i,z,time)     Scale parameter (CES - composite commodity)
 B_M2(i,z)            Scale parameter (CES - composite import)
 B_M2_t(i,z,time)     Scale parameter (CES - composite import) 
 B_VA(j,z)            Scale parameter (CES - value added)
 B_VA2(j,z,time)      Scale parameter (CES - value added)
 B_KLE(j,z)           Scale parameter (CES - composite KLE)
 B_ENER(j,z)          Scale parameter (CES - composite ENER)
 B_ENER_t(j,z,time)   Scale parameter (CES - composite ENER)
 B_ENER2(j,z)         Scale parameter (CES - composite ENER)
 B_ENER3(j,z)         Scale parameter (CES - composite ENER)
 B_ENER4(j,z)         Scale parameter (CES - composite ENER)
 B_ENER5_1(j,z)       Scale parameter (CES - composite ENER)
 B_ENER5_2(j,z)       Scale parameter (CES - composite ENER)
 B_X1(i,z)            Scale parameter (CET - total output) 
 B_X2(i,z)            Scale parameter (CET - composite export)
 B_X2_t(i,z,time)  Scale parameter (CET - composite export) 
 B_X3(i,z)            Scale parameter (CES - top level)
 B_X4(z)              Scale parameter (CES - Aggregated Electricity)
 beta_D_X1(i,z)       Share parameter (CET - total output - local sales)
 beta_EX_X1(i,z)      Share parameter (CET - total output - export)
 beta_X2(i,z,zj)      Share parameter (CET - composite export)
 beta_X3(j,i,z)       Share parameter (CES - top level)
 beta_X4(power, z)    Share parameter (CES - Aggregated Electricity)
 beta_KD(k,j,z)       Share parameter (CES - composite capital)
 beta_LD(l,j,z)       Share parameter (CES - composite labor)
 beta_M1(i,z)         Share parameter (CES - composite commodity)
 beta_M1_t(i,z,time)
 beta_M2(i,zj,z)      Share parameter (CES - composite import)
 beta_M2_t(i,zj,z,time) 
 beta_VA(j,z)         Share parameter (CES - value added)
 beta_KLE(j,z)        Share parameter (CES - KLE composite)
 beta_KLE2(j,z)       Share parameter (CES - KLE composite)
 beta_KLE2_t(j,z,time) Share parameter (CES - KLE composite)
 beta_ENER(ene,j,z)    Share parameter (CES - ENER composite)
 beta_ENER_t(ene,j,z,time)
 beta_ENER2(j,z)      Share parameter (CES - ENER composite)
 beta_ENER3(ene3,j,z) Share parameter (CES - ENER composite)
 beta_ENER4(j,z)      Share parameter (CES - ENER composite)
 beta_ENER5_1(ene5,j,z)    Share parameter (CES - ENER composite)
 beta_ENER5_2(ene6,j,z)    Share parameter (CES - ENER composite)
 delta(z)             Depreciation rate of capital in country z
 eta                  Price elasticity of indexed transfers and parameters
 frisch(z)            Frisch parameter (LES function)
 gamma_GVT(i,z)       Share of commodity i in total current public expenditures on goods and services
 gamma_INV(i,z)       Share of commodity i in total investment expenditures
 gamma_LES(i,z)       Marginal share of commodity i in household consumption budget
 io(j,z)              Coefficient (Leontief - intermediate consumption)
 io2(j,z)             Coefficient (Leontief - intermediate energy consumption)
 io2_t(j,z,time)      Coefficient (Leontief - intermediate energy consumption)
 v(j,z)               value added Coefficient (Leontief)
 v2(j,z)              KLE Share parameter (Leontief)
 kmob                 Flag parameter (1 if capital is mobile)
 RES                  Rescaling factor
 rho_KD(j,z)          Elasticity paameter (CES - composite capital)
 rho_LD(j,z)          Elasticity parameter (CES - composite labor)
 rho_M1(i,z)          Elasticity parameter (CES - composite commodity)
 rho_M2(i,z)          Elasticity parameter (CES - composite import)
 rho_VA(j,z)          Elasticity parameter (CES - value added)
 rho_KLE(j,z)         Elasticity parameter (CES - KLE)
 rho_ENER(j,z)        Elasticity parameter (CES - ENER)
 rho_ENER2(j,z)       Elasticity parameter (CES - ENER)
 rho_ENER3(j,z)       Elasticity parameter (CES - ENER)
 rho_ENER4(j,z)       Elasticity parameter (CES - ENER)
 rho_ENER5_1(j,z)     Elasticity parameter (CES - ENER)
 rho_ENER5_2(j,z)     Elasticity parameter (CES - ENER)
 rho_X1(i,z)          Elasticity parameter (CET - composite export)
 rho_X2(i,z)          Elasticity parameter (CET - composite export)
 rho_X3(i,z)          Elasticity parameter (CES - top level)
 rho_X4(z)            Elasticity parameter (CES - Aggregated Electricity)
 sigma_INV(k,j,z)     Elasticity (investment demand)
 sigma_KD(j,z)        Elasticity (CES - composite capital)
 sigma_LD(j,z)        Elasticity (CES - composite labor)
 sigma_M1(i,z)        Elasticity (CES - composite commodity)
 sigma_M2(i,z)        Elasticity (CES - composite import)
 sigma_VA(j,z)        Elasticity (CES - value added)
 sigma_KLE(j,z)       Elasticity (CES - kle)
 sigma_ENER(j,z)      Elasticity (CES - within energy)
 sigma_ENER2(j,z)     Elasticity (CES - within energy)
 sigma_ENER3(j,z)     Elasticity (CES - within energy)
 sigma_ENER4(j,z)     Elasticity (CES - within energy)
 sigma_ENER5_1(j,z)   Elasticity (CES - within energy)
 sigma_ENER5_2(j,z)   Elasticity (CES - within energy) 
 sigma_X0(j,z)        Elasticity (CET - exports and local sales)
 sigma_X1(i,z)        Elasticity (CET - total output)
 sigma_X2(i,z)        Elasticity (CET - composite export)
 sigma_X3(i,z)        Elasticity (CES - top level)
 sigma_X4(z)          Elasticity (CES - Aggregated Electricity)
 sigma_Y(i,z)         Income elasticity of consumption
 elasLS(z)            Elasticity of labor supply
 tmrg(i,ij,zj,z)      Rate of margin i applied to commodity ij imported from country zj
 TnDShare(z)          T&D share of Aggregated electricity
 PowerShare(z)        Power Industries share of Aggregated electricity    
 theta2(j,i,z)        Export share of composite activity
 elas_Hou_ENER(ene,z) Household own-price elasticities
 elas_Firm_KLE(j,z)   Frim kle own-price elasticities
 elas_Firm_ENER(ene,j,z) Frim ener own-price elasticities
 TOT_POP(z,time)      Total population from 1980 to 2050 based on the PEP w aggregation
 g_GDP(z,time)        GDP past and projected growth rate
 g_LS(z,time)         Active population past and projected growth rate
 g_POP(z,time)        Population past and projected growth rate
 g_SDR(z,time)        Growth rate of domestic savings rate
 gamma_GVT(i,z)       Share of commodity i in total current public expenditures on goods and services
 gamma_INV(i,z)       Share of commodity i in total investment expenditures
 gamma_LES(i,z)       Marginal share of commodity i in household consumption budget
 gamma_LES_t(i,z,time) Marginal share of commodity i in household consumption budget
 exogro(z,time)       Exogenous growth factor for exogenously growing variables except labor
 growthz(z)           Steady state grwoth
 AEEI(z,time)         Autonomous energy efficiency improvement (Reference)
 AEEI_low(z,time)     Autonomous energy efficiency improvement (Low)
 AEEI_high(z,time)    Autonomous energy efficiency improvement (High)
 TREND(z,time)        Decresing rate of charcoal and waste consumption
 TREND2(z,time)       Coal Phase out
 TREND_CPS(z,time)
 TREND_NZS(z,time)    
 CTAX_Cal(z,time)     Carbon Tax for Baseline Scenario
 CTAX_CPS(z,time)     Carbon Tax for Current Policy Scenario
 CTAX_NZS(z,time)     Carbon Tax for Net Zero Scenario
 PERMIT_Cal(z,time)   PERMIT
 switch(i3,z,time) binary variable - equals zero if no use of backstop technologies
 penetration_rate(i3,z,time) penetration_rate
 
*==============================================================================
*  2.2 Variables - Benchmark
*==============================================================================
*  Benchmark values of variables are parameters. Their acronyms are the
*  corresponding variable names,followed by the letter "O".

*==============================================================================
*   2.2.1 Volume variables
*==============================================================================
 CABXO(z)        Current account balance of region z in terms of the international currency (pseudo-volume variable)
 CO(i,z)         Consumption of commodity i by households in region z
 CGO(i,z)        Public consumption of commodity i in region z
 CIO(j,z)        Total intermediate consumption of industry j in region z
 CEO(j,z)        Total energy intermediate consumption of industry j in region z
 CEelecO(j,z)    Total energy intermediate consumption of industry j in region z
 CEnelecO(j,z)   Total energy intermediate consumption of industry j in region z
 CMINO(i,z)      Minimum consumption of commodity i by households in region z
 CTH_REALO(z)    Real household consumption in region z
 DDO(i,z)        Domestic demand for commodity i produced locally in region z
 DIO(i,j,z)      Intermediate consumption of commodity i by industry j in region z
 DEO(ene,j,z)    Intermediate energy consumption of commodity i by industry j in region z
 DEelecO(j,z)    Intermediate energy consumption of commodity i by industry j in region z
 DEnelecO(j,z)   Intermediate energy consumption of commodity i by industry j in region z
 DEcoalgasO(j,z) Intermediate energy consumption of commodity i by industry j in region z
 DEcoalO(j,z)    Intermediate energy consumption of commodity i by industry j in region z
 DEgasO(j,z)     Intermediate energy consumption of commodity i by industry j in region z
 DEoilpetrolO(j,z) Intermediate energy consumption of commodity i by industry j in region z
 DEoilO(j,z)     Intermediate energy consumption of commodity i by industry j in region z
 DEpetrolO(j,z)  Intermediate energy consumption of commodity i by industry j in region z
 DITO(i,z)       Total intermediate demand of commodity i in region z
 DSO(j,i,z)      Supply of commodity i by sector j to the domestic market
 DSO_I(i,z)      Supply of commodity i to the domestic market of region z
 DSO_J(j,z)      Supply of activity j to the domestic market of region z
 EXO(i,z,zj)     Quantity of product i exported by country z to country zj
 EXTO(i,z)       Supply of composite commodity i by region z to the export market
 EXTTO(j,i,z)    Supply of activity j to the export market i of region z
 G_REALO(z)      Current real government expenditures on goods and services in region z
 GDP_BP_REALO(z) Real GDP at basic prices
 GDP_MP_REALO(z) Real GDP at market prices
 GDP_BP_W_REALO  Real GDP at basic prices
 IMO(i,zj,z)     Quantity of product i imported by country z from country zj
 IMTO(i,z)       Quantity demanded of composite imports of commodity i by region z
 IMT2(i,z,time)  Quantity demanded of composite imports of commodity i by region z
 INDO(k,j,z)     Volume of new type k capital investment to industry j in region z
 INVO(i,z)       Final demand of commodity i for investment purposes (GFCF) in region z
 IT_REALO(z)     Real gross fixed capital formation
 KDO(k,j,z)      Demand for type k capital by industry j in region z
 KDCO(j,z)       Demand for composite capital by industry j in region z
 KSO(k,z)        Supply of type k capital in region z
 KSTO(z)         Total supply of capital in region z
 LDO(l,j,z)      Demand for type l labor by industry j in region z  
 LDCO(j,z)       Demand for composite labor by industry j in region z
 LSO(l,z)        Supply of type l labor in region z
 MRGNO(i,z)      Domestic production of commodity i in region z exported as international margin services
 POPO(z)         Population in 2019
 QO(i,z)         Quantity demanded of composite commodity i in region z
 VAO(j,z)        Value added of industry j in region z
 KLEO(j,z)       KLE of industry j in region z
 XSO_I(i,z)      Commoidty i total production
 XSO(j,i,z)      Total output of industry j in region z
 XSTO(j,z)       Total output of industry j
 POWERQO(z)      Total power output in region z
 EMPLOY(j,z)     Employment by sector 2019 (thousand)
 Share_Elec(j2,z)
 Share_nElec(ene3,j2,z)
 Share_coalgas2(j2,z)
 Share_oilpetrol2(j2,z)
 Share_coalgas(ene5,j2,z)
 Share_oilpetrol(ene6,j2,z)
*==============================================================================
*   2.2.2 Price variables
*==============================================================================
 eO(z)           Exchange rate (price of international currency in terms of region z local currency)
 IRO(z)          Interest rate
 PO(i,z)         Basic price of commodity i in region z
 PO2(j,i,z)      Basic price of industry js production of commodity i
 PO3(i,j,z)      Basic price of power industry js production of commodity i
 PO4(i,j,z)      Basic energy commodity price of industry js production of commodity i
 PPOWERO(z)      Basic price of composite power commodity in region z
 PIO(i,z)        Basic price of composite activity commodity in region z
 PTO(j,z)        Basic price of industry js output
 PCO(i,z)        Purchaser price of composite commodity i (including all taxes and margins) in region z
 PCIO(j,z)       Intermediate consumption price index of industry j in region z
 PCEO(j,z)       Intermediate energy consumption price index of industry j in region z
 PCEelecO(j,z)   Intermediate energy consumption price index of industry j in region z
 PCEnelecO(j,z)  Intermediate energy consumption price index of industry j in region z
 PCEcoalgasO(j,z)  Intermediate energy consumption price index of industry j in region z
 PCEcoalO(j,z)     Intermediate energy consumption price index of industry j in region z
 PCEgasO(j,z)      Intermediate energy consumption price index of industry j in region z
 PCEoilpetrolO(j,z)  Intermediate energy consumption price index of industry j in region z
 PCEoilO(j,z)    Intermediate energy consumption price index of industry j in region z
 PCEpetrolO(j,z) Intermediate energy consumption price index of industry j in region z
 PDO(i,z)        Price of local product i sold on region z domestic market (including all taxes)
 PEO(i,z,zj)     Price received for commodity i exported to region zj by region z (excluding export taxes)
 PETO(i,z)       Border price of composite commodity i exported by region z
 PIXCONO(z)      Consumer price index in region z
 PIXCON2O(z)     Consumer price index in region z
 PIXGDPO(z)      GDP deflator in region z
 PIXGDP_WO       World GDP deflator
 PIXGVTO(z)      Public expenditures price index in region z
 PIXINVO(z)      Investment price index in region z
 PKO(z)          Price of new capital in region z
 PLO(i,z)        Price of local product i (excluding all taxes on products) in region z
 PMO(i,zj,z)     Price of commodity i imported by region z from region zj (including all taxes duties and margins)
 PMTO(i,z)       Price of composite commodity i imported by region z (including all taxes duties and margins)
 PPO(j,z)        Unit cost of industry j in region z including taxes directly related to the use of capital and labor but excluding other taxes on production
 PVAO(j,Z)       Price of industry j value added in region z (including taxes on production directly related to the use of capital and labor)
 PKLEO(j,z)      Price of industry j KLE in region z
 PWMO(i,zj,z)    World price of commodity i imported from country zj by region z (expressed in international currency)
 PWMGO(i)        World price of margin i (expressed in international currency)
 PWXO(i,z,zj)    World price of commodity i exported to country zj by region z (expressed in international currency)
 RO(k,j,z)       Rental rate of type k capital in industry j of region z
 RCO(j,z)        Rental rate of industry j composite capital in region z
 RKO(k,z)        Rental rate of type k capital in region z
 RTIO(k,j,z)     Rental rate paid by industry j for type k capital in region z including capital taxes
 UO(z)           User cost of capital in region z
 WO(l,z)         Wage rate of type l labor in region z
 WCO(j,z)        Wage rate of industry j composite labor in region z
 WTIO(l,j,z)     Wage rate paid z by industry j for type l labor in region including payroll taxes

*==============================================================================
*   2.2.3 Nominal (value) variables
*==============================================================================
 CABO(z)         Current account balance of region z
 CTHO(z)         Consumption budget of households in region z
 DEPO(z)         Amount of depreciation (capital consumption allowance) in region z
 GO(z)           Current government expenditures on goods and services in region z
 GDP_BPO(z)      Region z GDP at basic prices
 GDP_BP_WO       World GDP at basic prices
 GDP_FDO(z)      Region z GDP at purchasers prices from the perspective of final demand
 GDP_IBO(z)      Region z GDP at market prices (income-based)
 GDP_MPO(z)      Region z GDP at market prices
 ITO(z)          Total investment expenditures in region z
 RKDO(k,j,z)     Type k capital income in industry j in region z
 SGO(z)          Government savings in region z
 SHO(z)          Household savings in region z
 SROWO(z)        Rest-of-the-world savings with respect to region z
 TDHO(z)         Household income taxes in region z
 TICO(i,z)       Government revenue from indirect taxes on commodity i in region z
 TICTO(z)        Total government receipts of indirect taxes on commodities in region z
 TIKO(k,j,z)     Government revenue from taxes on type k capital used by industry j in region z
 TIKTO(z)        Total government revenue from from taxes on capital in region z
 TIMO(i,zj,z)    Government revenue from duties on commodity i imported from region zj by region z
 TIMTO(z)        Total government revenue from import duties in region z
 TIPO(j,z)       Government revenue from taxes on industry j production in region z (excluding taxes directly related to the use of capital and labor)
 TIPTO(z)        Total government revenue from production taxes in region z (excluding taxes directly related to the use of capital and labor)
 TIWO(l,j,z)     Government revenue from payroll taxes on type l labor in industry j of region z
 TIWTO(z)        Total government revenue from payroll taxes in region z
 TIXO(i,z,zj)    Government revenue from export taxes on commodity i exported by region z to region zj
 TIXTO(z)        Total government revenue from export taxes in region z
 TPRCTSO(z)      Total government revenue from taxes on products and imports in region z
 TPRODNO(z)      Total government revenue from other taxes on production in region z
 YDHO(z)         Household disposable income in region z
 YGO(z)          Total government income in region z
 YHO(z)          Household total income in region z
 YHKO(z)         Household capital income in region z
 YHLO(z)         Household labor income in region z
 YROWO(z)        Rest-of-the-world total income from region z

*==============================================================================
*   2.2.4 Rates and intercepts
*==============================================================================
 phiO(z)         Scale variable (allocation of investment to industries)
 sh0O(z)         Intercept (household savings)
 sh1O(z)         Slope (household savings)
 ttdh0O(z)       Intercept (household income tax)
 ttdh1O(z)       Slope (household income tax)
 tticO(i,z)      Tax rate on commodity i
 ttikO(k,j,z)    Tax rate on capital k used in industry j
 ttimO(i,zj,z)   Rate of taxes and duties on imports of commodity i from country zj
 ttipO(j,z)      Tax rate on the production of industry j
 ttiwO(l,j,z)    Tax rate on type l worker compensation in industry j
 ttixO(i,z,zj)   Export tax rate on exported commodity x
;

*==============================================================================
* 3 Data
*==============================================================================
*  3.1 Data input from GTAP8.1
*==============================================================================
*   3.1.1 Reading data aggregated with DATA_AGG-2007.gms
*==============================================================================
*  The PEP w-t model uses aggregated data from GTAP8.1. The following file
*  includes data for some variables and substitution elasticities.

$LOAD CO, CGO, DDO, DEPO, DIO, DSO, DSO_I, EXO, IMO, INVO, KSTO, LDO, MRGNO, XSO, XSO_I, XSTO, EMPLOY
$LOAD TOT_POP, g_GDP, g_POP, g_SDR, AEEI_low, AEEI_high, TREND, TREND2, TREND_CPS, TREND_NZS, CTAX_Cal, CTAX_CPS, CTAX_NZS, PERMIT_cal, RKDO, TDHO, TICO, TIKO, TIMO, TIPO, TIWO, TIXO, 
$LOAD tmrg, sigma_M1, sigma_M2, sigma_VA, sigma_KLE, POPO

* Other exogenous parameters can be defined if the Excel file VAL_PAR.XLS
PARAMETER
PARZ;

$CALL gdxxrw Input_w-t\PAR.xlsx @Input_w-t\PAR.txt Rdim=2 Cdim=1 output = Input_w-t\PAR.gdx
$GDXIN Input_w-t\PAR.gdx
$LOAD sigma_KD, sigma_LD, sigma_X1, sigma_X2, sigma_X3, sigma_X0, sigma_y, sigma_inv, PARZ

*===============================================================================
* CES - composite capital
 sigma_KD(j,z)              = 2*sigma_VA(j,z);
 sigma_KD('02_COAL',z)      = 0.2;
 sigma_KD('03_OIL',z)       = 0.2;
 sigma_KD('04_GAS',z)       = 0.2;
 sigma_KD('05_MINING',z)    = 0.2;
 
* CES - composite labor
 sigma_LD(j,z)   = 2*sigma_VA(j,z); 

* CES - composite K-L
* 02_COAL, 20_e_Coal, 22_eOil -> 0.1
* Exec Error at line 3250: rPower: FUNC DOMAIN: x**y, x < 0
* Evaluation error(s) in equation "EQ4(02_COAL,03_JPN,2046)"
* Exec Error at line 3670: rPower: FUNC DOMAIN: x**y, x < 0
* Evaluation error(s) in equation "EQ96(cap,02_COAL,03_JPN,2046)"
* Evaluation error(s) in equation "EQ96(natr,02_COAL,03_JPN,2046)"
* why? No issues with 0.2 : 02_COAL, 20_e_Coal, 22_eOil -> 0.2
 sigma_VA('02_COAL',z)  = 0.2;
 sigma_VA('20_eCoal',z) = 0.2;
 sigma_VA('22_eOil',z)  = 0.2;
 sigma_VA('27_CONSTRUC','05_MNG')  = 0.2;

* 10_PETROLCOAL 1.0 -> 1.26
 sigma_VA('10_PETROLCOAL',z) = 1.26;

* CES - composite ENER
 sigma_ENER(j,z)     = 1.1 ;
 sigma_ENER2(j2,z)   = 1.1 ;
 sigma_ENER3(j2,z)   = 1.1 ;
 sigma_ENER4(j2,z)   = 2.0 ;
 sigma_ENER5_1(j2,z) = 2.0 ;
 sigma_ENER5_2(j2,z) = 2.0 ;

* CES - composite Power sector
 sigma_X4(z)    = 1.1;

* CES - DOM vs.IMP
 sigma_M1('03_OIL','06_PRK') = 0.5;
 sigma_M1('04_GAS',Z) = 6;

* CES - IMP sourcing
 sigma_M2('03_OIL',Z) = 2;
 sigma_M2('04_GAS',Z) = 2;

* CET - total output
 sigma_X2(i,Z)  = 2;

* CES - composite Power sector
 sigma_X4(z)    = 2;
 sigma_X4(NEA2) = 5;
 
* Investment demand elasticity
 sigma_INV(k,j,z) = 2;
 sigma_INV(k,j,'05_MNG') = 0.1;

* Income elasticity of consumption
 sigma_Y('03_OIL','06_PRK') = 1.01;

* LES parameters - Frisch all (1.1)
 frisch(z)      = PARZ(z,'frisch');

* CES - Capital
 sigma_KD('02_COAL',z)  = 0.2;

* Labour supply 
 elasLS(z) = 0.1 ; 
*==============================================================================
*   3.1.2 Rescaling the variables
*==============================================================================
* GTAP 8.1 data are in millions of (2004 and 2007) US dollars
* (see www.gtap.agecon.purdue.edu/resources/download/5679.pdf)
* With RES = 10000, model results are in tens of billions (10G$)
RES              = 10000;

* NOTE: In GTAP parlance, "agents' prices" are prices paid by buyers, and
*       "market prices" are prices received by sellers.

* Household consumption = GTAP domestic purchases (VDPA) + import purchases (VIPA)
* by households at agents' prices.
CO(i,z)          = CO(i,z)/RES;

* Public final consumption = domestic purchases (VDGA) + import purchases (VIGA)
* by government at agents' prices.
CGO(i,z)         = CGO(i,z)/RES;

* Domestic purchases = domestic absorption:
* (CO + CGO + INVO + DIO) - [ imports (IMO) + transport margins (tmrg)
*                              + indirect taxes (TICO + TIMO) ]
DDO(i,z)         = DDO(i,z)/RES;

* Capital depreciation (DEP)
DEPO(z)          = DEPO(z)/RES;

* Intermediate consumption = domestic purchases (VDFA) + import purchases (VIFA)
* by firms belonging to sectors other than CGDS, at agents' prices.
DIO(i,j,z)       = DIO(i,j,z)/RES;

* Domestic supply = domestic demand (DDO) in GTAP_AGG.gms
DSO(j,i,z)        = DSO(j,i,z)/RES;
DSO_I(i,z)        = DSO_I(i,z)/RES;

* Exports = exports at world prices (VXWD) = imports at world prices
* Note: the GTAP variable VXWD is NOT used in the DATA_AGG.gms program; the
* value recorded in DATA_AGG.gdx is actually identical to IMO
EXO(i,z,zj)      = EXO(i,z,zj)/RES;

* Imports = imports at world prices (VIWS) - sum of transport margins on imports (VTWR)
IMO(i,z,zj)      = IMO(i,z,zj)/RES;

* Demand for investment purposes = domestic purchases (VDFA)+ import purchases (VIFA)
* by firms of the CGDS sector at agents' prices.
INVO(i,z)        = INVO(i,z)/RES;

* Total capital stock at the beginning of the period (VKB)
KSTO(z)          = KSTO(z)/RES;

* Labor demand = Remuneration of labor at market prices, before taxes
* (components of VFM, "primary factor purchases, by households, at market prices")
LDO(l,j,z)       = LDO(l,j,z)/RES;

* Supply of transport margins at market prices (VST), adjusted proportionately
* so that MRGNO = sum of tmrg for every margin commodity
MRGNO(i,z)       = MRGNO(i,z)/RES;

* Remuneration of capital at market prices, before taxes
* (components of VFM, "primary factor purchases, by households, at market prices")
RKDO(k,j,z)      = RKDO(k,j,z)/RES;

* Direct taxes = factor payment at market prices (VFM)
*                - primary factor sales at agents' prices (EVOA)
TDHO(z)          = TDHO(z)/RES;

* Domestic taxes on commodities = demand at agents' prices - demand at market prices:
* Include 6 pairs of GTAP components
*       VDPA - VDPM
*       VIPA - VIPM
*       VDGA - VDGM
*       VIGA - VIGM
*       VDFA - VDFM
*       VIFA - VIFM
TICO(i,z)        = TICO(i,z)/RES;

* Net taxes on factor of production = factor employment tax revenue (FTRV)
*                                     - factor-based subsidies (FBEP).
TIKO(k,j,z)      = TIKO(k,j,z)/RES;

* Import duties = "ordinary" import duties (TFRV)
TIMO(i,z,zj)     = TIMO(i,z,zj)/RES;

* Taxes on production = MINUS "ordinary output subsidies" (OSEP)
TIPO(j,z)        = TIPO(j,z)/RES;

* Net taxes on factor of production = factor employment tax revenue (FTRV)
*                                     - factor-based subsidies (FBEP).
TIWO(l,j,z)      = TIWO(l,j,z)/RES;

* Taxes on exports = export tax equivalent of the Multi-Fiber Agreement (MFA)
* quota premium(MFRV) + "ordinary" export taxes (XTRV)
TIXO(i,z,zj)     = TIXO(i,z,zj)/RES;

* Transport margins at world prices = sum of margins on imports (VTWR)
tmrg(i,ij,z,zj)  = tmrg(i,ij,z,zj)/RES;

* Domestic output = domestic supply (DSO) + supply of transport margins (MRGNO)
*                   + exports (EXO) - taxes on exports (TIXO)

XSO_I(i,z)        = XSO_I(i,z)/RES;
XSO(j,i,z)        = XSO(j,i,z)/RES;
XSTO(j,z)         = XSTO(j,z)/RES;

growthz(z)        = 0.02;

*==============================================================================
*  3.3 Exogenous prices and parameters
*==============================================================================
*  Price elasticity (should be equal to one to verify homogeneity)
eta = 1;

*------------------------------------------------------------------------------
*  Slopes of taxation functions
*   One can either choose to assign a value to the intercepts and calibrate
*   the slopes accordingly, or the other way around. This type of modelling
*   can be useful to take into account known marginal savings or taxation rates
*   or to deal with negative average saving rates in cases where savings are
*   negative for some household groups.
*   When no further information is available, one can simply set the intercepts
*   to zero and calibrate an average rate: this is what we do here for ttdh0O.
*   If the user wishes to assume otherwise, he can fill the appropriate area in
*   the Excel file VAL_PAR.xls.
* ttdh0O(z)       = PARZ(z,'ttdh0O');

 ttdh0O(z)       = 0;
*   The slope ttdh1O is calibrated below in the mane GAMS file

*------------------------------------------------------------------------------
* Also we need to assign values to some prices
* All of the prices below, EXCEPT eO, may be set at arbitrary values
* without loss of generality.
*
* In the case of eO, although exchange rates may be given arbitrary values
* in the model, they must all be equal for calibration at this stage. The reason
* is that the supply of margin transport services MRGNO must equal global demand.
* Since there is a single world price for international transport margins
* (rather than bilateral world prices for other commodities) the unit of
* measurement of the volume of margin services must be the same for all regions,
* and in turn, that implies that the divisor that converts the nominal value to
* volume be the same for all regions. Since that divisor involves the exchange
* rate, all exchange rates must be equal.

* Normally, prices that may be given arbitrary values are set at 1:
 eO(z)            = 1;
 PEO(i,z,zj)      = 1;
 PLO(i,z)         = 1;
 PWMGO(i)         = 1;
 WO(l,z)          = 1;

*==============================================================================
* 4 Calibration
*==============================================================================
*  4.1 Calculation of income and savings related variables and parameters
*==============================================================================
 YHKO(z)         = SUM[(k,j),RKDO(k,j,z)];
 YHLO(z)         = SUM[(l,j),LDO(l,j,z)];
 YHO(z)          = YHLO(z)+YHKO(z);
 YDHO(z)         = YHO(z)-TDHO(z);
 CTHO(z)         = SUM[i,CO(i,z)];
 SHO(z)          = YDHO(z)-CTHO(z);

 TICTO(z)        = SUM[i,TICO(i,z)];
 TIMTO(z)        = SUM[(i,zj),TIMO(i,zj,z)];
 TIWTO(z)        = SUM[(l,j),TIWO(l,j,z)];
 TIKTO(z)        = SUM[(k,j),TIKO(k,j,z)];
 TIPTO(z)        = SUM[j,TIPO(j,z)];
 TIXTO(z)        = SUM[(i,zj),TIXO(i,z,zj)];
 TPRODNO(z)      = TIKTO(z)+TIWTO(z)+TIPTO(z);
 TPRCTSO(z)      = TICTO(z)+TIMTO(z)+TIXTO(z);
 YGO(z)          = TDHO(z)+TPRCTSO(z)+TPRODNO(z);
 GO(z)           = SUM[i,CGO(i,z)];
 SGO(z)          = YGO(z)-GO(z);

 YROWO(z)        = SUM[(i,zj),IMO(i,zj,z)]+SUM[(i,ij,zj),tmrg(i,ij,zj,z)];
 SROWO(z)        = YROWO(z)-SUM[(i,zj),EXO(i,z,zj)]-SUM[i,MRGNO(i,z)];
 CABO(z)         = -SROWO(z);

 ITO(z)          = SHO(z)+SGO(z)+SROWO(z);

*==============================================================================
*  4.2 Calibration of parameters and other variables
*==============================================================================
*  4.2.1 Calibration of investment and government spending shares
*==============================================================================
 gamma_GVT(i,z)  = CGO(i,z)/SUM[ij,CGO(ij,z)];
 gamma_INV(i,z)  = INVO(i,z)/SUM[ij,INVO(ij,z)] ;

*==============================================================================
*  4.2.2 Calibration of other prices and revised volumes (part 1)
*==============================================================================
 LDO(l,j,z)   = LDO(l,j,z)/WO(l,z);
 LDCO(j,z)    = SUM[l,LDO(l,j,z)];
 LSO(l,z)     = SUM[j,LDO(l,j,z)];
 EXO(i,z,zj)  = [EXO(i,z,zj)-TIXO(i,z,zj)]/PEO(i,z,zj);
 EXTO(i,z)    = SUM[zj,EXO(i,z,zj)];
 PWXO(i,z,zj)$EXO(i,z,zj)
                 = {[PEO(i,z,zj)*EXO(i,z,zj)+TIXO(i,z,zj)]/EXO(i,z,zj)}/eO(z);

 PETO(i,z)       = SUM[zj,PEO(i,z,zj)*EXO(i,z,zj)]/EXTO(i,z);
* PETO(i,z)$(EXTO(i,z) > 0) = SUM[zj, PEO(i,z,zj) * EXO(i,z,zj)] / EXTO(i,z);
* PETO(i,z)$(EXTO(i,z) = 0) = 0;  
 PWMO(i,z,zj)    = PWXO(i,z,zj);
 IMO(i,zj,z)     = EXO(i,zj,z);
 IMTO(i,z)       = SUM[zj,IMO(i,zj,z)];
 IMT2(i,z,time)  =  0;

 DSO(j,i,z)      = DSO(j,i,z)/PLO(i,z);
 DSO_I(i,z)      = SUM(j,DSO(j,i,z));
 DSO_J(j,z)      = SUM(i,DSO(j,i,z));
 QO(i,z)         = IMTO(i,z)+DDO(i,z);

 MRGNO(i,z)$MRGNO(i,z)
                 = MRGNO(i,z)/[eO(z)*PWMGO(i)];

 XSO_I(i,z)      = EXTO(i,z)+DDO(i,z)+MRGNO(i,z);

 XSTO(j,z)       = sum(i, XSO(j,i,z));

 PO(i,z)         = [PETO(i,z)*EXTO(i,z)+PLO(i,z)*DSO_I(i,z)
                  +eO(z)*PWMGO(i)*MRGNO(i,z)]/XSO_I(i,z);

 PO2(j,i,z)$XSO(j,i,z) = 1;

 PO3(i,j,z)$XSO(j,i,z) = 1;

 PIO(i,z)       = SUM[j$XSO(j,i,z),PO2(J,I,z)*XSO(j,i,z)]/XSO_I(i,z);

 PTO(j,z)       = SUM[i$XSO(j,i,z),PO2(j,i,z)*XSO(j,i,z)]/XSTO(j,z);

 PPO(j,z)       = SUM[l,[TIWO(l,j,z)+WO(l,z)*LDO(l,j,z)]
                  +SUM[k,TIKO(k,j,z)+RKDO(k,j,z)]
                  +SUM[nene,DIO(nene,j,z)]+SUM[ene,DIO(ene,j,z)]]/XSTO(j,z);

 theta2(j,i,z)  = DSO(j,i,z)/sum(jj, DSO(jj,i,z));

 EXTTO(j,i,z)$DSO(j,i,z) = theta2(j,i,z)*EXTO(i,z);

*==============================================================================
*  4.3 Calibration of tax rates, margins, prices and volumes
*==============================================================================
*  4.3.1 Margin rates and tax rates
*==============================================================================
 ttixO(i,z,zj)   = [eO(z)*PWXO(i,z,zj)/PEO(i,z,zj)]-1;
 tticO(i,z)      = TICO(i,z)/{PLO(i,z)*DDO(i,z)
                   +SUM[zj,IMO(i,zj,z)*eO(z)*PWMO(i,zj,z)
                   +TIMO(i,zj,z)+SUM[ij,tmrg(ij,i,zj,z)]]};

 tmrg(i,ij,zj,z)$IMO(ij,zj,z)
                 = tmrg(i,ij,zj,z)/(PWMGO(i)*eO(z)*IMO(ij,zj,z));

 ttimO(i,zj,z)$IMO(i,zj,z)
                 = TIMO(i,zj,z)/{IMO(i,zj,z)*eO(z)*(PWMO(i,zj,z)
                  +SUM[ij,PWMGO(ij)*tmrg(ij,i,zj,z)])};

 ttiwO(l,j,z)$LDO(l,j,z)
                 = TIWO(l,j,z)/[WO(l,z)*LDO(l,j,z)];

 ttikO(k,j,z)$RKDO(k,j,z)
                 = TIKO(k,j,z)/RKDO(k,j,z);

 ttipO(j,z)      = [PTO(j,z)/PPO(j,z)]-1;

 ttdh1O(z)       = [TDHO(z)-ttdh0O(z)]/YHO(z);

*==============================================================================
*  4.3.2 Calibration of other prices and revised volumes (part 2)
*==============================================================================
 PDO(i,z)        = PLO(i,z)*(1+tticO(i,z));
 PMO(i,zj,z)     = eO(z)*(PWMO(i,zj,z)+SUM[ij,PWMGO(ij)*tmrg(ij,i,zj,z)])
                 *(1+ttimO(i,zj,z))*(1+tticO(i,z));
 PMTO(i,z)       = SUM[zj,PMO(i,zj,z)*IMO(i,zj,z)]/IMTO(i,z);
 PCO(i,z)        = [PMTO(i,z)*IMTO(i,z)+PDO(i,z)*DDO(i,z)]/QO(i,z);

 CO(i,z)         = CO(i,z)/PCO(i,z);
 CGO(i,z)        = CGO(i,z)/PCO(i,z);
 DIO(nene,j,z)   = DIO(nene,j,z)/PCO(nene,z);
 DEO(ene,j,z)    = DIO(ene,j,z)/PCO(ene,z);
 
 DEelecO(j,z)    = DIO("18_ELEC",j,z)/PCO("18_ELEC",z);
 DEnelecO(j,z)   = sum(ene3,DEO(ene3,j,z));

 DEcoalgasO(j,z) = sum(ene5,DEO(ene5,j,z));
 DEcoalO(j,z)    = DEO("02_COAL ",j,z);
 DEgasO(j,z)     = DEO("04_GAS",j,z);
 
 DEoilpetrolO(j,z) = sum(ene6,DEO(ene6,j,z));
 DEoilO(j,z)       = DEO("03_OIL",j,z);
 DEpetrolO(j,z)    = DEO("10_PETROLCOAL",j,z);

 INVO(i,z)       = INVO(i,z)/PCO(i,z);

 CIO(j,z)        = SUM[nene,DIO(nene,j,z)];
 CEO(j3,z)        = SUM[ene,DEO(ene,j3,z)];
 CEO(j2,z)        = DEelecO(j2,z)+DEnelecO(j2,z); 

 DITO(nene,z)    = SUM[j,DIO(nene,j,z)];
 DITO(ene,z)     = SUM[j,DEO(ene,j,z)];
 
 PO4(ene,j,z)    = PCO(ene,z);

 PCIO(j,z)       = SUM[nene,PCO(nene,z)*DIO(nene,j,z)]/CIO(j,z);

 PCEcoalO(j,z)   = PO4("02_COAL",j,z) ;
 PCEgasO(j,z)    = PO4("04_GAS",j,z) ;
 PCEoilO(j,z)    = PO4("03_OIL",j,z) ;
 PCEpetrolO(j,z) = PO4("10_PETROLCOAL",j,z) ;

 PCEoilpetrolO(j,z)  = [PCEoilO(j,z)*DEoilO(j,z)+PCEpetrolO(j,z)*DEpetrolO(j,z)]
                   /DEoilpetrolO(j,z) ;

 PCEcoalgasO(j,z)  = [PCEcoalO(j,z)*DEcoalO(j,z)+PCEgasO(j,z)*DEgasO(j,z)]
                   /DEcoalgasO(j,z) ;

 PCEnelecO(j,z)  = [PCEcoalgasO(j,z)*DEcoalgasO(j,z)+PCEoilpetrolO(j,z)*DEoilpetrolO(j,z)]
                   /DEnelecO(j,z) ;

 PCEelecO(j,z)   = SUM[ene4,PCO(ene4,z)*DEO(ene4,j,z)]/DEelecO(j,z) ;
* PCEnelecO(j,z)  = SUM[ene3,PCO(ene3,z)*DEO(ene3,j,z)]/DEnelecO(j,z) ;
 
 PCEO(j,z)       = [PCEelecO(j,z)*DEelecO(j,z)+PCEnelecO(j,z)*DEnelecO(j,z)]/CEO(j,z) ;
 PCEO(j3,z)       = SUM[ene,PCO(ene,z)*DEO(ene,j3,z)]/CEO(j3,z) ;

 WTIO(l,j,z)     = WO(l,z)*(1+ttiwO(l,j,z));
 
 WCO(j,z)$LDCO(j,z)
                 = SUM[l,WTIO(l,j,z)*LDO(l,j,z)]/LDCO(j,z);

*==============================================================================
*  4.4 Calibration of dynamic parameters
*==============================================================================
* Calibration of dynamic parameters following new procedure.
* The price of capital is arbitrary:
 PKO(z) = 1;

* The calibration of depreciation rates is based on two hypotheses:
* 1. The rate of depreciation is the same for all types of capital and all
*    industries in each region (this hypothesis is made to accommodate the fact
*    that, in the GTAP data base, capital consumption allowance is not detailed;
*    as a matter of fact, the GTAP capital consumption allowance is set at
*    4% of the value of the capital stock).
* 2. The rental rate of capital is uniform across industries and types of
*    capital in each region.
* 3. The investment rate (IND/KD) is uniform across industries and types of
*    capital in each region.
* These hypotheses lead to the following formulae:

* From GTAP, we know KSTO.
 KSTO(z)         = KSTO(z)/PKO(z);

* Assuming a uniform depreciation rate for all types
* of capital and all industries:
 delta(z)        = DEPO(z)/[PKO(z)*KSTO(z)];

* From GTAP, we know KSTO. Assuming a uniform rental rate R for all types
* of capital and all industries:
 RO(k,j,z)$RKDO(k,j,z)
                 = SUM[(kj,jj),RKDO(kj,jj,z)]/KSTO(z);
                 
* Then from the GTAP value of income paid to capital RKD we calibrate KDO:
 KDO(k,j,z)$RKDO(k,j,z)
                 = RKDO(k,j,z)/RO(k,j,z);

* The supply of capital is equal to demand:
 KSO(k,z)        = SUM[j,KDO(k,j,z)];

* The rate of return on capital, net of depreciation, is:
 IRO(z)         = {SUM[(k,j)$RKDO(k,j,z),RKDO(k,j,z)]-DEPO(z)}/[PKO(z)*KSTO(z)];

* The user cost of capital follows
 UO(z)           = PKO(z)*(IRO(z)+delta(z));

* Combining
* - the hypothesis of uniform investment rates
* - the hypothesis of uniform rental rates
* - the hypothesis of uniform depreciation rates
* leads to
 phiO(z)         = [ITO(z)/PKO(z)]/KSTO(z);

* Investment by destination follows:
 INDO(k,j,z)$KDO(k,j,z)
                 = phiO(z)*KDO(k,j,z);

 A_K(z)          = 1/PKO(z)*{PROD[i$gamma_INV(i,z),(PCO(i,Z)/gamma_INV(i,z))
                   **gamma_INV(i,z)]};
                   
 KDCO(j,z)       = SUM[k,KDO(k,j,z)];
 RTIO(k,j,z)     = RO(k,j,z)*(1+ttikO(k,j,z));
 RCO(j,z)$KDCO(j,z)
                 = SUM[k,RTIO(k,j,z)*KDO(k,j,z)]/KDCO(j,z);

*==============================================================================
*  4.5 Calibration of other prices and revised volumes (part 3)
*==============================================================================
 VAO(j,z)        = LDCO(j,z)+KDCO(j,z);

 PVAO(j,z)       = [WCO(j,z)*LDCO(j,z)+RCO(j,z)*KDCO(j,z)]/VAO(j,z);

* PIXGDPO is tautologically equal to 1, based on its formula
* PIXGDPO(z)      = {SUM[j,{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)]
*                   /SUM[j,{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)]
*                   *SUM[j,{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)]
*                   /SUM[j,{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)]}**0.5;
 PIXGDPO(z)      = 1;

* PIXGDP_WO is tautologically equal to 1, based on its formula
* PIXGDP_WO       = {SUM[(j,z),{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)/eO(z)]
*                   /SUM[(j,z),{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)/eO(z)]
*                   *SUM[(j,z),{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)/eO(z)]
*                   /SUM[(j,z),{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)]/eO(z)}**0.5;
 PIXGDP_WO       = 1;

* PIXCONO(z) is tautologically equal to 1, based on its formula
* PIXCONO(z)      = SUM[i,PCO(i,z)*CO(i,z)]
*                  /SUM[i,PCO(i,z)*CO(i,z)];
 PIXCONO(z)      = 1;
 PIXCON2O(z)     = PIXCONO(z);

* PIXINVO(z) is tautologically equal to 1, based on its formula
* PIXINVO(z)      = PROD[i$gamma_INV(i,z),(PCO(i,z)/PCO(i,z))**gamma_INV(i,z)];
 PIXINVO(z)      = 1;

* PIXGVTO(z) is tautologically equal to 1, based on its formula
* PIXGVTO(z)      = PROD[i$gamma_GVT(i,z),(PCO(i,z)/PCO(i,z))**gamma_GVT(i,z)];
 PIXGVTO(z)      = 1;

*==============================================================================
*  4.6 Calibration of function parameters
*==============================================================================
*   4.6.1 Leontief functions
*==============================================================================
 io(j,z)         = CIO(j,z)/XSTO(j,z) ;

 io2(j,z)        = CEO(j,z)/XSTO(j,z) ;

 v(j,z)          = VAO(j,z)/XSTO(j,z) ;

 v2(j,z)         = (CEO(j,z)+VAO(j,z))/XSTO(j,z) ;

 aij(nene,j,z)   = DIO(nene,j,z)/CIO(j,z);

 aij2(ene,j,z)   = DEO(ene,j,z)/CEO(j,z);

 aij2_t(ene,j,z,time) =  aij2(ene,j,z) ;
 
 io2_t(j,z,time) = io2(j,z) ;

*==============================================================================
*   4.6.2 Calibration of CET parameters
*==============================================================================
*    4.6.2.1 CET between total exports, domestic supply and margins
*==============================================================================
 rho_X1(i,z)     = (1+sigma_X1(i,z))/sigma_X1(i,z);

 beta_EX_X1(i,z)$MRGNO(i,z)
                 = [PETO(i,z)*EXTO(i,z)$EXTO(i,z)**(1-rho_X1(i,z))]/
                   [PETO(i,z)*EXTO(i,z)$EXTO(i,z)**(1-rho_X1(i,z))+
                   PLO(i,z)*DSO_I(i,z)**(1-rho_X1(i,z))+
                   eO(z)*PWMGO(i)*MRGNO(i,z)$MRGNO(i,z)**(1-rho_X1(i,z))];

 beta_EX_X1(i,z)$(MRGNO(i,z) eq 0)
                 = [PETO(i,z)*EXTO(i,z)$EXTO(i,z)**(1-rho_X1(i,z))]/
                   [PETO(i,z)*EXTO(i,z)$EXTO(i,z)**(1-rho_X1(i,z))+
                   PLO(i,z)*DSO_I(i,z)**(1-rho_X1(i,z))];

 beta_D_X1(i,z)$MRGNO(i,z)
                 = [PLO(i,z)*DSO_I(i,z)**(1-rho_X1(i,z))]/
                   [PETO(i,z)*EXTO(i,z)**(1-rho_X1(i,z))+
                   PLO(i,z)*DSO_I(i,z)**(1-rho_X1(i,z))+
                   eO(z)*PWMGO(i)*MRGNO(i,z)**(1-rho_X1(i,z))];

 beta_D_X1(i,z)$(MRGNO(i,z) eq 0)
                 = [PLO(i,z)*DSO_I(i,z)**(1-rho_X1(i,z))]/
                   [PETO(i,z)*EXTO(i,z)**(1-rho_X1(i,z))+
                   PLO(i,z)*DSO_I(i,z)**(1-rho_X1(i,z))];

 B_X1(i,z)       = XSO_I(i,z)/[beta_EX_X1(i,z)*EXTO(i,z)**rho_X1(i,z)
                  +beta_D_X1(i,z)*DSO_I(i,z)**rho_X1(i,z)+(1-beta_EX_X1(i,z)
                  -beta_D_X1(i,z))*MRGNO(i,z)**rho_X1(i,z)]**(1/rho_X1(i,z));

*==============================================================================
*    4.6.2.2 CET between exports to different trading partners
*==============================================================================
 rho_X2(i,z)     = (1+sigma_X2(i,z))/sigma_X2(i,z);

 beta_X2(i,z,zj)$EXO(i,z,zj)
                 = [PEO(i,z,zj)*EXO(i,z,zj)**(1-rho_X2(i,z))]/
                   SUM[zjj$EXO(i,z,zjj),PEO(i,z,zjj)*EXO(i,z,zjj)
                   **(1-rho_X2(i,z))];

 B_X2(i,z)       = EXTO(i,z)/{SUM[zj,beta_X2(i,z,zj)*EXO(i,z,zj)**rho_X2(i,z)]
                   **(1/rho_X2(i,z))};

 B_X2_t(i,z,time) =  B_X2(i,z)   ;

*==============================================================================
*   4.6.3 Calibration of CES parameters
*==============================================================================
*    4.6.3.0 Composite output
*==============================================================================
 rho_X3(i,z)   = (1-sigma_X3(i,z))/sigma_X3(i,z);

 beta_X3(j,i,z)$XSO(j,i,z)
               = [PO2(j,i,z)*XSO(j,i,z)**(1+rho_X3(i,z))]/
                   SUM[jj$XSO(jj,i,z),PO2(jj,i,z)*XSO(jj,i,z)**(1+rho_X3(i,z))];

 B_X3(i,z)     = XSO_I(i,z)
                  /SUM[jj$XSO(jj,i,z),beta_X3(jj,i,z)*XSO(jj,i,z)**(-rho_X3(i,z))
                  ]**(-1/rho_X3(i,z));

 POWERQO(Z) = SUM(POWER, XSO(power,'18_ELEC',z));
 
 rho_X4(z)   = (1-sigma_X4(z))/sigma_X4(z);

 beta_X4(power,z)
               = [PO2(power,'18_ELEC',z)*XSO(power,'18_ELEC',z)**(1+rho_X4(z))]/
                   SUM[powerr$XSO(powerr,'18_ELEC',z),PO2(powerr,'18_ELEC',z)*XSO(powerr,'18_ELEC',z)**(1+rho_X4(z))];

 B_X4(z)     = POWERQO(Z)
                  /SUM[powerr$XSO(powerr,'18_ELEC',z),beta_X4(powerr,z)*XSO(powerr,'18_ELEC',z)**(-rho_X4(z))
                  ]**(-1/rho_X4(z));

 TnDShare(z) = XSO('18_TnD','18_ELEC',z)/XSO_I('18_ELEC',z);

 PPOWERO(z) = 1;

*==============================================================================
*    4.6.3.1 Composite good
*==============================================================================
 rho_M1(i,z)     = (1-sigma_m1(i,z))/sigma_m1(i,z);

 beta_M1(i,z)    = PMTO(i,z)*IMTO(i,z)**(rho_M1(i,z)+1)/
                  {PDO(i,z)*DDO(i,z)**(rho_M1(i,z)+1)
                  +PMTO(i,z)*IMTO(i,z)**(rho_M1(i,z)+1)};

 B_M1(i,z)       = QO(i,z)/{beta_M1(i,z)*IMTO(i,z)**(-rho_M1(i,z))
                  +(1-beta_M1(i,z))*DDO(i,z)**(-rho_M1(i,z))}**(-1/rho_M1(i,z));

 B_M1_t(i,z,time) =  B_M1(i,z) ;
 beta_M1_t(i,z,time) =  beta_M1(i,z) ;

*==============================================================================
*    4.6.3.2 CES between imports from different trading partners
*==============================================================================
 rho_M2(i,z)     = (1-sigma_M2(i,z))/sigma_M2(i,z);

 beta_M2(i,zj,z)$IMO(i,zj,z)
                 = [PMO(i,zj,z)*IMO(i,zj,z)**(rho_M2(i,z)+1)]/
                   SUM[zjj$IMO(i,zjj,z),PMO(i,zjj,z)*IMO(i,zjj,z)
                    **(rho_M2(i,z)+1)];

 B_M2(i,z)       = IMTO(i,z)/{SUM[zj$IMO(i,zj,z),beta_M2(i,zj,z)*IMO(i,zj,z)
                   **(-rho_M2(i,z))]**(-1/rho_M2(i,z))};
 
B_M2_t(i,z,time) = B_M2(i,z) ;
beta_M2_t(i,zj,z,time) =  beta_M2(i,zj,z);

*==============================================================================
*    4.6.3.3 Composite capital
*==============================================================================
 rho_KD(j,z)     = (1-sigma_KD(j,z))/sigma_KD(j,z);

 beta_KD(k,j,z)$KDO(k,j,z)
                 = [RTIO(k,j,z)*KDO(k,j,z)**(1+rho_KD(j,z))]/
                   SUM[kj$KDO(kj,j,z),RTIO(kj,j,z)*KDO(kj,j,z)**(1+rho_KD(j,z))];

 B_KD(j,z)$KDCO(j,z)
                 = KDCO(j,z)/{SUM[k$KDO(k,j,z),beta_KD(k,j,z)*KDO(k,j,z)
                   **(-rho_KD(j,z))]**(-1/rho_KD(j,z))};

 B_KD2(j,z,time) = B_KD(j,z) ;
 
*==============================================================================
*    4.6.3.4 Composite labor
*==============================================================================
 rho_LD(j,z)     = (1-sigma_LD(j,z))/sigma_LD(j,z);

 beta_LD(l,j,z)$LDO(l,j,z)
                 = [WTIO(l,j,z)*LDO(l,j,z)**(1+rho_LD(j,z))]/
                   SUM[lj$LDO(lj,j,z),WTIO(lj,j,z)*LDO(lj,j,z)
                   **(1+rho_LD(j,z))];

 B_LD(j,z)$LDCO(j,z)
                 = LDCO(j,z)/{SUM[l$LDO(l,j,z),beta_LD(l,j,z)*LDO(l,j,z)
                   **(-rho_LD(j,z))]**(-1/rho_LD(j,z))};
                   
 B_LD2(j,z,time) = B_LD(j,z) ;
 
*===============================================================================
*   Composite E
*===============================================================================
*Leontief
 Share_Elec(j2,z) = DEO('18_ELEC',j2,z)/sum(ene,DEO(ene,j2,z));
 Share_nElec(ene3,j2,z) = DEO(ene3,j2,z)/sum(enee3,DEO(enee3,j2,z));
 Share_coalgas2(j2,z) = sum(ene5,DEO(ene5,j2,z))/sum(enee3,DEO(enee3,j2,z));
 Share_Oilpetrol2(j2,z) = sum(ene6,DEO(ene6,j2,z))/sum(enee3,DEO(enee3,j2,z));
 Share_coalgas(ene5,j2,z) = DEO(ene5,j2,z)/sum(enee5,DEO(enee5,j2,z));
 Share_Oilpetrol(ene6,j2,z) = DEO(ene6,j2,z)/sum(enee6,DEO(enee6,j2,z));

*CES No Level
 rho_ENER(j,z)   = (1-sigma_ENER(j,z))/sigma_ENER(j,z);

 beta_ENER(ene,j,z)$DEO(ene,j,z)
                 = [PO4(ene,j,z)*DEO(ene,j,z)**(1+rho_ENER(j,z))]/
                   SUM[enee,PO4(enee,j,z)*DEO(enee,j,z)
                   **(1+rho_ENER(j,z))];

 B_ENER(j,z)$CEO(j,z)
                 = CEO(j,z)/{SUM[ene,beta_ENER(ene,j,z)*DEO(ene,j,z)
                   **(-rho_ENER(j,z))]**(-1/rho_ENER(j,z))};

 B_ENER_t(j,z,time) = B_ENER(j,z)*(1/AEEI_low(z,'2019'));

 beta_ENER_t(ene,j,z,time) = beta_ENER(ene,j,z) ;

*Level 5_1 (Coal/Gas)
 rho_ENER5_1(j2,z)   = (1-sigma_ENER5_1(j2,z))/sigma_ENER5_1(j2,z);

 beta_ENER5_1(ene5,j2,z)
                 = [PO4(ene5,j2,z)*DEO(ene5,j2,z)**(1+rho_ENER5_1(j2,z))]/
                   SUM[enee5,PO4(enee5,j2,z)*DEO(enee5,j2,z)
                   **(1+rho_ENER5_1(j2,z))];
 B_ENER5_1(j2,z)
                 = DEcoalgasO(j2,z)/{SUM[ene5,beta_ENER5_1(ene5,j2,z)*DEO(ene5,j2,z)
                   **(-rho_ENER5_1(j2,z))]**(-1/rho_ENER5_1(j2,z))};

*Level 5_2 (oil/petrol)
 rho_ENER5_2(j2,z)   = (1-sigma_ENER5_2(j2,z))/sigma_ENER5_2(j2,z);

 beta_ENER5_2(ene6,j2,z)
                 = [PO4(ene6,j2,z)*DEO(ene6,j2,z)**(1+rho_ENER5_2(j2,z))]/
                   SUM[enee6,PO4(enee6,j2,z)*DEO(enee6,j2,z)
                   **(1+rho_ENER5_2(j2,z))];
 B_ENER5_2(j2,z)
                 = DEoilpetrolO(j2,z)/{SUM[ene6,beta_ENER5_2(ene6,j2,z)*DEO(ene6,j2,z)
                   **(-rho_ENER5_2(j2,z))]**(-1/rho_ENER5_2(j2,z))};

*Level 4 (Coal-Gas/Oil-Petrol)
 rho_ENER4(j2,z)   = (1-sigma_ENER4(j2,z))/sigma_ENER4(j2,z);

 beta_ENER4(j2,z)
                 = PCEcoalgasO(j2,z)*DEcoalgasO(j2,z)**(rho_ENER4(j2,z)+1)/
                  {PCEcoalgasO(j2,z)*DEcoalgasO(j2,z)**(rho_ENER4(j2,z)+1)+
                   PCEoilpetrolO(j2,z)*DEoilpetrolO(j2,z)**(rho_ENER4(j2,z)+1)};
 B_ENER4(j2,z)
                 = DEnelecO(j2,z)
                   /{[beta_ENER4(j2,z)*DEcoalgasO(j2,z)**(-rho_ENER4(j2,z))+
                   (1-beta_ENER4(j2,z))*DEoilpetrolO(j2,z)**(-rho_ENER4(j2,z))
                   ]**(-1/rho_ENER4(j2,z))};

*Level 3 (Coal/Gas/Oil/Petrol)
 rho_ENER3(j2,z)   = (1-sigma_ENER3(j2,z))/sigma_ENER3(j2,z);

 beta_ENER3(ene3,j2,z)
                 = [PO4(ene3,j2,z)*DEO(ene3,j2,z)**(1+rho_ENER3(j2,z))]/
                   SUM[enee3,PO4(enee3,j2,z)*DEO(enee3,j2,z)
                   **(1+rho_ENER3(j2,z))];

 B_ENER3(j2,z)
                 = DEnelecO(j2,z)/{SUM[ene3,beta_ENER3(ene3,j2,z)*DEO(ene3,j2,z)
                   **(-rho_ENER3(j2,z))]**(-1/rho_ENER3(j2,z))};

*Level 2 (Elec/Non Elec)
 rho_ENER2(j2,z)   = (1-sigma_ENER2(j2,z))/sigma_ENER2(j2,z);

 beta_ENER2(j2,z)
                 = PCEelecO(j2,z)*DEelecO(j2,z)**(rho_ENER2(j2,z)+1)/
                  {PCEelecO(j2,z)*DEelecO(j2,z)**(rho_ENER2(j2,z)+1)+
                   PCEnelecO(j2,z)*DEnelecO(j2,z)**(rho_ENER2(j2,z)+1)};
 B_ENER2(j2,z)
                 = CEO(j2,z)
                   /{[beta_ENER2(j2,z)*DEelecO(j2,z)**(-rho_ENER2(j2,z))+
                   (1-beta_ENER2(j2,z))*DEnelecO(j2,z)**(-rho_ENER2(j2,z))
                   ]**(-1/rho_ENER2(j2,z))};

*Display rho_ENER2, beta_ENER2, B_ENER2, rho_ENER3, beta_ENER3, B_ENER3,
*        rho_ENER4, beta_ENER4, B_ENER4, rho_ENER5_1, beta_ENER5_1, B_ENER5_1,
*        rho_ENER5_2, beta_ENER5_2, B_ENER5_2 ;

*==============================================================================
*    4.6.3.5 Value added
*==============================================================================
 rho_VA(j,z)     = (1-sigma_VA(j,z))/sigma_VA(j,z);
 
 beta_VA(j,z)$KDCO(j,z)
                 = WCO(j,z)*LDCO(j,z)**(rho_VA(j,z)+1)/
                  {WCO(j,z)*LDCO(j,z)**(rho_VA(j,z)+1)+
                   RCO(j,z)*KDCO(j,z)**(rho_VA(j,z)+1)};
 B_VA(j,z)$KDCO(j,z)
                 = VAO(j,z)
                   /{[beta_VA(j,z)*LDCO(j,z)**(-rho_VA(j,z))+
                   (1-beta_VA(j,z))*KDCO(j,z)**(-rho_VA(j,z))
                   ]**(-1/rho_VA(j,z))};

 B_VA2(j,z,time) = B_VA(j,z);

*==============================================================================
*    Composite KLE
*==============================================================================
 KLEO(j,z)       = CEO(j,z) + VAO(j,z) ; 

 PKLEO(j,z)      = [PCEO(j,z)*CEO(j,z)+PVAO(j,z)*VAO(j,z)]/KLEO(j,z);

 rho_KLE(j,z)    = (1-sigma_KLE(j,z))/sigma_KLE(j,z);

 beta_KLE(j,z)$KLEO(j,z)
                 = PVAO(j,z)*VAO(j,z)**(rho_KLE(j,z)+1)/
                  {PVAO(j,z)*VAO(j,z)**(rho_KLE(j,z)+1)+
                   PCEO(j,z)*CEO(j,z)**(rho_KLE(j,z)+1)};

 beta_KLE2(j,z)$KLEO(j,z)
                 = 1-beta_KLE(j,z); 

 B_KLE(j,z)$KLEO(j,z)
                 = KLEO(j,z)
                   /{[beta_KLE(j,z)*VAO(j,z)**(-rho_KLE(j,z))+
                   (beta_KLE2(j,z))*CEO(j,z)**(-rho_KLE(j,z))
                   ]**(-1/rho_KLE(j,z))};

 beta_KLE2_t(j,z,time) = beta_KLE2(j,z)*AEEI_low(z,'2019');

*==============================================================================
*   4.6.4 Calibration of LES parameters
*==============================================================================
*   As the assigned values of income elasticities may not result in
*   consumption shares that add up to 1, this first step
*   adjusts the elasticities proportionally
 sigma_Y(i,z)    = sigma_Y(i,z)/{SUM[ij,sigma_Y(ij,z)*PCO(ij,z)*CO(ij,z)]
                   /CTHO(z)};
 gamma_LES(i,z)  = PCO(i,z)*CO(i,z)*sigma_Y(i,z)/CTHO(z);
 CMINO(i,z)      = CO(i,z)+gamma_LES(i,z)*CTHO(z)/{PCO(i,z)*frisch(z)};

 gamma_LES_t(i,z,time) = gamma_LES(i,z);

*==============================================================================
*  4.7 Calibration of gross domestic products
*==============================================================================
 GDP_BPO(z)      = SUM[j,PVAO(j,z)*VAO(j,z)]+TIPTO(z);
 GDP_MPO(z)      = GDP_BPO(z)+TPRCTSO(z);
 GDP_IBO(z)      = SUM[(l,j),WO(l,z)*LDO(l,j,z)]+SUM[(k,j),RO(k,j,z)*KDO(k,j,z)]
                   +TPRODNO(z)+TPRCTSO(z);                   
 GDP_FDO(z)      = SUM[i,PCO(i,z)*(CO(i,z)+CGO(i,z)+INVO(i,z))]
                  +eO(z)*SUM[(i,zj),PWXO(i,z,zj)*EXO(i,z,zj)]
                  +eO(z)*SUM[i,PWMGO(i)*MRGNO(i,z)]
                  -eO(z)*SUM[(i,zj),IMO(i,zj,z)*(PWMO(i,zj,z)
                  +SUM{ij,PWMGO(ij)*tmrg(ij,i,zj,z)})];
 GDP_BP_WO       = SUM[z,GDP_BPO(z)/eO(z)];

*==============================================================================
*  4.8 Calibration of real (volume) variables computed from price indices
*==============================================================================
 CABXO(z)        = CABO(z)/[PIXGDP_WO*eO(z)];
 
*------------------------------------------------------------------------------
* Calculation of CAB index
* If every region's CABX grows exogenously according to exogro, then the
* worldwide sum of CABX's will not be zero. If, due to redundancy, the reference
* region's CABX is left implicit, then it will not grow according to that
* region's exogro (it follows that the solution will depend on the choice of
* reference region). CABix is formed from exogro by inflating or deflating the
* updating factors of positive (SURplus) and negative (DEFicit) CABX's in such
* a way that their sum remains zero.

$ontext
Parameter CABXsur(z,time), CABXdef(z,time), bal(time), mu(time), CABix(z,time);
 CABXsur(z,time) = CABXO(z)*exogro(z,time)$[CABXO(z) gt 0];
 CABXdef(z,time) = CABXO(z)*exogro(z,time)$[CABXO(z) lt 0];
 Bal(time)       = sum(zj,CABXsur(zj,time))+sum(zj,CABXdef(zj,time));
 mu(time)        = sum(zj,CABXsur(zj,time))/
                     {sum(zj,CABXsur(zj,time))+sum(zj,abs[CABXdef(zj,time)])};
 CABXsur(z,time) = CABXsur(z,time)*{1-mu(time)*Bal(time)/sum(zj,CABXsur(zj,time))};
 CABXdef(z,time) = CABXdef(z,time)*{1-[1-mu(time)]*Bal(time)/sum(zj,CABXdef(zj,time))};
 CABix(z,time)   = [CABXsur(z,time)+CABXdef(z,time)]/CABXO(z);
$offtext
*------------------------------------------------------------------------------

 CTH_REALO(z)    = CTHO(z)/PIXCONO(z);
 G_REALO(z)      = GO(z)/PIXGVTO(z);
 GDP_BP_REALO(z) = GDP_BPO(z)/PIXGDPO(z);
 GDP_BP_W_REALO  = GDP_BP_WO/PIXGDP_WO;
 GDP_MP_REALO(z) = GDP_MPO(z)/PIXCONO(z);
 IT_REALO(z)     = ITO(z)/PIXINVO(z);

*==============================================================================
*  4.9 Parameters of the household savings function
*==============================================================================
* sh1O(z)         = SHO(z)/YDHO(z);
* sh0O(z)         = 0 ;

 sh1O(z)         = [SHO(z)+SGO(z)]/GDP_IBO(z);
 sh0O(z)         = SHO(z)-sh1O(z)*YDHO(z);

*==============================================================================
*  4.10 Re-calibration of indexed transfers and parameters
*==============================================================================
 sh0O(z)         = sh0O(z)/PIXCONO(z)**eta;
 ttdh0O(z)       = ttdh0O(z)/PIXCONO(z)**eta;

*==============================================================================
*  4.9 CO2 emission
*==============================================================================
*$INCLUDE DATA_WEB-2019.gms
$INCLUDE DATA_WEB_2024.gms

Parameter
 CO2IO(product,j,z) ktCO2 industry j sector
 CO2HO(product,z)   ktCO2 residendital sector
 CH4IO(product,j,z) tCO2eq industry j sector
 CH4HO(product,z)   tCO2eq residendital sector
 N2OIO(product,j,z) tCO2eq industry j sector
 N2OHO(product,z)   tCO2eq residendital sector
 Marinebunker_CO2(product,z) ktCO2 marine bunker
 Aviationbunker_CO2(product,z) ktCO2 aviation bunker
 Marinebunker_CH4(product,z) tCO2eq marine bunker
 Aviationbunker_CH4(product,z) tCO2eq aviation bunker
 Marinebunker_N2O(product,z) tCO2eq marine bunker
 Aviationbunker_N2O(product,z) tCO2eq aviation bunker

 GWP_CH4            GWP 100 AR5
 GWP_N2O            GWP 100 AR5
 ;
 GWP_CH4 = 28;
 GWP_N2O = 265;

 CO2IO(p_coal,j,z)        = Coal_DIO(p_coal,j,z)*41.868*GHGsEF(p_coal,'CO2EF')*1*(44/12)*0.001 ;
 CO2IO(p_oil,j,z)         = Oil_DIO(p_oil,j,z)*41.868*GHGsEF(p_oil,'CO2EF')*1*(44/12)*0.001 ;
 CO2IO(p_gas,j,z)         = Gas_DIO(p_gas,j,z)*41.868*GHGsEF(p_gas,'CO2EF')*1*(44/12)*0.001 ;
 CO2IO(p_oilproduct,j,z)  = Oilp_DIO(p_oilproduct,j,z)*41.868*GHGsEF(p_oilproduct,'CO2EF')*1*(44/12)*0.001 ;

 CO2HO(p_coal,z) = Coal_CO(p_coal,z)*41.868*GHGsEF(p_coal,'CO2EF')*1*(44/12)*0.001 ;
 CO2HO(p_gas,z) = Gas_CO(p_gas,z)*41.868*GHGsEF(p_gas,'CO2EF')*1*(44/12)*0.001 ;
 CO2HO(p_oilproduct,z) = Oilp_CO(p_oilproduct,z)*41.868*GHGsEF(p_oilproduct,'CO2EF')*1*(44/12)*0.001 ;

*==============================================================================
*  4.10 Energy
*==============================================================================
Parameter
 EEI(product,j,z)  Energy intensity by industry sector ktoe per 10 billion $
 NEI(product,j,z)  Non-Energy intensity by production sectos ktoe per 10 billion $
 EHI(product,z)    Energy intensity by household ktoe per 10 billion $

 EEO(product,j,z)  Initial Industry energy consumption in region z ktoe
 NEO(product,j,z)  Initial Industry non energy consumption in region z ktoe
 EHO(product,z)    Initial Household energy consumption in region z ktoe

 Marinebunker(product,z)
 Aviationbunker(product,z)
;

 EEI(p_coal,j,z)$(DIO('02_COAL',j,z) gt 0)               = Coal_DIO(p_coal,j,z)/DEO('02_COAL',j,z);
 EEI(p_oil,j,z)$(DIO('03_OIL',j,z) gt 0)                 = Oil_DIO(p_oil,j,z)/DEO('03_OIL',j,z);
 EEI(p_gas,j,z)$(DIO('04_GAS',j,z) gt 0)                 = Gas_DIO(p_gas,j,z)/DEO('04_GAS',j,z);
 EEI(p_oilproduct,j,z)$(DIO('10_PETROLCOAL',j,z) gt 0)   = Oilp_DIO(p_oilproduct,j,z)/DEO('10_PETROLCOAL',j,z);
 EEI(p_elecheat,j,z)$(DIO('18_ELEC',j,z) gt 0)           = Elec_DIO(p_elecheat,j,z)/DEO('18_ELEC',j,z);
 EEI(p_waste,j,z)                                        = Waste_DIO(p_waste,j,z)/XSTO(j,z);
 EEI(p_bio,j,z)                                          = Bio_DIO(p_bio,j,z)/XSTO(j,z);
 EEI(p_charcoal,j,z)                                     = Charcoal_DIO(p_charcoal,j,z)/XSTO(j,z);
 EEI(p_solar,j,z)                                        = Solar_DIO(p_solar,j,z)/XSTO(j,z);
 EEI(p_geo,j,z)                                          = Geo_DIO(p_geo,j,z)/XSTO(j,z);  

 NEI(p_coal,j,z)$(DIO('02_COAL',j,z) gt 0)               = NCoal_DIO(p_coal,j,z)/DEO('02_COAL',j,z);
 NEI(p_oil,j,z)$(DIO('03_OIL',j,z) gt 0)                 = NOil_DIO(p_oil,j,z)/DEO('03_OIL',j,z);
 NEI(p_gas,j,z)$(DIO('04_GAS',j,z) gt 0)                 = NGas_DIO(p_gas,j,z)/DEO('04_GAS',j,z);
 NEI(p_oilproduct,j,z)$(DIO('10_PETROLCOAL',j,z) gt 0)   = NOilp_DIO(p_oilproduct,j,z)/DEO('10_PETROLCOAL',j,z);

 EHI(p_coal,z)$(CO('02_COAL',z) gt 0)                    = Coal_CO(p_coal,z)/CO('02_COAL',z);
 EHI(p_oil,z)$(CO('03_OIL',z) gt 0)                      = Oil_CO(p_oil,z)/CO('03_OIL',z);
 EHI(p_gas,z)$(CO('04_GAS',z) gt 0)                      = Gas_CO(p_gas,z)/CO('04_GAS',z);
 EHI(p_oilproduct,z)$(CO('10_PETROLCOAL',z) gt 0)        = Oilp_CO(p_oilproduct,z)/CO('10_PETROLCOAL',z);
 EHI(p_elecheat,z)$(CO('18_ELEC',z) gt 0)                = Elec_CO(p_elecheat,z)/CO('18_ELEC',z);
 EHI(p_waste,z)                                          = Waste_CO(p_waste,z)/TOT_POP(z,'2019');
 EHI(p_bio,z)                                            = Bio_CO(p_bio,z)/TOT_POP(z,'2019');
 EHI(p_charcoal,z)                                       = Charcoal_CO(p_charcoal,z)/TOT_POP(z,'2019');
 EHI(p_solar,z)                                          = Solar_CO(p_solar,z)/TOT_POP(z,'2019');
 EHI(p_geo,z)                                            = Geo_CO(p_geo,z)/TOT_POP(z,'2019');

 EEO(p_coal,j,z)       = Coal_DIO(p_coal,j,z) ;
 EEO(p_gas,j,z)        = Gas_DIO(p_gas,j,z) ;
 EEO(p_oil,j,z)        = Oil_DIO(p_oil,j,z) ;
 EEO(p_oilproduct,j,z) = Oilp_DIO(p_oilproduct,j,z) ;
 EEO(p_elecheat,j,z)   = Elec_DIO(p_elecheat,j,z) ;
 EEO(p_waste,j,z)      = Waste_DIO(p_waste,j,z) ;
 EEO(p_bio,j,z)        = Bio_DIO(p_bio,j,z) ;
 EEO(p_charcoal,j,z)   = Charcoal_DIO(p_charcoal,j,z) ;
 EEO(p_solar,j,z)      = Solar_DIO(p_solar,j,z) ;
 EEO(p_geo,j,z)        = Geo_DIO(p_geo,j,z) ;

 NEO(p_coal,j,z)       = NCoal_DIO(p_coal,j,z) ;
 NEO(p_gas,j,z)        = NGas_DIO(p_gas,j,z) ;
 NEO(p_oilproduct,j,z) = NOilp_DIO(p_oilproduct,j,z) ;

 EHO(p_coal,z)         = Coal_CO(p_coal,z) ;
 EHO(p_gas,z)          = Gas_CO(p_gas,z) ;
 EHO(p_oil,z)          = Oil_CO(p_oil,z) ;
 EHO(p_oilproduct,z)   = Oilp_CO(p_oilproduct,z) ;
 EHO(p_elecheat,z)     = Elec_CO(p_elecheat,z) ;
 EHO(p_waste,z)        = Waste_CO(p_waste,z);
 EHO(p_bio,z)          = Bio_CO(p_bio,z);
 EHO(p_charcoal,z)     = Charcoal_CO(p_charcoal,z);
 EHO(p_solar,z)        = Solar_CO(p_solar,z);
 EHO(p_geo,z)          = Geo_CO(p_geo,z);
 
 Marinebunker(p_gas,z)          = gas_Marine(p_gas,z);
 Marinebunker(p_oilproduct,z)   = Oilp_Marine(p_oilproduct,z);
 Marinebunker(p_Bio,z)          = Bio_Marine(p_Bio,z);

 Aviationbunker(p_oilproduct,z) = Oilp_Aviation(p_oilproduct,z);
 
*execute_unload 'Energy_Intensity',
* EEI, NEI, EHI, EEO, NEO, EHO ;
*$exit

*==============================================================================
*  4.11 Electricity Generation Intensities
*==============================================================================
Parameter
 EGINucGWh(j,z)    Nuclear GWh per 10 billion $
 EGICoalGWh(j,z)   Coal GWh per 10 billion $ 
 EGIGasGWh(j,z)    Gas GWh per 10 billion $ 
 EGIOilGWh(j,z)    Oil GWh per 10 billion $ 
 EGIWindGWh(j,z)   Wind GWh per 10 billion $
 EGISolarGWh(j,z)  Solar GWh per 10 billion $ 
 EGIHydroGWh(j,z)  Hydro GWh per 10 billion $
 EGIWasteGWh(j,z)  Waste GWh per 10 billion $
 EGIBioGWh(j,z)    bio GWh per 10 billion $
 EGIGeoGWh(j,z)    geothermal GWh per 10 billion $
 EGIOtherGWh(j,z)  Other GWh per 10 billion $
;

 EGINucGWh('19_eNuclear',z) = ElecNucGWh('19_eNuclear',z)/DSO_J('19_eNuclear',z); 
 EGICoalGWh('20_eCoal',z)   = ElecCoalGWh('20_eCoal',z)/DSO_J('20_eCoal',z); 
 EGIGasGWh('21_eGas',z)     = ElecGasGWh('21_eGas',z)/DSO_J('21_eGas',z); 
 EGIOilGWh('22_eOil',z)     = ElecOilGWh('22_eOil',z)/DSO_J('22_eOil',z); 
 EGIWindGWh('23_eWind',z)   = ElecWindGWh('23_eWind',z)/DSO_J('23_eWind',z); 
 EGISolarGWh('24_eSolar',z) = ElecSolarGWh('24_eSolar',z)/DSO_J('24_eSolar',z); 
 EGIHydroGWh('25_eHydro',z) = ElecHydroGWh('25_eHydro',z)/DSO_J('25_eHydro',z); 
 EGIWasteGWh('26_eOther',z) = ElecWasteGWh('26_eOther',z)/DSO_J('26_eOther',z); 
 EGIBioGWh('26_eOther',z)   = ElecBioGWh('26_eOther',z)/DSO_J('26_eOther',z); 
 EGIGeoGWh('26_eOther',z)   = ElecGeoGWh('26_eOther',z)/DSO_J('26_eOther',z); 
 EGIOtherGWh('26_eOther',z) = ElecOtherGWh('26_eOther',z)/DSO_J('26_eOther',z); 

*display  EGINucGWh, EGICoalGWh, EGIGasGWh, EGIOilGWh, EGIWindGWh, EGISolarGWh, EGIHydroGWh, EGIWasteGWh, EGIBioGWh, EGIGeoGWh, EGIOtherGWh ;
*$exit

*==============================================================================
*  4.12 CO2FACTOR and CTAX
*==============================================================================
Parameters
 CO2_Energy(ene,j,z)        CO2 emissions from Energy
;

 CO2_Energy('02_COAL',j,z) = sum(p_coal,CO2IO(p_coal,j,z));
 CO2_Energy('03_OIL',j,z)  = sum(p_oil,CO2IO(p_oil,j,z));
 CO2_Energy('04_GAS',j,z)  = sum(p_gas,CO2IO(p_gas,j,z));
 CO2_Energy('10_PETROLCOAL',j,z)  = sum(p_oilproduct,CO2IO(p_oilproduct,j,z));

Parameters
 CO2FACTOR(ene,j,z)       CO2 emissions factor (tCO2 per 100$)
 CO2FACTOR2(ene,j,z,time) Time series CO2 emissions factor (tCO2 per 100$)
 CTAX0(z)                 initial Carbon tax $ per ton CO2
 TCTAX0(z)                initial Government Revenue from Carbon tax
;

 CO2FACTOR('02_COAL',j,z)$DEO('02_COAL',j,z) = [sum(p_coal,CO2IO(p_coal,j,z))/DEO('02_COAL',j,z)]*(1000/(10**8));
 CO2FACTOR('03_OIL',j,z)$DEO('03_OIL',j,z)   = [sum(p_oil,CO2IO(p_oil,j,z))/DEO('03_OIL',j,z)]*(1000/(10**8));
 CO2FACTOR('04_GAS',j,z)$DEO('04_GAS',j,z)   = [sum(p_gas,CO2IO(p_gas,j,z))/DEO('04_GAS',j,z)]*(1000/(10**8));
 CO2FACTOR('10_PETROLCOAL',j,z)$DEO('10_PETROLCOAL',j,z) = [sum(p_oilproduct,CO2IO(p_oilproduct,j,z))/DEO('10_PETROLCOAL',j,z)]*(1000/(10**8));

*PRK
 CO2FACTOR('02_COAL','01_AGRICULT','06_PRK')        = CO2FACTOR('02_COAL','01_AGRICULT','05_MNG');
 CO2FACTOR('10_PETROLCOAL','01_AGRICULT','06_PRK')  = CO2FACTOR('10_PETROLCOAL','01_AGRICULT','05_MNG');
 CO2FACTOR('02_COAL','28_LTRP','06_PRK')            = CO2FACTOR('02_COAL','28_LTRP','05_MNG');
 CO2FACTOR('02_COAL','17_OTHERIND','06_PRK')        = CO2FACTOR('02_COAL','17_OTHERIND','05_MNG');

*RUS
 CO2FACTOR('02_COAL','08_WOODPRO','04_RUS')         = CO2FACTOR('02_COAL','08_WOODPRO','10_EEU');

*LAM
 CO2FACTOR('04_GAS','02_COAL','08_LAM')             = CO2FACTOR('04_GAS','02_COAL','07_NAM');

 CO2FACTOR(ene,j,z)$(CO2FACTOR(ene,j,z) gt 10) = 10 ;
 CO2FACTOR(ene,j,z)$(CO2FACTOR(ene,j,z) lt 0) = 3.28666e-05 ;
* CO2FACTOR2(ene,j,z)$(CO2FACTOR2(ene,j,z) lt 0.1) = 0.1 ;

 CO2FACTOR2(ene,j,z,time) = CO2FACTOR(ene,j,z);

$ontext
*Petrolcoal
 CO2FACTOR('10_PETROLCOAL','10_PETROLCOAL',z) = 0;
 CO2FACTOR('02_COAL','10_PETROLCOAL',z) = CO2FACTOR('02_COAL','13_IRONSTL',z);

*KOR
* CO2FACTOR('02_COAL','10_PETROLCOAL','01_KOR') = 0;
* CO2FACTOR(ene,'20_eCoal','01_KOR') =  CO2FACTOR(ene,'20_eCoal','03_JPN');
$offtext
 
 CTAX0(z)  = 0;
 TCTAX0(z) = 0;

*==============================================================================
*  4.13 Backstop technology
*==============================================================================
 switch(i3,z,time)  = 0 ;
 penetration_rate(i3,z,time) = 0.01 ;

*==============================================================================
 elas_Hou_ENER(ene,z)     = CMINO(ene,z)/CO(ene,z)*(1-gamma_LES(ene,z)) -1 ; 
 elas_Firm_KLE(j,z)       = -1*(1-CEO(j,z)/KLEO(j,z))*sigma_KLE(j,z) ; 
 elas_Firm_ENER(ene,j,z)  = -1*(1-DEO(ene,j,z)/CEO(j,z))*sigma_ENER(j,z) ; 

Parameters
 PERMITO(j,z)       CO2 emissions 
 PERMIT_TOTALO(z)   Total CO2 emissions (billion ton)
;

 PERMITO(j,z)     = sum(ene, CO2FACTOR(ene,j,z)*DEO(ene,j,z)) ;
 PERMIT_TOTALO(z) = sum(j,PERMITO(j,z));

*$exit
*==============================================================================
* 5 Model
*==============================================================================
*  5.1 Variable declarations
*==============================================================================
VARIABLES

*==============================================================================
*   5.1.1 Volume variables
*==============================================================================
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
 LD(l,j,z,time)          Demand for type l labor by industry j in region z
 LDC(j,z,time)           Demand for composite labor by industry j in region z
 LS(l,z,time)            Supply of type l labor in region z
 MRGN(i,z,time)          Domestic production of commodity i in region z exported as international margin services
 Q(i,z,time)             Quantity demanded of composite commodity i in region z
 VA(j,z,time)            Value added of industry j in region z
 KLE(j,z,time)           KLE of industry j in region z
 XS(j,i,z,time)          Total output of industry j by commodity in region z
 XS_I(i,z,time)          Total output of commodity i in region z
 XST(j,z,time)           Total aggregate output of industry j in region z
 POWERQ(z,time)          Total power output in region z
 OBJ
 C_Conventional(i3,z,time)
 beta_X4_t(power,z,time)
 XDBS(i3,z,time)
 XDBS2(j,z,time)
 LBS(l,j,z,time)
 KBS(k,j,z,time)
 PERMIT(j,z,time)  
 PERMIT_TOTAL(z,time)
 
*==============================================================================
*   5.1.2 Price variables
*==============================================================================
 e(z,time)               Exchange rate (price of international currency in terms of region z local currency)
 IR(z,time)              Interest rate 
 P(i,z,time)             Basic price of commodity i in region z
 P2(j,i,z,time)          Basic price of industry js production of commodity i
 P3(i,j,z,time)          Basic price of power industry js production of commodity i
 P4(ene,j,z,time)        Basic energy commodity price of industry js production of commodity i
 PPOWER(z,time)          Basic price of composite power commodity in region z
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
 PIXCON2(z,time)         Consumer price index in region z
 PIXGDP(z,time)          GDP deflator in region z
 PIXGDP_W(time)          World GDP deflator
 PIXGVT(z,time)          Public expenditures price index in region z
 PIXINV(z,time)          Investment price index in region z
 PK(z,time)              Price of new capital in region z
 PL(i,z,time)            Price of local product i (excluding all taxes on products) in region z
 PM(i,zj,z,time)         Price of commodity i imported by region z from region zj (including all taxes duties and margins)
 PMT(i,z,time)           Price of composite commodity i imported by region z (including all taxes duties and margins)
 PP(j,z,time)            Unit cost of industry j in region z including taxes directly related to the use of capital and labor but excluding other taxes on production
 PVA(j,z,time)           Price of industry j value added in region z (including taxes on production directly related to the use of capital and labor)
 PKLE(j,z,time)          Price of industry j KLE in region z 
 PWM(i,zj,z,time)        World price of commodity i imported from country zj by region z (expressed in international currency)
 PWMG(i,time)            World price of margin i (expressed in international currency)
 PWX(i,z,zj,time)        World price of commodity i exported to country zj by region z (expressed in international currency)
 R(k,j,z,time)           Rental rate of type k capital in industry j of region z
 RC(j,z,time)            Rental rate of industry j composite capital in region z
 RTI(k,j,z,time)         Rental rate paid by industry j for type k capital in region z including capital taxes
 U(z,time)               User cost of capital in region z
 W(l,z,time)             Wage rate of type l labor in region z
 WC(j,z,time)            Wage rate of industry j composite labor in region z
 WTI(l,j,z,time)         Wage rate paid z by industry j for type l labor in region including payroll taxes
 CTAX(Z,time)            Carbon tax in region z
 
*==============================================================================
*   5.1.3 Nominal (value) variables
*==============================================================================
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
 TCTAX(z,time)           Government revenuse from Carbon tax
 TIC(i,z,time)           Government revenue from indirect taxes on commodity i in region z
 TICT(z,time)            Total government receipts of indirect taxes on commodities in region z
 TIK(k,j,z,time)         Government revenue from taxes on type k capital used by industry j in region z
 TIKT(z,time)            Total government revenue from from taxes on capital in region z
 TIM(i,zj,z,time)        Government revenue from duties on commodity i imported from region zj by region z
 TIMT(z,time)            Total government revenue from import duties in region z
 TIP(j,z,time)           Government revenue from taxes on industry j production in region z (excluding taxes directly related to the use of capital and labor)
 TIPT(z,time)            Total government revenue from production taxes in region z (excluding taxes directly related to the use of capital and labor)
 TIW(l,j,z,time)         Government revenue from payroll taxes on type l labor in industry j of region z
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
 CLBS(i3,z,time)
 CKBS(i3,z,time)
 MARKUP(i3,z,time)

*==============================================================================
*   5.1.4 Rates and intercepts
*==============================================================================
 phi(z,time)             Scale variable (allocation of investment to industries)
 sh0(z,time)             Intercept (household savings)
 sh1(z,time)             Slope (household savings)
 ttdh0(z,time)           Intercept (household income tax)
 ttdh1(z,time)           Slope (household income tax)
 ttic(i,z,time)          Tax rate on commodity i
 ttik(k,j,z,time)        Tax rate on capital k used in industry j
 ttim(i,zj,z,time)       Rate of taxes and duties on imports of commodity i from country zj
 ttip(j,z,time)          Tax rate on the production of industry j
 ttiw(l,j,z,time)        Tax rate on type l worker compensation in industry j
 ttix(i,z,zj,time)       Export tax rate on exported commodity i

*==============================================================================
*   5.1.5 Other variables
*==============================================================================
 A_VA(z,time)            Multifactor productivity
 LEON(z,time)            Excess supply on the last market in region z
 OBJ                     Objective variable
;

*==============================================================================
*  5.2 Equation declarations
*==============================================================================
EQUATIONS
 EQ1(j,z,time)           Leontief - demand for value added
 EQ1_1(j,z,time)         Leontief - demand for KLE(Industries) 
 EQ2(j,z,time)           Leontief - demand for intermediate consumption
 EQ2_1(j,z,time)         Leontief - demand for intermediate energy consumption(Energy Industries)
 EQ3(j,z,time)           CES - combination of labor and capital
 EQ3_1(j,z,time)         CES - combination of composite energy and value added
 EQ4(j,z,time)           CES - demand for composite labor
 EQ4_1(j,z,time)         Demand for value added relative to composite energy
 EQ5(j,z,time)           CES between labor categories
 EQ6(l,j,z,time)         Demand for labor 
 EQ7(j,z,time)           CES between capital categories
 EQ8(k,j,z,time)         Demand for capital
 EQ9(i,j,z,time)         Leontief - demand for commodity i by sector j
 EQ9_1(ene,j3,z,time)
*Simple Nesting
* EQ9_2(ene,j2,z,time)

*Nested CES
 EQ9_2(j2,z,time)
 EQ9_3(j2,z,time)
 EQ9_4(j2,z,time)
 EQ9_5(j2,z,time)
 EQ9_6(ene2,j2,z,time) 
 EQ9_7(ene5,j2,z,time)
 EQ9_8(ene6,j2,z,time)
 
 EQ10(z,time)            Household total income
 EQ11(z,time)            Household labor income
 EQ12(z,time)            Household capital income
 EQ13(z,time)            Household disposable income
 EQ14(z,time)            Household consumption budget
 CALEQ1(z,time)          Aggregate domestic savings
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
 EQ25(z,time)            Household h income taxes
 EQ26(l,j,z,time)        Government receipts of indirect taxes on wages
 EQ27(k,j,z,time)        Government receipts of indirect taxes on capital
 EQ28(j,z,time)          Government receipts of indirect taxes on production of industry j
 EQ29(i,z,time)          Government receipts of indirect taxes on commodity i
 EQ30(i,zj,z,time)       Government receipts of indirect taxes on imports of commodity i
 EQ31(i,z,zj,time)       Government receipts of indirect taxes on exports of commodity i
 EQ32(z,time)            Government savings
 EQ33(z,time)            Rest of the world total income
 EQ34(z,time)            Rest of the world savings
 EQ35(z,time)            Equivalence between current account balance and savings
 EQ36(i,z,time)          Household consumption of commodity i
 EQ37(i,z,time)          Final demand of commodity i for investment purposes
 EQ38(i,z,time)          Public final consumption of commodity i
 CALEQ2(z,time)          Current government expenditures on goods and services
 EQ39(i,z,time)          Total intermediate consumption of commodity i
 EQ39_1(i,z,time)        Total intermediate consumption of commodity i
 EQ39_2(i,z,time)        Total intermediate consumption of commodity i
* EQ40_1(j,z)            CET between different commodities produced by industry j
* EQ40_2(j,i,z)          Industry j production of commodity i (CET)
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
 EQ49(j,z,time)          Producer price in energy industries j after production taxes
 EQ49_1(j,z,time)        Producer price in industry j after production taxes
* EQ49_2(j,i,z)          Total producer price is equal to P if there is only one product
* EQ49_3(j,i,z)          Basic price of industry j's production of commodity i
 EQ50(j,z,time)          Basic price of industry j production
 EQ51(j,z,time)          Price index of industry j intermediate consumption
*Simple Nesting
* EQ51_1(j,z,time)
*Nested CES
 EQ51_1(j2,z,time)
 EQ51_2(j3,z,time)
 EQ51_3(j2,z,time)
 EQ51_3(j2,z,time)
 EQ51_4(j2,z,time)
 EQ51_5(j2,z,time)
 EQ51_6(j2,z,time)
 
 EQ52(j,z,time)          Value added price
 EQ52_1(j,z,time)        KLE price
* EQ53(j,z,time)         Price of composite labor in industry j 
 EQ54(l,j,z,time)        Wages including taxes
 EQ54_1(ene,j,z,time)    energy commodity prices
*EQ55(j,z,time)          Price of composite capital in industry j 
 EQ56(k,j,z,time)          Rental rate including taxes
* EQ57(k,j,z,time)       Rate of remuneration of capital k (capital mobile)
 EQ58(i,z,time)          Producer price is a weighted sum of PE and PL
* EQ59(i,z)              Price of composite export i (redundant)
 EQ60(i,z,zj,time)       Border price of exported commodity i
 EQ61(i,z,time)          Price of local product i (including all taxes and margins)
 EQ62(i,zj,z,time)       Price of imported commodity i (including all taxes and duties)
* EQ63(i,z)              Price of composite import i (redundant)
 EQ64(i,z,time)          Consumer price is a weighted sum of PD and PM
* EQ65(z,time)           Aggregate price of capital
 EQ66(z,time)            GDP deflator (Fischer index)
 EQ67(time)              World GDP deflator (Fischer index)
 EQ68(z,time)            Consumer price index (Laspeyres)
 EQ69(z,time)            Investment price index (derived from investment function)
 EQ70(z,time)            Public expenditure price index
 EQ71(i1,z,time)         Domestic absorbtion
 EQ71_2(i3,z,time)       Domestic absorbtion
 EQ72(l,z,time)          Labor supply equals labor demand
 EQ73(k,z,time)          Capital supply equals capital demand
 EQ74(z,time)            Total investment equals total savings
 EQ75(z,time)            Depreciation
 EQ76(i,z,time)          Supply of domestic production equals demand
 EQ77(i,z,zj,time)       Exports supply equals imports demand
 EQ78(i,z,zj,time)       Exports price equals imports price
 EQ79(i,time)            World demand for margins equals world supply
* EQ80                   Sum of foreign savings equals zero (redundant)
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
 EQ93                    fictitious OBJ. fuction
 WALRAS(z,time)          Walras law verification
* EQB_1(i,z)             Top Nest - CES function Aggregated acitivty
* EQB_2(j,i,z)           Top Nest - CES function Aggregated acitivty
* EQB_3(j,i,z)           Total producer price is equal to P if there is only one product
* EQB_4(j,i,z)           Basic price of industry j's production of commodity i
* EQB_5(j,i,z)           Supply of exports for compsite activity
 EQA_1(z,time)           Top Nest - Leontief function Aggregated-Electricity
 EQA_2(Z,time)           Top Nest - Leontief function Aggregated-Electricity
 EQA_3(z,time)           Second Nest - CES function - Aggregated-Electricity
 EQA_4(power,i,z,time)   Second Nest - CES function - Aggregated-Electricity
 EQB_1(i2,z,time)        Industry j production of commodity i (CES)
 EQB_3(j,i,z,time)       Total producer price is equal to P if there is only one product
 EQB_4(j,i,z,time)       Basic price of industry js production of commodity i
 EQB_5(j,i,z,time)       Supply of exports for compsite activity
 EQ94(z,time)            Total investment expenditure constraint
 EQ95(z,time)            Aggregate price of capital
 EQ96(k,bus,z,time)      Investment demand by industry
 CALEQ3(k,pub,z,time)    Public investment demand
 EQ97a(z,time)           Interest rate (weighted average rate of return on capital)
 EQ97b(z,time)           User cost of capital
 EQ98(i3,z,time)
 EQ99(i3,z,time)
 EQ100(j,z,time)
 EQ101(l,j,z,time)
 EQ102(k,j,z,time)
 EQ103(i3,z,time)
 EQ104(i3,z,time)
 EQ105(i3,z,time)
* EQ106(ene2,j,z,time)
 EQ107(j,z,time)
 EQ108(z,time)
;

*==============================================================================
*  5.3 Equations
*==============================================================================
*   5.3.1 Production
*==============================================================================
 EQ1(j3,z,t)..     VA(j3,z,t) =e= v(j3,z)*XST(j3,z,t);

 EQ1_1(j2,z,t)..   KLE(j2,z,t) =e= v2(j2,z)*XST(j2,z,t);

 EQ2(j,z,t)..      CI(j,z,t) =e= io(j,z)*XST(j,z,t);
 
 EQ2_1(j3,z,t)..   CE(j3,z,t) =e= io2_t(j3,z,t)*XST(j3,z,t);

 EQ3(j,z,t)..      VA(j,z,t) =e= A_VA(z,t)*B_VA2(j,z,t)*{
                    [beta_VA(j,z)*LDC(j,z,t)**(-rho_VA(j,z))]$LDCO(j,z)
                   +[(1-beta_VA(j,z))*KDC(j,z,t)**(-rho_VA(j,z))]$KDCO(j,z)
                                                   }**(-1/rho_VA(j,z));

 EQ3_1(j2,z,t)..   KLE(j2,z,t) =e= B_KLE(j2,z)*{
                    [(1-beta_KLE2_t(j2,z,t))*VA(j2,z,t)**(-rho_KLE(j2,z))]$VAO(j2,z)
                   +[(beta_KLE2_t(j2,z,t))*CE(j2,z,t)**(-rho_KLE(j2,z))]$CEO(j2,z)
                                                   }**(-1/rho_KLE(j2,z));

 EQ4_1(j2,z,t)$[VAO(j2,z) and CEO(j2,z)]..
                 VA(j2,z,t) =e= {[(1-beta_KLE2_t(j2,z,t))/(beta_KLE2_t(j2,z,t))]
                              *[PCE(j2,z,t)/PVA(j2,z,t)]}**sigma_KLE(j2,z)*CE(j2,z,t);

 EQ4(j,z,t)$[LDCO(j,z) and KDCO(j,z)]..
                 LDC(j,z,t) =e= {[beta_VA(j,z)/(1-beta_VA(j,z))]
                              *[RC(j,z,t)/WC(j,z,t)]}**sigma_VA(j,z)*KDC(j,z,t);

 EQ5(j,z,t)$LDCO(j,z)..
                 LDC(j,z,t) =e= B_LD(j,z)*SUM[l$LDO(l,j,z),beta_LD(l,j,z)
                                *LD(l,j,z,t)**(-rho_LD(j,z))]**(-1/rho_LD(j,z));

 EQ6(l,j,z,t)$LDO(l,j,z)..
                 LD(l,j,z,t) =e= [beta_LD(l,j,z)*WC(j,z,t)/WTI(l,j,z,t)]
                               **sigma_LD(j,z)*B_LD(j,z)**(sigma_LD(j,z)-1)
                               *LDC(j,z,t);
                
 EQ7(j,z,t)$KDCO(j,z)..
                 KDC(j,z,t) =e= B_KD2(j,z,t)*SUM[k$KDO(k,j,z),beta_KD(k,j,z)
                                *(KD(k,j,z,t)+KBS(k,j,z,t))**(-rho_KD(j,z))]**(-1/rho_KD(j,z));
                 
 EQ8(k,j,z,t)$KDO(k,j,z)..
                 KD(k,j,z,t) =e= [beta_KD(k,j,z)*RC(j,z,t)/RTI(k,j,z,t)]
                                 **sigma_KD(j,z)*B_KD(j,z)**(sigma_KD(j,z)-1)
                                 *KDC(j,z,t);

 EQ9(nene,j,z,t)..    DI(nene,j,z,t) =e= aij(nene,j,z)*CI(j,z,t) ;

 EQ9_1(ene,j3,z,t)..  DE(ene,j3,z,t) =e= aij2_t(ene,j3,z,t)*CE(j3,z,t) ;

*=============================Simple Nesting=========================================
* EQ9_2(ene,j2,z,t)..  DE(ene,j2,z,t) =e= [beta_ENER_t(ene,j2,z,t)*PCE(j2,z,t)/((P4(ene,j2,z,t)+P4(ene,j2,z,t)*CTAX(z,t)*CO2FACTOR2(ene,j2,z,t)))]
*                                   **sigma_ENER(j2,z)*B_ENER_t(j2,z,t)**(sigma_ENER(j2,z)-1)
*                                   *CE(j2,z,t);
                                  
*=============================Leontief===========================================
* EQ9_2(j2,z,t)..       DEelec(j2,z,t)  =e= Share_Elec(j2,z)*CE(j2,z,t);

* EQ9_3(j2,z,t)..       DEnelec(j2,z,t) =e= (1-Share_Elec(j2,z))*CE(j2,z,t);

* EQ9_4(ene3,j2,z,t)..  DE(ene3,j2,z,t) =e= Share_nElec(ene3,j2,z)*DEnelec(j2,z,t);

* EQ9_5(ene2,j2,z,t)..  DE(ene2,j2,z,t) =e= DEelec(j2,z,t) ;

*=============================Level 1, 2=======================================
* EQ9_2(j2,z,t)..       CE(j2,z,t)  =e= B_ENER2(j2,z)*{[(beta_ENER2(j2,z))*DEelec(j2,z,t)**(-rho_ENER2(j2,z))]
*                                                     +[(1-beta_ENER2(j2,z))*DEnelec(j2,z,t)**(-rho_ENER2(j2,z))]
*                                                   }**(-1/rho_ENER2(j2,z));

* EQ9_3(j2,z,t)..       DEelec(j2,z,t) =e= {[(beta_ENER2(j2,z))/(1-beta_ENER2(j2,z))]
*                                        *[PCEnelec(j2,z,t)/PCEelec(j2,z,t)]}**sigma_ENER2(j2,z)*DEnelec(j2,z,t);

* EQ9_4(ene3,j2,z,t)..  DE(ene3,j2,z,t) =e= [beta_ENER3(ene3,j2,z)*PCEnelec(j2,z,t)/P4(ene3,j2,z,t)]
*                                            **sigma_ENER3(j2,z)*B_ENER3(j2,z)**(sigma_ENER3(j2,z)-1)
*                                            *DEnelec(j2,z,t);

* EQ9_5(ene2,j2,z,t)..  DE(ene2,j2,z,t) =e= DEelec(j2,z,t) ;    

*=============================Level 1, 2, 3 (Leonteif) =======================================
* EQ9_2(j2,z,t)..        DEelec(j2,z,t)  =e= Share_Elec(j2,z)*CE(j2,z,t);

* EQ9_3(j2,z,t)..        DEnelec(j2,z,t) =e= (1-Share_Elec(j2,z))*CE(j2,z,t);

* EQ9_4(j2,z,t)..        DEcoalgas(j2,z,t) =e= Share_coalgas2(j2,z)*DEnelec(j2,z,t);

* EQ9_5(j2,z,t)..        DEoilpetrol(j2,z,t) =e= (1-Share_coalgas2(j2,z))*DEnelec(j2,z,t);

* EQ9_6(ene2,j2,z,t)..   DE(ene2,j2,z,t) =e= DEelec(j2,z,t) ;  
 
* EQ9_7(ene5,j2,z,t)..   DE(ene5,j2,z,t) =e= Share_coalgas(ene5,j2,z)*DEcoalgas(j2,z,t);

* EQ9_8(ene6,j2,z,t)..   DE(ene6,j2,z,t) =e= Share_oilpetrol(ene6,j2,z)*DEoilpetrol(j2,z,t);

*=============================Level 1, 2, 3 (CES) =======================================
 EQ9_2(j2,z,t)..        CE(j2,z,t)  =e= B_ENER2(j2,z)*{[(beta_ENER2(j2,z))*DEelec(j2,z,t)**(-rho_ENER2(j2,z))]
                                           +[(1-beta_ENER2(j2,z))*DEnelec(j2,z,t)**(-rho_ENER2(j2,z))]
                                            }**(-1/rho_ENER2(j2,z));

 EQ9_3(j2,z,t)..        DEnelec(j2,z,t) =e= {[(1-beta_ENER2(j2,z))/(beta_ENER2(j2,z))]
                                        *[PCEelec(j2,z,t)/PCEnelec(j2,z,t)]}**sigma_ENER2(j2,z)*DEelec(j2,z,t);

 EQ9_4(j2,z,t)..        DEnelec(j2,z,t) =e= B_ENER4(j2,z)*{[(beta_ENER4(j2,z))*DEcoalgas(j2,z,t)**(-rho_ENER4(j2,z))]
                                           +[(1-beta_ENER4(j2,z))*DEoilpetrol(j2,z,t)**(-rho_ENER4(j2,z))]
                                            }**(-1/rho_ENER4(j2,z));

 EQ9_5(j2,z,t)..        DEoilpetrol(j2,z,t) =e= {[(1-beta_ENER4(j2,z))/(beta_ENER4(j2,z))]
                                       *[PCEcoalgas(j2,z,t)/PCEoilpetrol(j2,z,t)]}**sigma_ENER4(j2,z)*DEcoalgas(j2,z,t);
                                            
 EQ9_6(ene2,j2,z,t)..   DE(ene2,j2,z,t) =e= DEelec(j2,z,t) ;  
 
 EQ9_7(ene5,j2,z,t)..   DE(ene5,j2,z,t) =e= [beta_ENER5_1(ene5,j2,z)*PCEcoalgas(j2,z,t)/(P4(ene5,j2,z,t)+P4(ene5,j2,z,t)*CTAX(z,t)*CO2FACTOR2(ene5,j2,z,t))]
                                            **sigma_ENER5_1(j2,z)*B_ENER5_1(j2,z)**(sigma_ENER5_1(j2,z)-1)
                                            *DEcoalgas(j2,z,t);

 EQ9_8(ene6,j2,z,t)..   DE(ene6,j2,z,t) =e= [beta_ENER5_2(ene6,j2,z)*PCEoilpetrol(j2,z,t)/(P4(ene6,j2,z,t)+P4(ene6,j2,z,t)*CTAX(z,t)*CO2FACTOR2(ene6,j2,z,t))]
                                            **sigma_ENER5_2(j2,z)*B_ENER5_2(j2,z)**(sigma_ENER5_2(j2,z)-1)
                                            *DEoilpetrol(j2,z,t);

*==============================================================================
*   5.3.2 Income and savings
*==============================================================================
*    5.3.2.1 Households
*==============================================================================
 EQ10(z,t)..       YH(z,t) =e= YHL(z,t)+YHK(z,t)+TCTAX(z,t);
* EQ10(z,t)..       YH(z,t) =e= YHL(z,t)+YHK(z,t);

 EQ11(z,t)..       YHL(z,t) =e= SUM[(l,j)$LDO(l,j,z),W(l,z,t)*(LD(l,j,z,t)+LBS(l,j,z,t))];

 EQ12(z,t)..       YHK(z,t) =e= SUM[(k,j)$KDO(k,j,z),R(k,j,z,t)*(KD(k,j,z,t)+KBS(k,j,z,t))];

 EQ13(z,t)..       YDH(z,t) =e= YH(z,t)-TDH(z,t);

 EQ14(z,t)..       CTH(z,t) =e= YDH(z,t)-SH(z,t);

 EQ15(z,t)..       SH(z,t) =e= PIXCON(z,t)**eta*sh0(z,t)+sh1(z,t)*YDH(z,t);

 CALEQ1(z,t)..     SH(z,t)+SG(z,t) =e= sh1(z,t)*GDP_IB(z,t); 

*==============================================================================
*    5.3.2.2 Government
*==============================================================================
 EQ16(z,t)..       YG(z,t) =e= TDH(z,t)+TPRODN(z,t)+TPRCTS(z,t)+TCTAX(z,t);

 EQ16_1(z,t)..    TCTAX(z,t) =e= sum((ene,j), PC(ene,z,t)*CTAX(z,t)*CO2FACTOR2(ene,j,z,t)*DE(ene,j,z,t));

 EQ17(z,t)..       TPRODN(z,t) =e= TIWT(z,t)+TIKT(z,t)+TIPT(z,t);

 EQ18(z,t)..       TIWT(z,t) =e= SUM[(l,j)$LDO(l,j,z),TIW(l,j,z,t)];

 EQ19(z,t)..       TIKT(z,t) =e= SUM[(k,j)$KDO(k,j,z),TIK(k,j,z,t)];

 EQ20(z,t)..       TIPT(z,t) =e= SUM[j,TIP(j,z,t)];

 EQ21(z,t)..       TPRCTS(z,t) =e= TICT(z,t)+TIMT(z,t)+TIXT(z,t);

 EQ22(z,t)..       TICT(z,t) =e= SUM[i,TIC(i,z,t)];

 EQ23(z,t)..       TIMT(z,t) =e= SUM[(i,zj)$IMO(i,zj,z),TIM(i,zj,z,t)];

 EQ24(z,t)..       TIXT(z,t) =e= SUM[(i,zj)$EXO(i,z,zj),TIX(i,z,zj,t)];

 EQ25(z,t)..       TDH(z,t) =e= PIXCON(z,t)**eta*ttdh0(z,t)+ttdh1(z,t)*YH(z,t);

 EQ26(l,j,z,t)$LDO(l,j,z)..
                       TIW(l,j,z,t) =e= ttiw(l,j,z,t)*W(l,z,t)*(LD(l,j,z,t)+LBS(l,j,z,t));

 EQ27(k,j,z,t)$KDO(k,j,z)..
                       TIK(k,j,z,t) =e= ttik(k,j,z,t)*R(k,j,z,t)*(KD(k,j,z,t)+KBS(k,j,z,t));

 EQ28(j,z,t)..     TIP(j,z,t) =e= ttip(j,z,t)*PP(j,z,t)*XST(j,z,t);

 EQ29(i,z,t)..     TIC(i,z,t) =e= ttic(i,z,t)*{[PL(i,z,t)*DD(i,z,t)]$DDO(i,z)
                 +[SUM[zj$IMO(i,zj,z),(1+ttim(i,zj,z,t))*IM(i,zj,z,t)*e(z,t)
                  *(PWM(i,zj,z,t)+SUM(ij,PWMG(ij,t)*tmrg(ij,i,zj,z)))]]};

 EQ30(i,zj,z,t)$IMO(i,zj,z)..
                 TIM(i,zj,z,t) =e= ttim(i,zj,z,t)*IM(i,zj,z,t)*e(z,t)*
                                   (PWM(i,zj,z,t)+SUM[ij,PWMG(ij,t)
                                   *tmrg(ij,i,zj,z)]);

 EQ31(i,z,zj,t)$EXO(i,z,zj)..
                 TIX(i,z,zj,t) =e= ttix(i,z,zj,t)*PE(i,z,zj,t)*EX(i,z,zj,t);

 EQ32(z,t)..       SG(z,t) =e= YG(z,t)-G(z,t);

*==============================================================================
*    5.3.2.4 Rest of the world
*==============================================================================
 EQ33(z,t)..       YROW(z,t) =e= e(z,t)*SUM{(i,zj)$IMO(i,zj,z),IM(i,zj,z,t)*
                           [PWM(i,zj,z,t)+SUM(ij,PWMG(ij,t)*tmrg(ij,i,zj,z))]};

 EQ34(z,t)..       SROW(z,t) =e= YROW(z,t)-e(z,t)*SUM[(i,zj)$EXO(i,z,zj),
                               EX(i,z,zj,t)*PWX(i,z,zj,t)]-e(z,t)
                               *SUM[i$MRGNO(i,z),MRGN(i,z,t)*PWMG(i,t)];

 EQ35(z,t)..       SROW(z,t) =e= -CAB(z,t);

*==============================================================================
*   5.3.3 Demand
*==============================================================================
* EQ36(i,z,t)..     PC(i,z,t)*C(i,z,t) =e= PC(i,z,t)*CMIN(i,z,t)+gamma_LES(i,z)
 EQ36(i,z,t)..     PC(i,z,t)*C(i,z,t) =e= PC(i,z,t)*CMIN(i,z,t)+gamma_LES_t(i,z,t)
                                 *{CTH(z,t)-SUM[ij,PC(ij,z,t)*CMIN(ij,z,t)]};

 EQ37(i,z,t)..     PC(i,z,t)*INV(i,z,t) =e= gamma_INV(i,z)*IT(z,t);

 EQ38(i,z,t)..     PC(i,z,t)*CG(i,z,t) =e= gamma_GVT(i,z)*G(z,t);

 CALEQ2(z,t)..     G(z,t) =e= GO(z)*GDP_BP(z,t)/GDP_BPO(z);

 EQ39(nene,z,t)..    DIT(nene,z,t) =e= SUM[j,DI(nene,j,z,t)];
 
 EQ39_1(ene1,z,t)..  DIT(ene1,z,t) =e= SUM[j,DE(ene1,j,z,t)];

 EQ39_2(ene2,z,t)..  DIT(ene2,z,t) =e= SUM[j,DE(ene2,j,z,t)];

*==============================================================================
*   5.3.4 International trade
*==============================================================================
$ONTEXT
 EQB_1(i,z)..    XS_I(i,z) =e= B_X3(i,z)*SUM[j$XSO(j,i,z),beta_X3(j,i,z)
                                *XS(j,i,z)**(-rho_X3(i,z))]**(-1/rho_X3(i,z));

 EQB_2(j,i,z)${DSO(j,i,z) and [DSO(j,i,z) ne DSO_I(i,z)]}..
                 XS(j,i,z) =e= XS_I(i,z)/B_X3(i,z)**(1-sigma_X3(i,z))*
                               [beta_X3(j,i,z)*PI(i,z)/P2(j,i,z)]
                               **sigma_X3(i,z);

 EQB_3(j,i,z)${DSO(j,i,z)}..   P2(j,i,z) =e= PT(j,z);

 EQB_4(j,i,z)$DSO(j,i,z)..
                 P2(j,i,z)*XS(j,i,z) =e= [PET(i,z)*EXTT(j,i,z)]$EXTTO(j,i,z)
                                        +[e(z)*MRGN(i,z)*PWMG(i)]$MRGNO(i,z)
                                        +[PL(i,z)*DS(j,i,z)]$DSO(j,i,z);

 EQB_5(j,i,z)$DSO(j,i,z)..  EXTT(j,i,z)  =e= theta2(j,i,z)*EXT(i,z);
$OFFTEXT

*[Top Nest - Leontief function]
 EQA_1(z,t)..  XS('18_TnD','18_ELEC',z,t) =e= TnDShare(z)*XS_I('18_ELEC',z,t);
 EQA_2(z,t)..  XS_I('18_ELEC',z,t) =e= XS('18_TnD','18_ELEC',z,t) + POWERQ(z,t);


*[Second Nest - CES function]
* EQA_3(z,t)..    POWERQ(z,t) =e= B_X4(z)*SUM[POWER, beta_X4(power,z)
*                                *XS(POWER,'18_ELEC',z,t)**(-rho_X4(z))]**(-1/rho_X4(z));
 EQA_3(z,t)..    POWERQ(z,t) =e= B_X4(z)*SUM[POWER, beta_X4_t(power,z,t)
                                *XS(POWER,'18_ELEC',z,t)**(-rho_X4(z))]**(-1/rho_X4(z));
*beta_X4_t(power2,z,time)

* EQA_4(power,'18_ELEC',z,t)..  XS(POWER,'18_ELEC',z,t) =e= POWERQ(z,t)/B_X4(z)**(1-sigma_X4(z))*
*                               [beta_X4(power,z)*PPOWER(z,t)/P2(POWER,'18_ELEC',z,t)]
*                               **sigma_X4(z);

 EQA_4(power,'18_ELEC',z,t)..  XS(POWER,'18_ELEC',z,t) =e= POWERQ(z,t)/B_X4(z)**(1-sigma_X4(z))*
                               [beta_X4_t(power,z,t)*PPOWER(z,t)/P2(POWER,'18_ELEC',z,t)]
                               **sigma_X4(z);

* exclude electiricity
 EQB_1(i2,z,t)..    XS_I(i2,z,t) =e= B_X3(i2,z)*SUM[j$XSO(j,i2,z),beta_X3(j,i2,z)
                                *XS(j,i2,z,t)**(-rho_X3(i2,z))]**(-1/rho_X3(i2,z));


 EQB_3(j,i,z,t)${DSO(j,i,z)}..   P2(j,i,z,t) =e= PT(j,z,t);

 EQB_4(j,i,z,t)$DSO(j,i,z)..
                 P2(j,i,z,t)*XS(j,i,z,t) =e= [PET(i,z,t)*EXTT(j,i,z,t)]$EXTTO(j,i,z)
                                        +[e(z,t)*MRGN(i,z,t)*PWMG(i,t)]$MRGNO(i,z)
                                        +[PL(i,z,t)*DS(j,i,z,t)]$DSO(j,i,z);

 EQB_5(j,i,z,t)$DSO(j,i,z)..  EXTT(j,i,z,t)  =e= theta2(j,i,z)*EXT(i,z,t);

 EQ40_3(i,z,t)..   DS_I(i,z,t) =e= sum(j,DS(j,i,z,t)$DSO(j,i,z));

 EQ40_4(j,z,t)..   XST(j,z,t)  =e= sum(i,XS(j,i,z,t)$XSO(j,i,z));

 EQ40_5(i,z,t)..   XS_I(i,z,t) =e= B_X1(i,z)*{
                 [beta_EX_X1(i,z)*EXT(i,z,t)**rho_X1(i,z)]$EXTO(i,z)
                +[beta_D_X1(i,z)*DS_I(i,z,t)**rho_X1(i,z)]$DSO_I(i,z)
                +[(1-beta_EX_X1(i,z)-beta_D_X1(i,z))*MRGN(i,z,t)**rho_X1(i,z)]$MRGNO(i,z)
                                          }**(1/rho_X1(i,z));

 EQ41(i,z,t)$[EXTO(i,z) and DSO_I(i,z)]..
                 EXT(i,z,t) =e= {[beta_D_X1(i,z)/beta_EX_X1(i,z)]*[PET(i,z,t)/PL(i,z,t)]}
                              **sigma_X1(i,z)*DS_I(i,z,t);

 EQ42(i,z,t)$[MRGNO(i,z) and DSO_I(i,z)]..
                 MRGN(i,z,t) =e= {[beta_D_X1(i,z)/(1-beta_EX_X1(i,z)
                                 -beta_D_X1(i,z))]*[e(z,t)*PWMG(i,t)/PL(i,z,t)]}
                                 **sigma_X1(i,z)*DS_I(i,z,t);

 EQ43(i,z,t)$EXTO(i,z)..
                 EXT(i,z,t) =e= B_X2(i,z)*SUM[zj$EXO(i,z,zj),beta_X2(i,z,zj)
                                *EX(i,z,zj,t)**rho_X2(i,z)]**(1/rho_X2(i,z));

 EQ44(i,z,zj,t)$EXO(i,z,zj)..
                 EX(i,z,zj,t) =e= EXT(i,z,t)/B_X2(i,z)**(1+sigma_X2(i,z))*
                                  [PE(i,z,zj,t)/(beta_X2(i,z,zj)*PET(i,z,t))]
                                  **sigma_X2(i,z);

 EQ45(i,z,t)..     Q(i,z,t) =e= B_M1(i,z)*{
                    [beta_M1(i,z)*IMT(i,z,t)**(-rho_M1(i,z))]$IMTO(i,z)
                   +[(1-beta_M1(i,z))*DD(i,z,t)**(-rho_M1(i,z))]$DDO(i,z)
                                        }**(-1/rho_M1(i,z));

 EQ46(i,z,t)$[IMTO(i,z) and DDO(i,z)]..
                 IMT(i,z,t) =e= {[beta_M1(i,z)/(1-beta_M1(i,z))]*[PD(i,z,t)
                                /PMT(i,z,t)]}**sigma_m1(i,z)*DD(i,z,t);

 EQ47(i,z,t)$IMTO(i,z)..
                 IMT(i,z,t) =e= B_M2(i,z)*SUM[zj$IMO(i,zj,z),beta_M2(i,zj,z)*
                                IM(i,zj,z,t)**(-rho_M2(i,z))]**(-1/rho_M2(i,z));

 EQ48(i,zj,z,t)$IMO(i,zj,z)..
                 IM(i,zj,z,t) =e= IMT(i,z,t)/B_M2(i,z)**(1-sigma_M2(i,z))*
                                  [beta_M2(i,zj,z)*PMT(i,z,t)/PM(i,zj,z,t)]
                                  **sigma_M2(i,z);

*==============================================================================
*   5.3.5 Prices
*==============================================================================
* EQ49(j2,z,t)..     PP(j2,z,t)*XST(j2,z,t) =e= PKLE(j2,z,t)*KLE(j2,z,t)+PCI(j2,z,t)*CI(j2,z,t)+AbateCost(j2,z,t);
 EQ49(j2,z,t)..     PP(j2,z,t)*XST(j2,z,t) =e= PKLE(j2,z,t)*KLE(j2,z,t)+PCI(j2,z,t)*CI(j2,z,t);

* EQ49_1(j3,z,t)..   PP(j3,z,t)*XST(j3,z,t) =e= PVA(j3,z,t)*VA(j3,z,t)+PCI(j3,z,t)*CI(j3,z,t)+PCE(j3,z,t)*CE(j3,z,t)+AbateCost(j3,z,t);
 EQ49_1(j3,z,t)..   PP(j3,z,t)*XST(j3,z,t) =e= PVA(j3,z,t)*VA(j3,z,t)+PCI(j3,z,t)*CI(j3,z,t)+PCE(j3,z,t)*CE(j3,z,t);

 EQ50(j,z,t)..      PT(j,z,t) =e= (1+ttip(j,z,t))*PP(j,z,t);
* EQ50(j,z,t)..      PT(j,z,t) =e= (1+ttip(j,z,t)-TIP_Share(j,z,t)*TCTAX(z,t)/XST(j,z,t))*PP(j,z,t);

 EQ51(j,z,t)..      PCI(j,z,t)*CI(j,z,t) =e= SUM[nene,PC(nene,z,t)*DI(nene,j,z,t)];

*Simple Nesting
* EQ51_1(j,z,t)..    PCE(j,z,t)*CE(j,z,t) =e= SUM[ene,PC(ene,z,t)*DE(ene,j,z,t) + PC(ene,z,t)*CTAX(z,t)*CO2FACTOR2(ene,j,z,t)*DE(ene,j,z,t)];

*============================== Level 1-3 ========================================
* EQ51_1(j2,z,t)..   PCE(j2,z,t)*CE(j2,z,t) =e= [PCEelec(j2,z,t)*DEelec(j2,z,t)+PCEnelec(j2,z,t)*DEnelec(j2,z,t)];

* EQ51_12(j3,z,t)..  PCE(j3,z,t)*CE(j3,z,t) =e= SUM[ene,PC(ene,z,t)*DE(ene,j3,z,t)+PC(ene,z,t)*CTAX(z,t)*CO2FACTOR2(ene,j3,z,t)*DE(ene,j3,z,t)];

* EQ51_2(j2,z,t)..   PCEelec(j2,z,t)*DEelec(j2,z,t) =e= PC("18_ELEC",z,t)*DE("18_ELEC",j2,z,t);

* EQ51_3(j2,z,t)..   PCEnelec(j2,z,t)*DEnelec(j2,z,t) =e= SUM[ene3,PC(ene3,z,t)*DE(ene3,j2,z,t)+PC(ene3,z,t)*CTAX(z,t)*CO2FACTOR2(ene3,j2,z,t)*DE(ene3,j2,z,t)];
*================================= Level 1-5 ======================================
 EQ51_2(j3,z,t)..   PCE(j3,z,t)*CE(j3,z,t) =e= SUM[ene,PC(ene,z,t)*DE(ene,j3,z,t)+PC(ene,z,t)*CTAX(z,t)*CO2FACTOR2(ene,j3,z,t)*DE(ene,j3,z,t)];

 EQ51_1(j2,z,t)..   PCE(j2,z,t)*CE(j2,z,t) =e= [PCEelec(j2,z,t)*DEelec(j2,z,t)+PCEnelec(j2,z,t)*DEnelec(j2,z,t)];

 EQ51_3(j2,z,t)..   PCEelec(j2,z,t)*DEelec(j2,z,t) =e= PC("18_ELEC",z,t)*DE("18_ELEC",j2,z,t);

 EQ51_4(j2,z,t)..   PCEnelec(j2,z,t)*DEnelec(j2,z,t) =e= [PCEcoalgas(j2,z,t)*DEcoalgas(j2,z,t)+PCEoilpetrol(j2,z,t)*DEoilpetrol(j2,z,t)];

 EQ51_5(j2,z,t)..   PCEcoalgas(j2,z,t)*DEcoalgas(j2,z,t) =e= [PC("02_COAL",z,t)*DE("02_COAL",j2,z,t)+PC("02_COAL",z,t)*CTAX(z,t)*CO2FACTOR2("02_COAL",j2,z,t)*DE("02_COAL",j2,z,t)
                    +PC("04_GAS",z,t)*DE("04_GAS",j2,z,t)+PC("04_GAS",z,t)*CTAX(z,t)*CO2FACTOR2("04_GAS",j2,z,t)*DE("04_GAS",j2,z,t)];

 EQ51_6(j2,z,t)..   PCEoilpetrol(j2,z,t)*DEoilpetrol(j2,z,t) =e= [PC("03_OIL",z,t)*DE("03_OIL",j2,z,t)+PC("03_OIL",z,t)*CTAX(z,t)*CO2FACTOR2("03_OIL",j2,z,t)*DE("03_OIL",j2,z,t)
                    +PC("10_PETROLCOAL",z,t)*DE("10_PETROLCOAL",j2,z,t)+PC("10_PETROLCOAL",z,t)*CTAX(z,t)*CO2FACTOR2("10_PETROLCOAL",j2,z,t)*DE("10_PETROLCOAL",j2,z,t)];
*==================================================================================

 EQ52(j,z,t)..      PVA(j,z,t)*VA(j,z,t) =e= [WC(j,z,t)*LDC(j,z,t)]$LDCO(j,z)
                                     +[RC(j,z,t)*KDC(j,z,t)]$KDCO(j,z);

 EQ52_1(j2,z,t)..   PKLE(j2,z,t)*KLE(j2,z,t) =e= [PVA(j2,z,t)*VA(j2,z,t)]$VAO(j2,z)
                                       +[PCE(j2,z,t)*CE(j2,z,t)]$CEO(j2,z);

* Given equations 5 and 6, equation 53 is redundant
* EQ53(j,z,t)..     WC(j,z,t)*LDC(j,z,t) =e= WTI(j,z,t)*LD(j,z,t);


 EQ54(l,j,z,t)$LDO(l,j,z)..
                        WTI(l,j,z,t) =e= W(l,z,t)*(1+ttiw(l,j,z,t));

 EQ54_1(ene,j2,z,t)$DEO(ene,j2,z)..
                 P4(ene,j2,z,t) =e= PC(ene,z,t);

* Given equations 7 and 8, equation 55 is redundant
* EQ55(j,z,t)$(KDCO(j,z))..
*                 RC(j,z,t)*KDC(j,z,t) =e= SUM[k$KDO(k,j,z),RTI(k,j,z,t)*KD(k,j,z,t)];

 EQ56(k,j,z,t)$KDO(k,j,z)..
                 RTI(k,j,z,t) =e= R(k,j,z,t)*(1+ttik(k,j,z,t));

* EQ57(k,j,z,t)$(kmob and KDO(k,j,z))..
*                 R(k,j,z,t) =e= RK(k,z,t);

* EQ58(j,z)..     P(j,z)*XST(j,z) =e= [PL(j,z)*DS(j,z)]$DSO(j,z)
*                                   +[PET(j,z)*EXT(j,z)]$EXTO(j,z)
*                                   +[e(z)*PWMG(j)*MRGN(j,z)]$MRGNO(j,z);

 EQ58(i,z,t)..     P(i,z,t)*XS_I(i,z,t) =e= [PL(i,z,t)*DS_I(i,z,t)]$DSO_I(i,z)
                                     +[PET(i,z,t)*EXT(i,z,t)]$EXTO(i,z)
                                     +[e(z,t)*PWMG(i,t)*MRGN(i,z,t)]$MRGNO(i,z);

* Given equations 43 and 44, equation 59 is redundant
* EQ59(i,z)$EXTO(i,z)..
*                 PET(i,z)*EXT(i,z) =e= SUM[zj$EXO(i,z,zj),
*                                           PE(i,z,zj)*EX(i,z,zj);

 EQ60(i,z,zj,t)$EXO(i,z,zj)..
                 PE(i,z,zj,t)*(1+ttix(i,z,zj,t)) =e= e(z,t)*PWX(i,z,zj,t);

 EQ61(i,z,t)$DDO(i,z)..
                 PD(i,z,t) =e= (1+ttic(i,z,t))*PL(i,z,t);

 EQ62(i,zj,z,t)$IMO(i,zj,z)..
                 PM(i,zj,z,t) =e= (1+ttic(i,z,t))*(1+ttim(i,zj,z,t))*e(z,t)*
                                  (PWM(i,zj,z,t)+SUM[ij,PWMG(ij,t)
                                  *tmrg(ij,i,zj,z)]);

* Given equations 47 and 48, equation 63 is redundant
* EQ63(i,z)$IMTO(i,z)..
*                 PMT(i,z)*IMT(i,z) =e= SUM[zj$IMO(i,zj,z),
*                                           PM(i,zj,z)*IM(i,zj,z);

 EQ64(i,z,t)..     PC(i,z,t)*Q(i,z,t) =e= [PD(i,z,t)*DD(i,z,t)]$DDO(i,z)+
                                    [PMT(i,z,t)*IMT(i,z,t)]$IMTO(i,z);

* EQ65(z,t)..       PK(z,t) =e= 1/A_K(z)*PROD[i$gamma_INV(i,z),(PC(i,z,t)
*                               /gamma_INV(i,z))**gamma_INV(i,z)];

 EQ66(z,t)..       PIXGDP(z,t) =e=
                 {SUM[j,{(PVA(j,z,t)*VA(j,z,t)+TIP(j,z,t))/VA(j,z,t)}*VAO(j,z)]
                 /SUM[j,{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)]
                 *SUM[j,{(PVA(j,z,t)*VA(j,z,t)+TIP(j,z,t))/VA(j,z,t)}*VA(j,z,t)]
                 /SUM[j,{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VA(j,z,t)]}**0.5;

 EQ67(t)..         PIXGDP_W(t) =e=
                 {SUM[(j,z),{(PVA(j,z,t)*VA(j,z,t)+TIP(j,z,t))/VA(j,z,t)}*VAO(j,z)/e(z,t)]
                 /SUM[(j,z),{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VAO(j,z)/eO(z)]
                 *SUM[(j,z),{(PVA(j,z,t)*VA(j,z,t)+TIP(j,z,t))/VA(j,z,t)}*VA(j,z,t)/e(z,t)]
                 /SUM[(j,z),{(PVAO(j,z)*VAO(j,z)+TIPO(j,z))/VAO(j,z)}*VA(j,z,t)/eO(z)]}**0.5;

 EQ68(z,t)..       PIXCON(z,t) =e= SUM[i,PC(i,z,t)*CO(i,z)]/SUM[i,PCO(i,z)*CO(i,z)];

 EQ69(z,t)..       PIXINV(z,t) =e= PROD[i$gamma_INV(i,z),(PC(i,z,t)/PCO(i,z))
                                 **gamma_INV(i,z)];

 EQ70(z,t)..       PIXGVT(z,t) =e= PROD[i$gamma_GVT(i,z),(PC(i,z,t)/PCO(i,z))
                                 **gamma_GVT(i,z)];

*==============================================================================
*   5.3.6 Equilibrium
*==============================================================================
 EQ71(i1,z,t)..    Q(i1,z,t) =e= C(i1,z,t)+CG(i1,z,t)+INV(i1,z,t)+DIT(i1,z,t);

 EQ71_2(i3,z,t)..  Q(i3,z,t) =e= C_Conventional(i3,z,t);

 EQ72(l,z,t)..     LS(l,z,t) =e= SUM[j$LDO(l,j,z),LD(l,j,z,t)+LBS(l,j,z,t)];

 EQ73(k,z,t)$KSO(k,z)..
                   KS(k,z,t) =e= SUM[j$KDO(k,j,z),KD(k,j,z,t)+KBS(k,j,z,t)];

 EQ74(z,t)..       IT(z,t) =e= SH(z,t)+SG(z,t)-CAB(z,t);

 EQ75(z,t)..       DEP(z,t) =e= PK(z,t)*delta(z)*SUM[k$KSO(k,z),KS(k,z,t)];

 EQ76(i,z,t)$DDO(i,z)..
                        SUM[j$DSO(j,i,z),DS(j,i,z,t)] =e= DD(i,z,t);

 EQ77(i,z,zj,t)$EXO(i,z,zj)..
                        EX(i,z,zj,t) =e= IM(i,z,zj,t);

 EQ78(i,z,zj,t)$EXO(i,z,zj)..
                       PWX(i,z,zj,t) =e= PWM(i,z,zj,t);

 EQ79(i,t)..       SUM[z$MRGNO(i,z),MRGN(i,z,t)] =e= SUM[(z,zj,ij)$IMO(ij,zj,z),
                                                 tmrg(i,ij,zj,z)*IM(ij,zj,z,t)];

* Given equations 33, 34 and 77, equation 80 is redundant
* EQ80..          SUM[z,SROW(z)/e(z)] =e= 0;

*==============================================================================
*   5.3.7 Gross domestic product
*==============================================================================
 EQ81(z,t)..       GDP_BP(z,t) =e= SUM[j,PVA(j,z,t)*VA(j,z,t)]+TIPT(z,t);

 EQ82(z,t)..       GDP_MP(z,t) =e= GDP_BP(z,t)+TPRCTS(z,t);

 EQ83(z,t)..       GDP_IB(z,t) =e= SUM[(l,j)$LDO(l,j,z),W(l,z,t)*LD(l,j,z,t)]
                              +SUM[(k,j)$KDO(k,j,z),R(k,j,z,t)*KD(k,j,z,t)]
                              +SUM[(l,j),W(l,z,t)*LBS(l,j,z,t)]
                              +SUM[(k,j),R(k,j,z,t)*KBS(k,j,z,t)]
                              +TPRCTS(z,t)+TPRODN(z,t);

 EQ84(z,t)..       GDP_FD(z,t) =e=
                 SUM[i,PC(i,z,t)*(C(i,z,t)+CG(i,z,t)+INV(i,z,t))]
                +SUM[(i,zj)$EXO(i,z,zj),e(z,t)*PWX(i,z,zj,t)*EX(i,z,zj,t)]
                +SUM[i$MRGNO(i,z),e(z,t)*PWMG(i,t)*MRGN(i,z,t)]
                -SUM[(i,zj)$IMO(i,zj,z),e(z,t)*IM(i,zj,z,t)
                    *(PWM(i,zj,z,t)+SUM[ij,PWMG(ij,t)*tmrg(ij,i,zj,z)])]
                -TCTAX(z,t) ;

 EQ85(t)..          GDP_BP_W(t) =e= SUM[z,GDP_BP(z,t)/e(z,t)];

*==============================================================================
*  5.3.8 Real (volume) variables computed from price indices
*==============================================================================
 EQ86(z,t)..       CTH_REAL(z,t) =e= CTH(z,t)/PIXCON(z,t);

 EQ87(z,t)..       G_REAL(z,t) =e= G(z,t)/PIXGVT(z,t);

 EQ88(z,t)..       GDP_BP_REAL(z,t) =e= GDP_BP(z,t)/PIXGDP(z,t);

 EQ89(t)..         GDP_BP_W_REAL(t) =e= GDP_BP_W(t)/PIXGDP_W(t);

 EQ90(z,t)..       GDP_MP_REAL(z,t) =e= GDP_MP(z,t)/PIXCON(z,t);

 EQ91(z,t)..       IT_REAL(z,t) =e= IT(z,t)/PIXINV(z,t);

 EQ92(z,t)..       CABX(z,t) =e= CAB(z,t)/[PIXGDP_W(t)*e(z,t)];

 EQ93..            OBJ =e= 1;

*==============================================================================
*   5.3.8 Dynamic equations
*==============================================================================
 EQ94(z,t)..     IT(z,t) =e= PK(z,t)*SUM[(k,j)$KDO(k,j,z),IND(k,j,z,t)];

 EQ95(z,t)..     PK(z,t) =e= 1/A_K(z)*PROD[i$gamma_INV(i,z),(PC(i,z,t)
                               /gamma_INV(i,z))**gamma_INV(i,z)];
                               
 EQ96(k,bus,z,t)$KDO(k,bus,z)..
                 IND(k,bus,z,t) =e= phi(z,t)*[R(k,bus,z,t)/U(z,t)]
                                  **sigma_INV(k,bus,z)*KD(k,bus,z,t);

 CALEQ3(k,pub,z,t)$KDO(k,pub,z)..
                 IND(k,pub,z,t)*PK(z,t) =e= INDO(k,pub,z)*PKO(z)*GDP_BP(z,t)
                                            /GDP_BPO(z);
                                            
 EQ97a(z,t)..    IR(z,t) =e= {SUM[(k,j)$KDO(k,j,z),
                              R(k,j,z,t)*KD(k,j,z,t)]-DEP(z,t)}/
                             {PK(z,t)*SUM[(k,j)$KDO(k,j,z),KD(k,j,z,t)]};

 EQ97b(z,t)..    U(z,t) =e= PK(z,t)*(delta(z)+IR(z,t));
 
*==============================================================================
*   5.3.9 Other
*==============================================================================
 WALRAS(z,t)..   LEON(z,t) =e= Q('01_AGRICULT',z,t)-C('01_AGRICULT',z,t)-CG('01_AGRICULT',z,t)-INV('01_AGRICULT',z,t)
                            -DIT('01_AGRICULT',z,t);

*==============================================================================
*   5.3.10 Backstop technology
*==============================================================================
 EQ98(i3,z,t)..    C_Conventional(i3,z,t) =e= (1-penetration_rate(i3,z,t)*switch(i3,z,t))*[C(i3,z,t)+CG(i3,z,t)+INV(i3,z,t)+DIT(i3,z,t)];

 EQ99(i3,z,t)..    XDBS(i3,z,t) =e= penetration_rate(i3,z,t)*switch(i3,z,t)*[C(i3,z,t)+CG(i3,z,t)+INV(i3,z,t)+DIT(i3,z,t)];

 EQ100(j,z,t)..    XDBS2(j,z,t) =e= sum{i3$COMtoIND(j,i3),XDBS(i3,z,t)};

 EQ101(l,j,z,t)..    LBS(l,j,z,t) =e= 0.1*XDBS2(j,z,t)*LD(l,j,z,t)/sum(lj,LD(lj,j,z,t));

 EQ102(k,j,z,t)..   KBS(k,j,z,t) =e= 0.1*XDBS2(j,z,t)*KD(k,j,z,t)/sum(kj,KD(kj,j,z,t));

 EQ103(i3,z,t)..   CLBS(i3,z,t)  =e= sum{l,sum{j$INDtoCOM(i3,j),LBS(l,j,z,t)*WC(j,z,t)}};

 EQ104(i3,z,t)..   CKBS(i3,z,t)  =e= sum{k,sum{j$INDtoCOM(i3,j),KBS(k,j,z,t)*R(k,j,z,t)}};
 
 EQ105(i3,z,t)..   MARKUP(i3,z,t) =e= {PC(i3,z,t)*XDBS(i3,z,t)-CLBS(i3,z,t)-CKBS(i3,z,t)}*switch(i3,z,t) ; 

*==============================================================================
*   5.3.11 PERMET
*==============================================================================
 EQ107(j,z,t).. PERMIT(j,z,t) =e= sum(ene, CO2FACTOR2(ene,j,z,t)*DE(ene,j,z,t));
 
 EQ108(z,t)..  sum(j,PERMIT(j,z,t))=E= PERMIT_TOTAL(z,t)  ;
 
*==============================================================================
* 6 Numerical resolution to compute A_VA, sh0, G, G_REAL and IND
*==============================================================================
option cns = conopt4;
*option cns = path;
*option cns = minos;
*option NLP = conopt4;
*option NLP = minos;
*option NLP = pathnlp ;

*option conopt4.TolPiv = 1e-6;
*option iterlim = 100;
*option iterlim = 0;
*option lmmxsf = t ;

*Eliminating display of solution makes it easier to check whether model solves
*and to identify year when it crashes.
*option profile=1;
*option profile=3;
*option profiletol=10;

*option limrow=0, limcol=0, solprint = off;
*$Offlisting
*$Offsymlist
*$Offinclude 
*option limrow=0, limcol=0, iterlim= 100 ;
*option reslim = 1000;

MODEL PEPWT World wide dynamic model /all/ ;
PEPWT.holdfixed=1;

*==============================================================================
*  6.1 Scenarios
*==============================================================================

LOOP[time,
T(time) = YES;

*==============================================================================
*   6.1.1 Initialisation
*==============================================================================
$INCLUDE INIT.gms

*==============================================================================
*   6.1.1.1 Lower bounds on some variables
*==============================================================================

*==============================================================================
*   6.1.3 Closures
*==============================================================================
*$ontext
* FP CLOSURE: fixed PIXGDPs; numeraire is exchange rate of reference region
* The exchange rates are endogenous, except for the reference region.
 e.FX(zr,time)      = eO(zr);
 PIXGDP.FX(z,time)  = PIXGDPO(z)/sum[zr,eO(zr)];
*$offtext

$ontext
* FE CLOSURE: fixed exchange rates; numeraire is PIXGDP of reference region
* The exchange rates can be fixed at arbitrary values
 PIXGDP.FX(zr,time)  = PIXGDPO(zr);
 e.FX(z,time)        = eO(z);
$offText

 ttdh0.fx(z,time)        = ttdh0O(z);
 ttdh1.fx(z,time)        = ttdh1O(z);
 ttic.fx(i,z,time)         = tticO(i,z);
 ttik.fx(k,j,z,time)      = ttikO(k,j,z);
 ttim.fx(i,zj,z,time)    = ttimO(i,zj,z);
 ttip.fx(j,z,time)        = ttipO(j,z);
 ttiw.fx(l,j,z,time)      = ttiwO(l,j,z);
 ttix.fx(i,z,zj,time)      = ttixO(i,z,zj);
 beta_X4_t.fx(power,z,time) = beta_X4(power,z);
 CTAX.fX(z,time)        = CTAX0(z);
*==============================================================================
*   6.1.2 Fixing GDP_BP_REAL and sh1, and initializing A_VA and sh0
*==============================================================================
* To compute the baseline, real GDP is set to grow at the projected growth rate
* and multifactor productivity is endogenous.
 GDP_BP_REAL.fx(z,t1)  = GDP_BP_REALO(z);
 GDP_BP_REAL.fx(z,time)$[ord(time) gt 1]
                       = GDP_BP_REAL.l(z,time-1)*[1+g_GDP(z,time)];

 A_VA.L(z,t1)          = 1;
 A_VA.L(z,time)$[ord(time) gt 1]
                       = A_VA.L(z,time-1);

* Domestic savings rates are made to follow the evolution anticipated by FBQF
* and the intercept for the household savings function is endogenously
* determined from the added constraint labeled CALEQ1:
 sh1.fx(z,t1)          = sh1O(z);
 sh1.fx(z,time)$[ord(time) gt 1]
                       = sh1.l(z,time-1)*[1+g_SDR(z,time-1)];

 sh0.l(z,t1)           = sh0O(z);
 sh0.l(z,time)$[ord(time) gt 1]
                       = sh0.l(z,time-1)*[1+growthz(z)];

*==============================================================================
*   6.1.4 Other exogenous variables
*==============================================================================
 CABX.FX(z1,time)     = CABXO(z1);
 CABX.FX(z1,time)$[ord(time) gt 1]
                      = CABX.l(z1,time-1)*[1+g_GDP(z1,time)];

 CMIN.FX(i,z,t1)      = CMINO(i,z);
 CMIN.FX(i,z,time)$[ord(time) gt 1]
                      = CMIN.l(i,z,time-1)*[1+g_POP(z,time)];

 KD.fx(k,j,z,t1)$KDO(k,j,z)
                      = KDO(k,j,z);
 KD.fx(k,j,z,time)${[ord(time) gt 1] and KDO(k,j,z)}
                      = KD.l(k,j,z,time-1)*[1-delta(z)]+IND.l(k,j,z,time-1);

 KD.fx('natr',j,z,time)${[ord(time) gt 1] and KDO('natr',j,z)}
                     = KD.l('natr',j,z,time-1)*(1-0.01);

 KD.fx('land',j,z,time)${[ord(time) gt 1] and KDO('land',j,z)}
                     = KD.l('land',j,z,time-1);

 LS.FX(l,z,t1)       = LSO(l,z);
 LS.FX(l,z,time)$[ord(time) gt 1]
                     = LS.l(l,z,time-1)*[1+g_POP(z,time)];

*==============================================================================
*   CTAX
*============================================================================== 
 CTAX.fx(z,time)$[ord(time) gt 1]
                      = CTAX_Cal(z,time);  

* PERMIT_TOTAL.fx(z,time)$[ord(time) gt 1]
*                             = PERMIT_TOTALO(Z);

*==============================================================================
*   AEEI
*============================================================================== 
 AEEI(z,time) = AEEI_low(z,time);
 CO2FACTOR2(ene,j,z,time) = CO2FACTOR(ene,j,z)*AEEI(z,time);

*==============================================================================
*Backstop technologies
*==============================================================================
penetration_rate(i3,z,time)$[CTAX.L(z,time) gt 0.5]
                             = penetration_rate(i3,z,time-1)+0.02;

if ((CTAX.L('01_KOR',time)  gt 0.8), switch(i3,'01_KOR',time) = 1  ;
else switch(i3,'01_KOR',time) = 0 ;
);

if ((CTAX.L('02_CHN',time)  gt 0.8), switch(i3,'02_CHN',time) = 1  ;
else switch(i3,'02_CHN',time) = 0 ;
);

if ((CTAX.L('03_JPN',time)  gt 0.8), switch(i3,'03_JPN',time) = 1  ;
else switch(i3,'03_JPN',time) = 0 ;
);

if ((CTAX.L('04_RUS',time)  gt 0.8), switch(i3,'04_RUS',time) = 1  ;
else switch(i3,'04_RUS',time) = 0 ;
);

if ((CTAX.L('05_MNG',time)  gt 0.8), switch(i3,'05_MNG',time) = 1  ;
else switch(i3,'05_MNG',time) = 0 ;
);

if ((CTAX.L('06_PRK',time)  gt 0.8), switch(i3,'06_PRK',time) = 1  ;
else switch(i3,'06_PRK',time) = 0 ;
);

if ((CTAX.L('07_NAM',time)  gt 0.8), switch(i3,'07_NAM',time) = 1  ;
else switch(i3,'07_NAM',time) = 0 ;
);

if ((CTAX.L('08_LAM',time)  gt 0.8), switch(i3,'08_LAM',time) = 1  ;
else switch(i3,'08_LAM',time) = 0 ;
);

if ((CTAX.L('09_WEU',time)  gt 0.8), switch(i3,'09_WEU',time) = 1  ;
else switch(i3,'09_WEU',time) = 0 ;
);

if ((CTAX.L('10_EEU',time)  gt 0.8), switch(i3,'10_EEU',time) = 1  ;
else switch(i3,'10_EEU',time) = 0 ;
);

if ((CTAX.L('11_FSU',time)  gt 0.8), switch(i3,'11_FSU',time) = 1  ;
else switch(i3,'11_FSU',time) = 0 ;
);

if ((CTAX.L('12_MEA',time)  gt 0.8), switch(i3,'12_MEA',time) = 1  ;
else switch(i3,'12_MEA',time) = 0 ;
);

if ((CTAX.L('13_AFR',time)  gt 0.8), switch(i3,'13_AFR',time) = 1  ;
else switch(i3,'13_AFR',time) = 0 ;
);

if ((CTAX.L('14_CPA',time)  gt 0.8), switch(i3,'14_CPA',time) = 1  ;
else switch(i3,'14_CPA',time) = 0 ;
);

if ((CTAX.L('15_SAS',time)  gt 0.8), switch(i3,'15_SAS',time) = 1  ;
else switch(i3,'15_SAS',time) = 0 ;
);

if ((CTAX.L('16_PAS',time)  gt 0.8), switch(i3,'16_PAS',time) = 1  ;
else switch(i3,'16_PAS',time) = 0 ;
);

if ((CTAX.L('17_PAO',time)  gt 0.8), switch(i3,'17_PAO',time) = 1  ;
else switch(i3,'17_PAO',time) = 0 ;
);

*==============================================================================
*   6.1.5 Resolution
*==============================================================================

SOLVE PEPWT USING CNS;
*SOLVE PEPWT using NLP maximizing OBJ;
*SOLVE PEPWT USING MCP;

* The single element in subset T(time) is removed, and the subset is now empty.
T(time)          = NO;
* End of LOOP over time periods
];

*==============================================================================
* 7. Output
*==============================================================================
* Preparation of a GDX file that includes the baseline values for A_VA, sh0, G,
* G_REAL and IND. This file will then be used in the main program.

PARAMETER
 A_VA_RES(z,time)   Value of A_VA to reproduce real GDP projections
 GX(z,time)         Current government expenditures on goods and services in region z
 G_REALX(z,time)    Current real government expenditures on goods and services in region z
 INDX(k,j,z,time)   Volume of new type k capital investment to industry j in region z
 sh0X(z,time)       Intercept (household savings)
 sh1X(z,time)       Household savings rate
 phi_BAU(z,time)
 valCTAX(z,time)
;

 A_VA_RES(z,time)        = A_VA.l(z,time);
 GX(z,time)                   = G.l(z,time);
 G_REALX(z,time)         = G_REAL.l(z,time);
 INDX(k,pub,z,time)      = IND.l(k,pub,z,time);
 sh1X(z,time)               = sh1.l(z,time);
 sh0X(z,time)               = sh0.l(z,time);
 valCTAX(z,time)           = CTAX.l(z,time);

execute_unload 'Input_w-t/B_line_GTAP11c.gdx',
 A_VA_RES, GX, G_REALX, delta, XST, VA, LS, KS, LD, KD, IND, EX, g_GDP, g_POP, GDP_BP,
 RC, IT, SH, SG, CABX, R, PK, sigma_LD, sigma_INV, sh1X, sh0X, INDX, valCTAX ;
