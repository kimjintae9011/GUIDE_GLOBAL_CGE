*==============================================================================
* Sets 
*==============================================================================
* 1. MASTER SETS (Core Dimensions)
*------------------------------------------------------------------------------
SET
 J               All industries including conventional and backstop technologies
 I               All commodities
 I1(I)           All commodities except agriculture (Used as the residual market for Walras Law)
 I2(I)           General commodities excluding electricity and backstop outputs
 F               All production factors
 K(F)            Capital factor categories (Capital Land Natural Resources)
 Z               All regions
 ZR(Z)           Reference region for price numeraire (NAM)
 Z1(Z)           All regions except the reference region

*------------------------------------------------------------------------------
* 2. INDUSTRY & COMMODITY BASE ELEMENTS
*------------------------------------------------------------------------------
J Industries including backstop technologies
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
 32_BSCHEMICAL  Low-carbon chemical products (e.g. green ammonia)
 33_BSNONMET    Low-carbon non-metallic minerals (e.g. green cement)
 34_BSIRONSTL   Green steel products (e.g. hydrogen DRI)
 35_BS_LTRP     Zero-emission land transport (e.g. EV and FCEV)
 36_BS_WTRP     Zero-emission water transport (e.g. green methanol)
 37_BS_ATRP     Zero-emission air transport (e.g. SAF)
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

*------------------------------------------------------------------------------
* 3. COMMODITY SUBSETS (Energy Nesting & Specific Markets)
*------------------------------------------------------------------------------
I1(I) Commodities excluding agriculture LEON
/ 02_COAL, 03_OIL, 04_GAS, 05_MINING, 06_FOODPRO, 07_TEXTILES, 08_WOODPRO, 09_PAPERPRO, 10_PETROLCOAL, 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 18_ELEC, 19_CONSTRUC, 20_LTRP, 21_WTRP, 22_ATRP, 23_SER /

I2(I) Commodities excluding electricity and backstop
/ 01_AGRICULT, 02_COAL, 03_OIL, 04_GAS, 05_MINING, 06_FOODPRO, 07_TEXTILES, 08_WOODPRO, 09_PAPERPRO, 10_PETROLCOAL, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 19_CONSTRUC, 23_SER /

ENE(I) All energy commodities
/ 02_COAL, 03_OIL, 04_GAS, 10_PETROLCOAL, 18_ELEC /

ENE1(I) Primary and secondary fossil fuels (Excluding electricity)
/ 02_COAL, 03_OIL, 04_GAS, 10_PETROLCOAL /

ENE2(I) Electricity only (For power non-power split nesting)
/ 18_ELEC /

ENE3(ene) Alias for ENE1 (Fossil fuels excluding electricity)
/ 02_COAL, 03_OIL, 04_GAS, 10_PETROLCOAL /

ENE4(ene) Electricity only
/ 18_ELEC /

ENE5(ene) Solid and gaseous fossil fuels (Coal and Gas nest)
/ 02_COAL, 04_GAS /

ENE6(ene) Liquid fossil fuels (Crude oil and Petroleum products nest)
/ 03_OIL, 10_PETROLCOAL /

ENE7(ene) Coal and Gas only (Specific sub-grouping)
/ 02_COAL, 04_GAS /

NENE(I) All non-energy commodities (For intermediate consumption structure)
/ 01_AGRICULT, 05_MINING, 06_FOODPRO, 07_TEXTILES, 08_WOODPRO, 09_PAPERPRO, 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 19_CONSTRUC, 20_LTRP, 21_WTRP, 22_ATRP, 23_SER /

I_BS(I) Conventional commodities that have low-carbon backstop substitutes
/ 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 20_LTRP, 21_WTRP, 22_ATRP /

