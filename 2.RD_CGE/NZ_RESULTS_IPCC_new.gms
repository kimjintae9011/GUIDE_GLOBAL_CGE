SET

Level
/
Tier1
/

Project
/
GUIDE
/

model_IPCC
/
GUIDE-GLOBAL-CGE     Guide Global Model
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

Scenario
/
'NZ'
/

IPCC06_Sector
/
'1.Energy',
'2.IPPU',
'3.AFOLU',
'4.Waste',
'5.Other',
'6.M&A_Bunker'
/

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
 2019*2050
* 2019, 2020, 2025, 2030, 2035, 2040, 2045, 2050
/

Agriculture(J) Industries
/
 01_AGRICULT    Agricultural forest and fishery goods
/

Industry(J) Industries
/
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
/

Industry2(J) Industries
/
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
* 28_LTRP        Land transport service(road rail)
* 29_WTRP        Water transport service
* 30_ATRP        Air transport service
 31_SER         Service
/

Demand(J) Industries
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

Demand2(J) Industries
/
* 01_AGRICULT    Agricultural forest and fishery goods
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

Supply_petrol(J)
/
 10_PETROLCOAL  Petroleum and coal products
/

Supply_liquid(J)
/
 03_OIL         Crude petroleum
 10_PETROLCOAL  Petroleum and coal products
/

Transportation(J)
/
 28_LTRP        Land transport service(road rail)
 29_WTRP       Water transport service
 30_ATRP        Air transport service
/
;

Parameter
NONCO2_KOR(IPCC06_CODE,Substance),
NONCO2_CHN(IPCC06_CODE,Substance),
NONCO2_JPN(IPCC06_CODE,Substance),
NONCO2_RUS(IPCC06_CODE,Substance),
NONCO2_MNG(IPCC06_CODE,Substance),
NONCO2_PRK(IPCC06_CODE,Substance),
NONCO2_NAM(IPCC06_CODE,Substance),
NONCO2_LAM(IPCC06_CODE,Substance),
NONCO2_WEU(IPCC06_CODE,Substance),
NONCO2_EEU(IPCC06_CODE,Substance),
NONCO2_FSU(IPCC06_CODE,Substance),
NONCO2_MEA(IPCC06_CODE,Substance),
NONCO2_AFR(IPCC06_CODE,Substance),
NONCO2_CPA(IPCC06_CODE,Substance),
NONCO2_SAS(IPCC06_CODE,Substance),
NONCO2_PAS(IPCC06_CODE,Substance),
NONCO2_PAO(IPCC06_CODE,Substance)
;

$onEcho > Input_WEB/NONCO219.txt
par=NONCO2_KOR       rng=01_KOR!A1:E38
par=NONCO2_CHN       rng=02_CHN!A1:E38
par=NONCO2_JPN        rng=03_JPN!A1:E38
par=NONCO2_RUS       rng=04_RUS!A1:E38
par=NONCO2_MNG      rng=05_MNG!A1:E38
par=NONCO2_PRK       rng=06_PRK!A1:E38
par=NONCO2_NAM      rng=07_NAM!A1:E38
par=NONCO2_LAM       rng=08_LAM!A1:E38
par=NONCO2_WEU      rng=09_WEU!A1:E38
par=NONCO2_EEU       rng=10_EEU!A1:E38
par=NONCO2_FSU       rng=11_FSU!A1:E38
par=NONCO2_MEA       rng=12_MEA!A1:E38
par=NONCO2_AFR       rng=13_AFR!A1:E38
par=NONCO2_CPA       rng=14_CPA!A1:E38
par=NONCO2_SAS       rng=15_SAS!A1:E38
par=NONCO2_PAS       rng=16_PAS!A1:E38
par=NONCO2_PAO       rng=17_PAO!A1:E38
$offEcho

$call  gdxxrw Input_WEB/250724_Non-CO2_coef.xlsx @Input_WEB/NONCO219.txt trace=0 output=Input_WEB/250724_Non-CO2_coef.gdx
$gdxIn Input_WEB/250724_Non-CO2_coef.gdx

$load  NONCO2_KOR NONCO2_CHN NONCO2_JPN NONCO2_RUS NONCO2_MNG NONCO2_PRK NONCO2_NAM NONCO2_LAM NONCO2_WEU NONCO2_EEU NONCO2_FSU NONCO2_MEA NONCO2_AFR NONCO2_CPA NONCO2_SAS NONCO2_PAS NONCO2_PAO   