*------------------------------------------------------------------------------
* 4. INDUSTRY SUBSETS (Production Structure & Policy Targeting)
*------------------------------------------------------------------------------
BUS(J) Private business industries (Excludes public sectors)
/ 01_AGRICULT, 02_COAL, 03_OIL, 04_GAS, 05_MINING, 06_FOODPRO, 07_TEXTILES, 08_WOODPRO, 09_PAPERPRO, 10_PETROLCOAL, 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 18_TnD, 19_eNuclear, 20_eCoal, 21_eGas, 22_eOil, 23_eWind, 24_eSolar, 25_eHydro, 26_eOther, 27_CONSTRUC, 28_LTRP, 29_WTRP, 30_ATRP, 31_SER, 32_BSCHEMICAL, 33_BSNONMET, 34_BSIRONSTL, 35_BS_LTRP, 36_BS_WTRP, 37_BS_ATRP /

J2(J) Industries following the standard KLE (Capital-Labor-Energy) nesting structure
/ 01_AGRICULT, 05_MINING, 06_FOODPRO, 07_TEXTILES, 08_WOODPRO, 09_PAPERPRO, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 27_CONSTRUC, 28_LTRP, 29_WTRP, 30_ATRP, 31_SER /

J3(J) Industries with non-KLE or Leontief structures (Energy Power Backstop)
/ 02_COAL, 03_OIL, 04_GAS, 10_PETROLCOAL, 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 18_TnD, 19_eNuclear, 20_eCoal, 21_eGas, 22_eOil, 23_eWind, 24_eSolar, 25_eHydro, 26_eOther, 32_BSCHEMICAL, 33_BSNONMET, 34_BSIRONSTL, 35_BS_LTRP, 36_BS_WTRP, 37_BS_ATRP /

J4(J) General demand industries (Excluding energy supply and transformation)
/ 01_AGRICULT, 05_MINING, 06_FOODPRO, 07_TEXTILES, 08_WOODPRO, 09_PAPERPRO, 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 27_CONSTRUC, 28_LTRP, 29_WTRP, 30_ATRP, 31_SER, 32_BSCHEMICAL, 33_BSNONMET, 34_BSIRONSTL, 35_BS_LTRP, 36_BS_WTRP, 37_BS_ATRP /

J5(J) Fossil fuel power generation sectors
/ 20_eCoal, 21_eGas, 22_eOil /

J6(J) All industries excluding power generation sectors
/ 01_AGRICULT, 02_COAL, 03_OIL, 04_GAS, 05_MINING, 06_FOODPRO, 07_TEXTILES, 08_WOODPRO, 09_PAPERPRO, 10_PETROLCOAL, 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 27_CONSTRUC, 28_LTRP, 29_WTRP, 30_ATRP, 31_SER, 32_BSCHEMICAL, 33_BSNONMET, 34_BSIRONSTL, 35_BS_LTRP, 36_BS_WTRP, 37_BS_ATRP /

J7(J) Industries subject to Marginal Abatement Cost (MAC) curves
/ 01_AGRICULT, 02_COAL, 03_OIL, 04_GAS, 05_MINING, 06_FOODPRO, 07_TEXTILES, 08_WOODPRO, 09_PAPERPRO, 10_PETROLCOAL, 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 27_CONSTRUC, 28_LTRP, 29_WTRP, 30_ATRP, 31_SER /

TND(J) Electricity Transmission and Distribution
/ 18_TnD /

POWER(J) All power generation sectors
/ 19_eNuclear, 20_eCoal, 21_eGas, 22_eOil, 23_eWind, 24_eSolar, 25_eHydro, 26_eOther /

Conv(J) Conventional highly-emitting industries targeted for backstop substitution
/ 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 28_LTRP, 29_WTRP, 30_ATRP /

DIRTY(J) Emissions-intensive and trade-exposed (EITE) fossil fuel combustion industries
*/ 11_CHEMICAL, 12_NONMET, 13_IRONSTL, 20_eCoal, 21_eGas, 22_eOil, 28_LTRP, 29_WTRP, 30_ATRP /
/ 11_CHEMICAL, 12_NONMET, 13_IRONSTL,
 28_LTRP, 29_WTRP, 30_ATRP /

TRP(J) TRANSPORT
/ 28_LTRP, 29_WTRP, 30_ATRP /

Energy(J) Industries
/ 02_COAL, 03_OIL, 04_GAS, 05_MINING, 10_PETROLCOAL, 18_TnD, 19_eNuclear,  20_eCoal,     
 21_eGas, 22_eOil, 23_eWind, 24_eSolar, 25_eHydro, 26_eOther /

IndCon(J) Industries
/ 06_FOODPRO,  07_TEXTILES,  08_WOODPRO, 09_PAPERPRO,  11_CHEMICAL,  12_NONMET    
 13_IRONSTL, 14_NONFERR, 15_MACHINE, 16_TRANSEQ, 17_OTHERIND, 27_CONSTRUC /

Roadrail(J) Land transport service(road rail)
/ 28_LTRP /

Air(J)  Air transport service
/ 30_ATRP /

Water(J) Water transport service
/ 29_WTRP /

Other(J) other sector
/ 01_AGRICULT, 31_SER /

Elec(J) Industries
/ 19_eNuclear,  20_eCoal, 21_eGas, 22_eOil, 23_eWind, 24_eSolar, 25_eHydro, 26_eOther/

*------------------------------------------------------------------------------
* 5. BACKSTOP TECHNOLOGY MAPPINGS
*------------------------------------------------------------------------------
BS(J) Low-carbon and zero-emission backstop technology sectors
 / 32_BSCHEMICAL, 33_BSNONMET, 34_BSIRONSTL, 35_BS_LTRP, 36_BS_WTRP, 37_BS_ATRP /

MAP_BS(*, *, *) 1:1:1 Mapping: Backstop Industry . Conventional Industry . Target Commodity
/
  '32_BSCHEMICAL' . '11_CHEMICAL' . '11_CHEMICAL '
  '33_BSNONMET'   . '12_NONMET'   . '12_NONMET'
  '34_BSIRONSTL'  . '13_IRONSTL'  . '13_IRONSTL'
  '35_BS_LTRP'    . '28_LTRP'     . '20_LTRP'
  '36_BS_WTRP'    . '29_WTRP'     . '21_WTRP'
  '37_BS_ATRP'    . '30_ATRP'     . '22_ATRP'
/

MAP_Conv(*, *) 1:1 Mapping: Backstop Industry . Conventional Industry
/
  '32_BSCHEMICAL' . '11_CHEMICAL'
  '33_BSNONMET'   . '12_NONMET'   
  '34_BSIRONSTL'  . '13_IRONSTL'  
  '35_BS_LTRP'    . '28_LTRP'     
  '36_BS_WTRP'    . '29_WTRP'     
  '37_BS_ATRP'    . '30_ATRP'     
/

*------------------------------------------------------------------------------
* 6. REGIONAL SUBSETS (Climate Policy & Linkage Analysis)
*------------------------------------------------------------------------------
NEA(Z) Northeast Asian countries (Core regions for carbon market linkage)
/ 01_KOR, 02_CHN, 03_JPN, 04_RUS, 05_MNG, 06_PRK /

PERMIT_Z(z) Regions participating in the emission trading scheme (Carbon Market)
/ 01_KOR, 02_CHN, 03_JPN, 04_RUS, 05_MNG, 06_PRK, 07_NAM, 08_LAM, 09_WEU, 10_EEU, 11_RFSU, 12_MEA, 13_AFR, 14_RCPA, 15_SAS, 16_RPAS, 17_RPAO /

Z_GRN(z) Advanced economies with high elasticity for backstop technology adoption
 / 01_KOR, 02_CHN, 03_JPN, 07_NAM, 09_WEU, 17_RPAO /

Z_OTH(z) Developing or fossil-dependent economies with lower transition elasticities
/ 04_RUS, 05_MNG, 06_PRK, 08_LAM, 10_EEU, 11_RFSU, 12_MEA, 13_AFR, 14_RCPA, 15_SAS, 16_RPAS /

TIME Time periods
/ 2019*2050/

T(time)
T1(time) First period;
T1(time) = yes$[ord(time) eq 1];

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
Alias (ene1, enee1)
Alias (ene3, enee3)
Alias (ene4, enee4)
Alias (ene5, enee5)
Alias (ene6, enee6)
Alias (ene7, enee7)