Parameter NONCO2(IPCC06_CODE,Substance,z);
NONCO2(IPCC06_CODE,Substance,'01_KOR') =  NONCO2_KOR(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'02_CHN') =  NONCO2_CHN(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'03_JPN')  =  NONCO2_JPN(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'04_RUS') =  NONCO2_RUS(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'05_MNG') =  NONCO2_MNG(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'06_PRK')  =  NONCO2_PRK(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'07_NAM')  =  NONCO2_NAM(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'08_LAM')  =  NONCO2_LAM(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'09_WEU') =  NONCO2_WEU(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'10_EEU')  =  NONCO2_EEU(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'11_FSU')  =  NONCO2_FSU(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'12_MEA')  =  NONCO2_MEA(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'13_AFR')  =  NONCO2_AFR(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'14_CPA')  =  NONCO2_CPA(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'15_SAS')  =  NONCO2_SAS(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'16_PAS')  =  NONCO2_PAS(IPCC06_CODE,Substance);
NONCO2(IPCC06_CODE,Substance,'17_PAO')  =  NONCO2_PAO(IPCC06_CODE,Substance);

Parameter gdpelas(z) GDP Elasticity ;
gdpelas(z) = 0.8 ;

Parameter ghgelas(z) GHG Elasticity ;
ghgelas(z) = -2.0 ;

Parameter NONCO2_RR(z,time) Non-CO2 Reduction Rate;
NONCO2_RR(z,time)$[ord(time) lt 5] = (valGDP_MP_REAL(z,time,'NZ')/valGDP_MP_REAL(z,'2019','NZ'))**gdpelas(z);
NONCO2_RR(z,time)$[ord(time) gt 4] = (valGDP_MP_REAL(z,time,'NZ')/valGDP_MP_REAL(z,'2019','NZ'))**gdpelas(z)*(1+valCTAX(z,time,'NZ'))**ghgelas(z);

*======================= Reporting IPCC Platform =====================================================================
Parameter
IPCC(z,Scenario,IPCC06_Sector,IPCC06_Code,IPCC06_Category,Substance,Unit_IPCC,time) IPCC Format ;