;

*------------------------------------------------------------------------------
* 7. IAMC Format
*------------------------------------------------------------------------------
SET
model_IAMC
/ 'GUIDE-GLOBAL-CGE v2' /

Country(z)
/ '01_KOR', '02_CHN', '03_JPN', '04_RUS', '05_MNG', '06_PRK', '07_NAM', '08_LAM', '09_WEU', '10_EEU',
 '11_RFSU', '12_MEA', '13_AFR', '14_RCPA', '15_SAS','16_RPAS','17_RPAO'/

variable_IAMC
/
 'Population',
 'GDP|MER',
 'Value Added|Agriculture',
 'Value Added|Industry',
 'Value Added|Services',
 'Emissions|CO2',
 'Emissions|CO2|Energy',
 'Emissions|CO2|Energy|Demand',
 'Emissions|CO2|Energy|Demand|AFOFI',
 'Emissions|CO2|Energy|Demand|Commercial',
 'Emissions|CO2|Energy|Demand|Industry',
 'Emissions|CO2|Energy|Demand|Other Sector',
 'Emissions|CO2|Energy|Demand|Residential',
 'Emissions|CO2|Energy|Demand|Transportation',
 'Emissions|CO2|Energy|Supply',
 'Emissions|CO2|Energy|Supply|Electricity',
 'Emissions|CO2|Energy|Supply|Gases',
 'Emissions|CO2|Energy|Supply|Heat',
 'Emissions|CO2|Energy|Supply|Liquids',
 'Emissions|CO2|Energy|Supply|Other',
 'Emissions|CO2|Energy|Supply|Solids',
 'Emissions|CO2|Industrial Processes',
 'Emissions|CO2|AFOLU',
 'Emissions|CO2|AFOLU|Land',
 'Emissions|CO2|AFOLU|Land|Positive',
 'Emissions|CO2|AFOLU|Land|Negative',
 'Primary Energy',
 'Primary Energy|Biomass',
 'Primary Energy|Coal',
 'Primary Energy|Gas',
 'Primary Energy|Geothermal',
 'Primary Energy|Hydro',
 'Primary Energy|Nuclear',
 'Primary Energy|Oil',
 'Primary Energy|Solar',
 'Primary Energy|Wind',
 'Secondary Energy|Electricity',
 'Secondary Energy|Electricity|Biomass',
 'Secondary Energy|Electricity|Coal',
 'Secondary Energy|Electricity|Gas',
 'Secondary Energy|Electricity|Geothermal',
 'Secondary Energy|Electricity|Hydro',
 'Secondary Energy|Electricity|Nuclear',
 'Secondary Energy|Electricity|Oil',
 'Secondary Energy|Electricity|Solar|CSP',
 'Secondary Energy|Electricity|Solar_PV',
 'Secondary Energy|Electricity|Wind',
 'Secondary Energy|Hydrogen',
 'Final Energy',
 'Final Energy|Electricity',
 'Final Energy|Gases',
 'Final Energy|Geothermal',
 'Final Energy|Heat',
 'Final Energy|Hydrogen',
 'Final Energy|Liquids',
 'Final Energy|Solar',
 'Final Energy|Solids',
 'Final Energy|Solids|Biomass',
 'Final Energy|Solids|Fossil',
 'Final Energy|Industry',
 'Final Energy|Non-Energy Use',
 'Final Energy|Residential', 
 'Final Energy|Commercial',
 'Final Energy|Transportation',
 'Employment',
 'Employment|Agriculture',
 'Employment|Industry',
 'Employment|Service'
/

Unit_IAMC
/ 'million', 'billion USD_2010/yr',  'Mt CO2/yr',  'EJ/yr',  'million t DM/yr',  'Tg N/yr',  'million ha'/

year_IAMC(time)
/
 2019, 2020, 2025, 2030, 2035, 2040, 2045, 2050
/

Agriculture(J) Industries
/01_AGRICULT/

Industry(J) Industries
/
 02_COAL       
 03_OIL         
 04_GAS        
 05_MINING     
 06_FOODPRO    
 07_TEXTILES    
 08_WOODPRO   
 09_PAPERPRO   
 10_PETROLCOAL  
 11_CHEMICAL    
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
/

Industry2(J) Industries
/
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
 27_CONSTRUC    Construction
/

Service(J)
/
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
/

Service2(J)
/
 31_SER         Service
/

Demand(J) Industries
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
 27_CONSTRUC    Construction
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
/

Demand2(J) Industries
/
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
 27_CONSTRUC    Construction
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
 31_SER         Service
/

Supply(J) Industries
/
 02_COAL        Coal
 03_OIL         Crude petroleum
 04_GAS         Natural gas Gas distribution
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

Supply_elec(J) Industries
/
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

Supply_liquid(J)
/
 03_OIL         Crude petroleum
 10_PETROLCOAL  Petroleum and coal products
/

Supply_petrol(J)
/
 10_PETROLCOAL  Petroleum and coal products
/

Transportation(J)
/
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
/

*------------------------------------------------------------------------------
* 8. IPCC Format
*------------------------------------------------------------------------------
Level /Tier1/

Project /GUIDE/

model_IPCC /'GUIDE-GLOBAL-CGE v2'/

IPCC06_Sector /'1.Energy', '2.IPPU', '3.AFOLU', '4.Waste', '5.Other', '6.M&A_Bunker'/

IPCC06_Code
/
'1.A.1.a',
'1.A.1.bc',
'1.A.2',
'1.A.3.a',
'1.A.3.b_noRES',
'1.A.3.c',
'1.A.3.d',
'1.A.3.e',
'1.A.4',
'1.A.5',
'1.B.1',
'1.B.2',
'2.A.1',
'2.A.2',
'2.A.3',
'2.A.4',
'2.B',
'2.C',
'2.D',
'2.E',
'2.F',
'2.G',
'3.A.1',
'3.A.2',
'3.C.1',
'3.C.2',
'3.C.3',
'3.C.4',
'3.C.5',
'3.C.6',
'3.C.7',
'4.A',
'4.B',
'4.C',
'4.D',
'5.A',
'5.B',
'6.A',
'6.B'
/

IPCC06_Category
/
'Main_Electricity_Heat_Production',
'Petroleum_Refining',
'Manufacturing_Industries&Construction',
'Civil_Aviation',
'Road_Transportation_no_resuspension',
'Railways',
'Water-borne_Navigation',
'Other_Transportation',
'Residential&other_sectors',
'Non-Specified',
'Solid_Fuels',
'Oil&Natural_Gas',
'Cement_production',
'Lime_production',
'Glass_Production',
'Other_Process_Uses_of_Carbonates',
'Chemical_Industry',
'Metal_Industry',
'Non-Energy_Products_from_Fuels&Solvent_Use',
'Electronics_Industry',
'Product_Uses_as_Substitutes_for_Ozone_Depleting_Substances',
'Other_Product_Manufacture&Use',
'Enteric_Fermentation',
'Manure_Management',
'Emissions_from_biomass_burning',
'Liming',
'Urea_application',
'Direct_N2O_Emissions_from managed_soils',
'Indirect_N2O_Emissions_from_managed_soils',
'Indirect_N2O_Emissions_from_manure_management',
'Rice_cultivations',
'Solid_Waste_Disposal',
'Biological_Treatment_of_Solid_Waste',
'Incineration&Open_Burning_of_Waste',
'Wastewater_Treatment&Discharge',
'Indirect_N2O_emissions',
'Fossil_fuel_fires',
'Marine_Bunker',
'Aviation_Bunker'
/

Substance
/
'CO2',
'CO2_bio',
'CH4',
'N2O',
'F-gas'
/

Unit_IPCC
/
'Gg_CO2eq/yr'
/

year_IPCC(time)
/
 2019, 2020, 2025, 2030, 2035, 2040, 2045, 2050
/

;