*CO2
IPCC(Country,'NZ','1.Energy','1.A.1.a','Main_Electricity_Heat_Production','CO2','Gg_CO2eq/yr',year_IPCC)                       = sum(Supply_elec,valCO2I2(Supply_elec,Country,year_IPCC,'NZ')+valCO2NE2(Supply_elec,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.1.bc','Petroleum_Refining','CO2','Gg_CO2eq/yr',year_IPCC)                                    = sum(Supply_petrol,valCO2I2(Supply_petrol,Country,year_IPCC,'NZ')+valCO2NE2(Supply_petrol,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.2','Manufacturing_Industries&Construction','CO2','Gg_CO2eq/yr',year_IPCC)                    = sum(Indcon,valCO2I2(Indcon,Country,year_IPCC,'NZ')+valCO2NE2(Indcon,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.a','Civil_Aviation','CO2','Gg_CO2eq/yr',year_IPCC)                                         = sum(Air,valCO2I2(Air,Country,year_IPCC,'NZ')+valCO2NE2(Air,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.b_noRES','Road_Transportation_no_resuspension','CO2','Gg_CO2eq/yr',year_IPCC)              = sum(Roadrail,valCO2I2(Roadrail,Country,year_IPCC,'NZ')+valCO2NE2(Roadrail,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.c','Railways','CO2','Gg_CO2eq/yr',year_IPCC)                                               = eps ;
IPCC(Country,'NZ','1.Energy','1.A.3.d','Water-borne_Navigation','CO2','Gg_CO2eq/yr',year_IPCC)                                 = sum(Water,valCO2I2(Water,Country,year_IPCC,'NZ')+valCO2NE2(Water,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.e','Other_Transportation','CO2','Gg_CO2eq/yr',year_IPCC)                                   = eps ;
IPCC(Country,'NZ','1.Energy','1.A.4','Residential&other_sectors','CO2','Gg_CO2eq/yr',year_IPCC)                                = sum(Other,valCO2I2(Other,Country,year_IPCC,'NZ')+valCO2NE2(Other,Country,year_IPCC,'NZ'))+valTCO2H(Country,year_IPCC,'NZ');
IPCC(Country,'NZ','1.Energy','1.A.5','Non-Specified','CO2','Gg_CO2eq/yr',year_IPCC)                                            = eps ;
IPCC(Country,'NZ','1.Energy','1.B.1','Solid_Fuels','CO2','Gg_CO2eq/yr',year_IPCC)                                              = NONCO2('1.B.1','CO2',Country)*valQ('02_COAL',Country,year_IPCC,'NZ')+eps;
IPCC(Country,'NZ','1.Energy','1.B.2','Oil&Natural_Gas','CO2','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('1.B.2','CO2',Country)*(valQ('03_OIL',Country,year_IPCC,'NZ')+valQ('04_GAS',Country,year_IPCC,'NZ'))+eps;

IPCC(Country,'NZ','2.IPPU','2.A.1','Cement_production','CO2','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('2.A.1','CO2',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.2','Lime_production','CO2','Gg_CO2eq/yr',year_IPCC)                                            = NONCO2('2.A.2','CO2',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.3','Glass_Production','CO2','Gg_CO2eq/yr',year_IPCC)                                           = NONCO2('2.A.3','CO2',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.4','Other_Process_Uses_of_Carbonates','CO2','Gg_CO2eq/yr',year_IPCC)                           = NONCO2('2.A.4','CO2',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.B','Chemical_Industry','CO2','Gg_CO2eq/yr',year_IPCC)                                            = NONCO2('2.B','CO2',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.C','Metal_Industry','CO2','Gg_CO2eq/yr',year_IPCC)                                               = NONCO2('2.C','CO2',Country)*valXS('13_IRONSTL','13_IRONSTL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.D','Non-Energy_Products_from_Fuels&Solvent_Use','CO2','Gg_CO2eq/yr',year_IPCC)                   = NONCO2('2.D','CO2',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.E','Electronics_Industry','CO2','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('2.E','CO2',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.F','Product_Uses_as_Substitutes_for_Ozone_Depleting_Substances','CO2','Gg_CO2eq/yr',year_IPCC)   = NONCO2('2.F','CO2',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.G','Other_Product_Manufacture&Use','CO2','Gg_CO2eq/yr',year_IPCC)                                = NONCO2('2.G','CO2',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','3.AFOLU','3.A.1','Enteric_Fermentation','CO2','Gg_CO2eq/yr',year_IPCC)                                      = NONCO2('3.A.1','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.A.2','Manure_Management','CO2','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('3.A.2','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.1','Emissions_from_biomass_burning','CO2','Gg_CO2eq/yr',year_IPCC)                            = NONCO2('3.C.1','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.2','Liming','CO2','Gg_CO2eq/yr',year_IPCC)                                                    = NONCO2('3.C.2','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ; 
IPCC(Country,'NZ','3.AFOLU','3.C.3','Urea_application','CO2','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('3.C.3','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.4','Direct_N2O_Emissions_from managed_soils','CO2','Gg_CO2eq/yr',year_IPCC)                   = NONCO2('3.C.4','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.5','Indirect_N2O_Emissions_from_managed_soils','CO2','Gg_CO2eq/yr',year_IPCC)                 = NONCO2('3.C.5','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.6','Indirect_N2O_Emissions_from_manure_management','CO2','Gg_CO2eq/yr',year_IPCC)             = NONCO2('3.C.6','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.7','Rice_cultivations','CO2','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('3.C.7','CO2',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','4.Waste','4.A','Solid_Waste_Disposal','CO2','Gg_CO2eq/yr',year_IPCC)                                        = NONCO2('4.A','CO2',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.B','Biological_Treatment_of_Solid_Waste','CO2','Gg_CO2eq/yr',year_IPCC)                         = NONCO2('4.B','CO2',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.C','Incineration&Open_Burning_of_Waste','CO2','Gg_CO2eq/yr',year_IPCC)                          = NONCO2('4.C','CO2',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.D','Wastewater_Treatment&Discharge','CO2','Gg_CO2eq/yr',year_IPCC)                              = NONCO2('4.D','CO2',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','5.Other','5.A','Indirect_N2O_emissions','CO2','Gg_CO2eq/yr',year_IPCC)                                      = NONCO2('5.A','CO2',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','5.Other','5.B','Fossil_fuel_fires','CO2','Gg_CO2eq/yr',year_IPCC)                                           = NONCO2('5.B','CO2',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;

*IPCC(Country,'NZ','6.M&A_Bunker','6.A','Marine_Bunker','CO2','Gg_CO2eq/yr',year_IPCC)                                          = valTCO2_Marine(Country,year_IPCC,'NZ')+eps ;
*IPCC(Country,'NZ','6.M&A_Bunker','6.B','Aviation_Bunker','CO2','Gg_CO2eq/yr',year_IPCC)                                        = valTCO2_Aviation(Country,year_IPCC,'NZ')+eps ;

*CH4
IPCC(Country,'NZ','1.Energy','1.A.1.a','Main_Electricity_Heat_Production','CH4','Gg_CO2eq/yr',year_IPCC)                       = sum(Supply_elec,valCH4I2(Supply_elec,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.1.bc','Petroleum_Refining','CH4','Gg_CO2eq/yr',year_IPCC)                                    = sum(Supply_petrol,valCH4I2(Supply_petrol,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.2','Manufacturing_Industries&Construction','CH4','Gg_CO2eq/yr',year_IPCC)                    = sum(Indcon,valCH4I2(Indcon,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.a','Civil_Aviation','CH4','Gg_CO2eq/yr',year_IPCC)                                         = sum(Air,valCH4I2(Air,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.b_noRES','Road_Transportation_no_resuspension','CH4','Gg_CO2eq/yr',year_IPCC)              = sum(Roadrail,valCH4I2(Roadrail,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.c','Railways','CH4','Gg_CO2eq/yr',year_IPCC)                                               = eps ;
IPCC(Country,'NZ','1.Energy','1.A.3.d','Water-borne_Navigation','CH4','Gg_CO2eq/yr',year_IPCC)                                 = sum(Water,valCH4I2(Water,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.e','Other_Transportation','CH4','Gg_CO2eq/yr',year_IPCC)                                   = eps ;
IPCC(Country,'NZ','1.Energy','1.A.4','Residential&other_sectors','CH4','Gg_CO2eq/yr',year_IPCC)                                = sum(Other,valCH4I2(Other,Country,year_IPCC,'NZ'))+valTCH4H(Country,year_IPCC,'NZ');
IPCC(Country,'NZ','1.Energy','1.A.5','Non-Specified','CH4','Gg_CO2eq/yr',year_IPCC)                                            = eps ;
IPCC(Country,'NZ','1.Energy','1.B.1','Solid_Fuels','CH4','Gg_CO2eq/yr',year_IPCC)                                              = NONCO2('1.B.1','CH4',Country)*valQ('02_COAL',Country,year_IPCC,'NZ')+eps;
IPCC(Country,'NZ','1.Energy','1.B.2','Oil&Natural_Gas','CH4','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('1.B.2','CH4',Country)*(valQ('03_OIL',Country,year_IPCC,'NZ')+valQ('04_GAS',Country,year_IPCC,'NZ'))+eps;

IPCC(Country,'NZ','2.IPPU','2.A.1','Cement_production','CH4','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('2.A.1','CH4',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.2','Lime_production','CH4','Gg_CO2eq/yr',year_IPCC)                                            = NONCO2('2.A.2','CH4',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.3','Glass_Production','CH4','Gg_CO2eq/yr',year_IPCC)                                           = NONCO2('2.A.3','CH4',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.4','Other_Process_Uses_of_Carbonates','CH4','Gg_CO2eq/yr',year_IPCC)                           = NONCO2('2.A.4','CH4',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.B','Chemical_Industry','CH4','Gg_CO2eq/yr',year_IPCC)                                            = NONCO2('2.B','CH4',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.C','Metal_Industry','CH4','Gg_CO2eq/yr',year_IPCC)                                               = NONCO2('2.C','CH4',Country)*valXS('13_IRONSTL','13_IRONSTL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.D','Non-Energy_Products_from_Fuels&Solvent_Use','CH4','Gg_CO2eq/yr',year_IPCC)                   = NONCO2('2.D','CH4',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.E','Electronics_Industry','CH4','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('2.E','CH4',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.F','Product_Uses_as_Substitutes_for_Ozone_Depleting_Substances','CH4','Gg_CO2eq/yr',year_IPCC)   = NONCO2('2.F','CH4',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.G','Other_Product_Manufacture&Use','CH4','Gg_CO2eq/yr',year_IPCC)                                = NONCO2('2.G','CH4',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','3.AFOLU','3.A.1','Enteric_Fermentation','CH4','Gg_CO2eq/yr',year_IPCC)                                      = NONCO2('3.A.1','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.A.2','Manure_Management','CH4','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('3.A.2','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.1','Emissions_from_biomass_burning','CH4','Gg_CO2eq/yr',year_IPCC)                            = NONCO2('3.C.1','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.2','Liming','CH4','Gg_CO2eq/yr',year_IPCC)                                                    = NONCO2('3.C.2','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ; 
IPCC(Country,'NZ','3.AFOLU','3.C.3','Urea_application','CH4','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('3.C.3','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.4','Direct_N2O_Emissions_from managed_soils','CH4','Gg_CO2eq/yr',year_IPCC)                   = NONCO2('3.C.4','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.5','Indirect_N2O_Emissions_from_managed_soils','CH4','Gg_CO2eq/yr',year_IPCC)                 = NONCO2('3.C.5','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.6','Indirect_N2O_Emissions_from_manure_management','CH4','Gg_CO2eq/yr',year_IPCC)             = NONCO2('3.C.6','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.7','Rice_cultivations','CH4','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('3.C.7','CH4',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','4.Waste','4.A','Solid_Waste_Disposal','CH4','Gg_CO2eq/yr',year_IPCC)                                        = NONCO2('4.A','CH4',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.B','Biological_Treatment_of_Solid_Waste','CH4','Gg_CO2eq/yr',year_IPCC)                         = NONCO2('4.B','CH4',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.C','Incineration&Open_Burning_of_Waste','CH4','Gg_CO2eq/yr',year_IPCC)                          = NONCO2('4.C','CH4',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.D','Wastewater_Treatment&Discharge','CH4','Gg_CO2eq/yr',year_IPCC)                              = NONCO2('4.D','CH4',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','5.Other','5.A','Indirect_N2O_emissions','CH4','Gg_CO2eq/yr',year_IPCC)                                      = NONCO2('5.A','CH4',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','5.Other','5.B','Fossil_fuel_fires','CH4','Gg_CO2eq/yr',year_IPCC)                                           = NONCO2('5.B','CH4',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;

*IPCC(Country,'NZ','6.M&A_Bunker','6.A','Marine_Bunker','CH4','Gg_CO2eq/yr',year_IPCC)                                          = valTCH4_Marine(Country,year_IPCC,'NZ')+eps ;
*IPCC(Country,'NZ','6.M&A_Bunker','6.B','Aviation_Bunker','CH4','Gg_CO2eq/yr',year_IPCC)                                        = valTCH4_Aviation(Country,year_IPCC,'NZ')+eps ;

*N2O
IPCC(Country,'NZ','1.Energy','1.A.1.a','Main_Electricity_Heat_Production','N2O','Gg_CO2eq/yr',year_IPCC)                       = sum(Supply_elec,valN2OI2(Supply_elec,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.1.bc','Petroleum_Refining','N2O','Gg_CO2eq/yr',year_IPCC)                                    = sum(Supply_petrol,valN2OI2(Supply_petrol,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.2','Manufacturing_Industries&Construction','N2O','Gg_CO2eq/yr',year_IPCC)                    = sum(Indcon,valN2OI2(Indcon,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.a','Civil_Aviation','N2O','Gg_CO2eq/yr',year_IPCC)                                         = sum(Air,valN2OI2(Air,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.b_noRES','Road_Transportation_no_resuspension','N2O','Gg_CO2eq/yr',year_IPCC)              = sum(Roadrail,valN2OI2(Roadrail,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.c','Railways','N2O','Gg_CO2eq/yr',year_IPCC)                                               = eps ;
IPCC(Country,'NZ','1.Energy','1.A.3.d','Water-borne_Navigation','N2O','Gg_CO2eq/yr',year_IPCC)                                 = sum(Water,valN2OI2(Water,Country,year_IPCC,'NZ'));
IPCC(Country,'NZ','1.Energy','1.A.3.e','Other_Transportation','N2O','Gg_CO2eq/yr',year_IPCC)                                   = eps ;
IPCC(Country,'NZ','1.Energy','1.A.4','Residential&other_sectors','N2O','Gg_CO2eq/yr',year_IPCC)                                = sum(Other,valN2OI2(Other,Country,year_IPCC,'NZ'))+valTN2OH(Country,year_IPCC,'NZ');
IPCC(Country,'NZ','1.Energy','1.A.5','Non-Specified','N2O','Gg_CO2eq/yr',year_IPCC)                                            = eps ;
IPCC(Country,'NZ','1.Energy','1.B.1','Solid_Fuels','N2O','Gg_CO2eq/yr',year_IPCC)                                              = NONCO2('1.B.1','N2O',Country)*valQ('02_COAL',Country,year_IPCC,'NZ')+eps;
IPCC(Country,'NZ','1.Energy','1.B.2','Oil&Natural_Gas','N2O','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('1.B.2','N2O',Country)*(valQ('03_OIL',Country,year_IPCC,'NZ')+valQ('04_GAS',Country,year_IPCC,'NZ'))+eps;

IPCC(Country,'NZ','2.IPPU','2.A.1','Cement_production','N2O','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('2.A.1','N2O',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.2','Lime_production','N2O','Gg_CO2eq/yr',year_IPCC)                                            = NONCO2('2.A.2','N2O',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.3','Glass_Production','N2O','Gg_CO2eq/yr',year_IPCC)                                           = NONCO2('2.A.3','N2O',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.A.4','Other_Process_Uses_of_Carbonates','N2O','Gg_CO2eq/yr',year_IPCC)                           = NONCO2('2.A.4','N2O',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.B','Chemical_Industry','N2O','Gg_CO2eq/yr',year_IPCC)                                            = NONCO2('2.B','N2O',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.C','Metal_Industry','N2O','Gg_CO2eq/yr',year_IPCC)                                               = NONCO2('2.C','N2O',Country)*valXS('13_IRONSTL','13_IRONSTL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.D','Non-Energy_Products_from_Fuels&Solvent_Use','N2O','Gg_CO2eq/yr',year_IPCC)                   = NONCO2('2.D','N2O',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.E','Electronics_Industry','N2O','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('2.E','N2O',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.F','Product_Uses_as_Substitutes_for_Ozone_Depleting_Substances','N2O','Gg_CO2eq/yr',year_IPCC)   = NONCO2('2.F','N2O',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','2.IPPU','2.G','Other_Product_Manufacture&Use','N2O','Gg_CO2eq/yr',year_IPCC)                                = NONCO2('2.G','N2O',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','3.AFOLU','3.A.1','Enteric_Fermentation','N2O','Gg_CO2eq/yr',year_IPCC)                                      = NONCO2('3.A.1','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.A.2','Manure_Management','N2O','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('3.A.2','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.1','Emissions_from_biomass_burning','N2O','Gg_CO2eq/yr',year_IPCC)                            = NONCO2('3.C.1','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.2','Liming','N2O','Gg_CO2eq/yr',year_IPCC)                                                    = NONCO2('3.C.2','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ; 
IPCC(Country,'NZ','3.AFOLU','3.C.3','Urea_application','N2O','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('3.C.3','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.4','Direct_N2O_Emissions_from managed_soils','N2O','Gg_CO2eq/yr',year_IPCC)                   = NONCO2('3.C.4','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.5','Indirect_N2O_Emissions_from_managed_soils','N2O','Gg_CO2eq/yr',year_IPCC)                 = NONCO2('3.C.5','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.6','Indirect_N2O_Emissions_from_manure_management','N2O','Gg_CO2eq/yr',year_IPCC)             = NONCO2('3.C.6','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','3.AFOLU','3.C.7','Rice_cultivations','N2O','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('3.C.7','N2O',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','4.Waste','4.A','Solid_Waste_Disposal','N2O','Gg_CO2eq/yr',year_IPCC)                                        = NONCO2('4.A','N2O',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.B','Biological_Treatment_of_Solid_Waste','N2O','Gg_CO2eq/yr',year_IPCC)                         = NONCO2('4.B','N2O',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.C','Incineration&Open_Burning_of_Waste','N2O','Gg_CO2eq/yr',year_IPCC)                          = NONCO2('4.C','N2O',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','4.Waste','4.D','Wastewater_Treatment&Discharge','N2O','Gg_CO2eq/yr',year_IPCC)                              = NONCO2('4.D','N2O',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;

IPCC(Country,'NZ','5.Other','5.A','Indirect_N2O_emissions','N2O','Gg_CO2eq/yr',year_IPCC)                                      = NONCO2('5.A','N2O',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;
IPCC(Country,'NZ','5.Other','5.B','Fossil_fuel_fires','N2O','Gg_CO2eq/yr',year_IPCC)                                           = NONCO2('5.B','N2O',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ') ;

*IPCC(Country,'NZ','6.M&A_Bunker','6.A','Marine_Bunker','N2O','Gg_CO2eq/yr',year_IPCC)                                          = valTN2O_Marine(Country,year_IPCC,'NZ')+eps ;
*IPCC(Country,'NZ','6.M&A_Bunker','6.B','Aviation_Bunker','N2O','Gg_CO2eq/yr',year_IPCC)                                        = valTN2O_Aviation(Country,year_IPCC,'NZ')+eps ;
*IPCC(Country,'NZ','6.M&A_Bunker','6.B','Aviation_Bunker','N2O','Gg_CO2eq/yr',year_IPCC)                                        = valTN2O_Aviation(Country,year_IPCC,'NZ')+eps ;

*F-gas
IPCC(Country,'NZ','1.Energy','1.A.1.a','Main_Electricity_Heat_Production','F-gas','Gg_CO2eq/yr',year_IPCC)                     = eps ;
IPCC(Country,'NZ','1.Energy','1.A.1.bc','Petroleum_Refining','F-gas','Gg_CO2eq/yr',year_IPCC)                                  = eps ;
IPCC(Country,'NZ','1.Energy','1.A.2','Manufacturing_Industries&Construction','F-gas','Gg_CO2eq/yr',year_IPCC)                  = eps ;
IPCC(Country,'NZ','1.Energy','1.A.3.a','Civil_Aviation','F-gas','Gg_CO2eq/yr',year_IPCC)                                       = eps ;
IPCC(Country,'NZ','1.Energy','1.A.3.b_noRES','Road_Transportation_no_resuspension','F-gas','Gg_CO2eq/yr',year_IPCC)            = eps ;
IPCC(Country,'NZ','1.Energy','1.A.3.c','Railways','F-gas','Gg_CO2eq/yr',year_IPCC)                                             = eps ;
IPCC(Country,'NZ','1.Energy','1.A.3.d','Water-borne_Navigation','F-gas','Gg_CO2eq/yr',year_IPCC)                               = eps ;
IPCC(Country,'NZ','1.Energy','1.A.3.e','Other_Transportation','F-gas','Gg_CO2eq/yr',year_IPCC)                                 = eps ;
IPCC(Country,'NZ','1.Energy','1.A.4','Residential&other_sectors','F-gas','Gg_CO2eq/yr',year_IPCC)                              = eps ;
IPCC(Country,'NZ','1.Energy','1.A.5','Non-Specified','F-gas','Gg_CO2eq/yr',year_IPCC)                                          = eps ;
IPCC(Country,'NZ','1.Energy','1.B.1','Solid_Fuels','F-gas','Gg_CO2eq/yr',year_IPCC)                                            = eps ;
IPCC(Country,'NZ','1.Energy','1.B.2','Oil&Natural_Gas','F-gas','Gg_CO2eq/yr',year_IPCC)                                        = eps ;

IPCC(Country,'NZ','2.IPPU','2.A.1','Cement_production','F-gas','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('2.A.1','F-gas',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.A.2','Lime_production','F-gas','Gg_CO2eq/yr',year_IPCC)                                            = NONCO2('2.A.2','F-gas',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.A.3','Glass_Production','F-gas','Gg_CO2eq/yr',year_IPCC)                                           = NONCO2('2.A.3','F-gas',Country)*valXS('12_Nonmet','12_Nonmet',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.A.4','Other_Process_Uses_of_Carbonates','F-gas','Gg_CO2eq/yr',year_IPCC)                           = NONCO2('2.A.4','F-gas',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.B','Chemical_Industry','F-gas','Gg_CO2eq/yr',year_IPCC)                                            = NONCO2('2.B','F-gas',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.C','Metal_Industry','F-gas','Gg_CO2eq/yr',year_IPCC)                                               = NONCO2('2.C','F-gas',Country)*valXS('13_IRONSTL','13_IRONSTL',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.D','Non-Energy_Products_from_Fuels&Solvent_Use','F-gas','Gg_CO2eq/yr',year_IPCC)                   = NONCO2('2.D','F-gas',Country)*valXS('11_CHEMICAL','11_CHEMICAL',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.E','Electronics_Industry','F-gas','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('2.E','F-gas',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.F','Product_Uses_as_Substitutes_for_Ozone_Depleting_Substances','F-gas','Gg_CO2eq/yr',year_IPCC)   = NONCO2('2.F','F-gas',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','2.IPPU','2.G','Other_Product_Manufacture&Use','F-gas','Gg_CO2eq/yr',year_IPCC)                                = NONCO2('2.G','F-gas',Country)*valXS('15_MACHINE','15_MACHINE',Country,year_IPCC,'NZ')+eps ;

IPCC(Country,'NZ','3.AFOLU','3.A.1','Enteric_Fermentation','F-gas','Gg_CO2eq/yr',year_IPCC)                                      = NONCO2('3.A.1','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','3.AFOLU','3.A.2','Manure_Management','F-gas','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('3.A.2','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','3.AFOLU','3.C.1','Emissions_from_biomass_burning','F-gas','Gg_CO2eq/yr',year_IPCC)                            = NONCO2('3.C.1','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','3.AFOLU','3.C.2','Liming','F-gas','Gg_CO2eq/yr',year_IPCC)                                                    = NONCO2('3.C.2','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ; 
IPCC(Country,'NZ','3.AFOLU','3.C.3','Urea_application','F-gas','Gg_CO2eq/yr',year_IPCC)                                          = NONCO2('3.C.3','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','3.AFOLU','3.C.4','Direct_N2O_Emissions_from managed_soils','F-gas','Gg_CO2eq/yr',year_IPCC)                   = NONCO2('3.C.4','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','3.AFOLU','3.C.5','Indirect_N2O_Emissions_from_managed_soils','F-gas','Gg_CO2eq/yr',year_IPCC)                 = NONCO2('3.C.5','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','3.AFOLU','3.C.6','Indirect_N2O_Emissions_from_manure_management','F-gas','Gg_CO2eq/yr',year_IPCC)             = NONCO2('3.C.6','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','3.AFOLU','3.C.7','Rice_cultivations','F-gas','Gg_CO2eq/yr',year_IPCC)                                         = NONCO2('3.C.7','F-gas',Country)*valXS('01_AGRICULT','01_AGRICULT',Country,year_IPCC,'NZ')+eps ;
 
IPCC(Country,'NZ','4.Waste','4.A','Solid_Waste_Disposal','F-gas','Gg_CO2eq/yr',year_IPCC)                                        = NONCO2('4.A','F-gas',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','4.Waste','4.B','Biological_Treatment_of_Solid_Waste','F-gas','Gg_CO2eq/yr',year_IPCC)                         = NONCO2('4.B','F-gas',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','4.Waste','4.C','Incineration&Open_Burning_of_Waste','F-gas','Gg_CO2eq/yr',year_IPCC)                          = NONCO2('4.C','F-gas',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','4.Waste','4.D','Wastewater_Treatment&Discharge','F-gas','Gg_CO2eq/yr',year_IPCC)                              = NONCO2('4.D','F-gas',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ')+eps ;
 
IPCC(Country,'NZ','5.Other','5.A','Indirect_N2O_emissions','F-gas','Gg_CO2eq/yr',year_IPCC)                                      = NONCO2('5.A','F-gas',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ')+eps ;
IPCC(Country,'NZ','5.Other','5.B','Fossil_fuel_fires','F-gas','Gg_CO2eq/yr',year_IPCC)                                           = NONCO2('5.B','F-gas',Country)*valGDP_MP_REAL(Country,year_IPCC,'NZ')+eps ;
    
execute_unload 'Output_CGE\NZ_Results_IPCC',
IPCC
 
;