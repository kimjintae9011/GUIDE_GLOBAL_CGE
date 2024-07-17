SET

model_IAMC
/
 'GUIDE-GLOBAL-CGE 1'     Guide Global Model
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
/
 'million',
 'billion USD_2010/yr',
 'Mt CO2/yr',
 'EJ/yr',
 'million t DM/yr',
 'Tg N/yr',
 'million ha'
/

year_IAMC(time)
/
 2019, 2020, 2025, 2030, 2035, 2040, 2045, 2050
* 2019*2050
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

Supply_liquid(J)
/
 03_OIL         Crude petroleum
 10_PETROLCOAL  Petroleum and coal products
/

Transportation(J)
/
 28_LTRP        Land transport service(road rail)
 29_WTRP        Water transport service
 30_ATRP        Air transport service
/
;

*======================= Reporting IAMC Platform =====================================================================
Scalar
GWhtoEJ GWh to EJ
ktoetoEJ ktoe to EJ
USD2019toUSD2010
;

GWhtoEJ  = 3.6/(10**6);
ktoetoEJ = 4.1868/(10**5) ;
USD2019toUSD2010 = 86.5/100 ;
*https://stats.oecd.org/index.aspx?DataSetCode=DACDEFL

Parameter

IAMC(model_IAMC, Scenario_name, z, variable_IAMC, Unit_IAMC, time) IAMC Format ;

*Scalar CF ktoe to Exajoule ;
*CF = 0.000041868 ;

*Total population
IAMC(model_IAMC, 'BAU', Country, 'Population', 'million', year_IAMC)                                    = TOT_POP(Country,year_IAMC) + eps ; 

*GDP|MER 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, 'BAU', Country,  'GDP|MER', 'billion USD_2010/yr', year_IAMC)                          = valGDP_MP_REAL(Country, year_IAMC,'BAU')*10*USD2019toUSD2010 + eps ; 

*Value Added|Agriculture 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, 'BAU', Country,  'Value Added|Agriculture', 'billion USD_2010/yr', year_IAMC)          = sum(Agriculture, valPVA(Agriculture, Country, year_IAMC,'bau')*valVA(Agriculture, Country, year_IAMC,'bau'))/valPIXGDP(Country, year_IAMC,'bau')*10*USD2019toUSD2010 + eps ; 

*Value Added|Industry 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, 'BAU', Country,  'Value Added|Industry', 'billion USD_2010/yr', year_IAMC)             = sum(Industry, valPVA(Industry, Country, year_IAMC,'bau')*valVA(Industry, Country, year_IAMC,'bau'))/valPIXGDP(Country, year_IAMC,'bau')*10*USD2019toUSD2010 + eps ; 

*Value Added|Services 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, 'BAU', Country,  'Value Added|Services', 'billion USD_2010/yr', year_IAMC)             = sum(Service, valPVA(Service, Country, year_IAMC,'bau')*valVA(Service, Country, year_IAMC,'bau'))/valPIXGDP(Country, year_IAMC,'bau')*10*USD2019toUSD2010 + eps ; 

*Emissions|CO2 (kt to Mt)
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2', 'Mt CO2/yr', year_IAMC)                               = valTCO2(Country,year_IAMC,'bau')/1000 + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy', 'Mt CO2/yr', year_IAMC)                        = valTCO2(Country,year_IAMC,'bau')/1000 + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Demand', 'Mt CO2/yr', year_IAMC)                 = [sum(Demand, valCO2I2(Demand,Country,year_IAMC,'bau')+valCO2NE2(Demand,Country,year_IAMC,'bau'))+valTCO2H(Country, year_IAMC,'bau')]/1000 + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Demand|AFOFI', 'Mt CO2/yr', year_IAMC)           = valCO2I2('01_AGRICULT',Country,year_IAMC,'bau')/1000 + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Demand|Commercial', 'Mt CO2/yr', year_IAMC)      = [valCO2I2('31_SER',Country,year_IAMC,'bau')+valCO2NE2('31_SER',Country,year_IAMC,'bau')]/1000 + eps ;  
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Demand|Industry', 'Mt CO2/yr', year_IAMC)        = sum(Industry2, valCO2I2(Industry2,Country,year_IAMC,'bau')+valCO2NE2(Industry2,Country,year_IAMC,'bau'))/1000 + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Demand|Other Sector', 'Mt CO2/yr', year_IAMC)    = eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Demand|Residential', 'Mt CO2/yr', year_IAMC)     = valTCO2H(Country, year_IAMC,'bau')/1000 + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Demand|Transportation', 'Mt CO2/yr', year_IAMC)  = sum(Transportation, valCO2I2(Transportation,Country,year_IAMC,'bau')+valCO2NE2(Transportation,Country,year_IAMC,'bau'))/1000 + eps;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Supply', 'Mt CO2/yr', year_IAMC)                 = sum(Supply, valCO2I2(Supply,Country,year_IAMC,'bau')+valCO2NE2(Supply,Country,year_IAMC,'bau'))/1000 + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Supply|Electricity', 'Mt CO2/yr', year_IAMC)     = sum(Supply_elec, valCO2I2(Supply_elec,Country,year_IAMC,'bau')+valCO2NE2(Supply_elec,Country,year_IAMC,'bau'))/1000 + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Supply|Gases', 'Mt CO2/yr', year_IAMC)           = [valCO2I2('04_GAS',Country,year_IAMC,'bau')+valCO2NE2('04_GAS',Country,year_IAMC,'bau')]/1000 + eps;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Supply|Heat', 'Mt CO2/yr', year_IAMC)            = eps; 
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Supply|Liquids', 'Mt CO2/yr', year_IAMC)         = sum(Supply_liquid, valCO2I2(Supply_liquid,Country,year_IAMC,'bau')+valCO2NE2(Supply_liquid,Country,year_IAMC,'bau'))/1000 + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Supply|Other', 'Mt CO2/yr', year_IAMC)           = eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Energy|Supply|Solids', 'Mt CO2/yr', year_IAMC)          = [valCO2I2('02_COAL',Country,year_IAMC,'bau')+valCO2NE2('02_COAL',Country,year_IAMC,'bau')]/1000 + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|Industrial Processes', 'Mt CO2/yr', year_IAMC)          = eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|AFOLU', 'Mt CO2/yr', year_IAMC)                         = eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|AFOLU|Land', 'Mt CO2/yr', year_IAMC)                    = eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|AFOLU|Land|Positive', 'Mt CO2/yr', year_IAMC)           = eps ;
IAMC(model_IAMC, 'BAU', Country, 'Emissions|CO2|AFOLU|Land|Negative', 'Mt CO2/yr', year_IAMC)           = eps ;

*Primary Energy (Direct equivalent method, Primary Energy Conumpiton)
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy', 'EJ/yr', year_IAMC)                                  = valTES(Country,year_IAMC,'bau')*ktoetoEJ + valElecGen('Bio',Country,year_IAMC,'bau')*GWhtoEJ + valElecGen('Geothermal',Country,year_IAMC,'bau')*GWhtoEJ + valElecGen('Hydro',Country,year_IAMC,'bau')*GWhtoEJ + valElecGen('Nuclear',Country,year_IAMC,'bau')*GWhtoEJ + valElecGen('Solar',Country,year_IAMC,'bau')*GWhtoEJ + valElecGen('Wind',Country,year_IAMC,'bau')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Biomass', 'EJ/yr', year_IAMC)                          = valElecGen('Bio',Country,year_IAMC,'bau')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Coal', 'EJ/yr', year_IAMC)                             = valTES_coal(Country,year_IAMC,'bau')*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Gas', 'EJ/yr', year_IAMC)                              = valTES_gas(Country,year_IAMC,'bau')*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Geothermal', 'EJ/yr', year_IAMC)                       = valElecGen('Geothermal',Country,year_IAMC,'bau')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Hydro', 'EJ/yr', year_IAMC)                            = valElecGen('Hydro',Country,year_IAMC,'bau')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Nuclear', 'EJ/yr', year_IAMC)                          = valElecGen('Nuclear',Country,year_IAMC,'bau')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Oil', 'EJ/yr', year_IAMC)                              = valTES_oil(Country,year_IAMC,'bau')*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Solar', 'EJ/yr', year_IAMC)                            = valElecGen('Solar',Country,year_IAMC,'bau')*GWhtoEJ + eps;
IAMC(model_IAMC, 'BAU', Country, 'Primary Energy|Wind', 'EJ/yr', year_IAMC)                             = valElecGen('Wind',Country,year_IAMC,'bau')*GWhtoEJ + eps;

*Secondary Energy (GWh to EJ)
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity', 'EJ/yr', year_IAMC)                    = valElecGen('Total',Country,year_IAMC,'bau')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Biomass', 'EJ/yr', year_IAMC)            = valElecGen('Bio',Country,year_IAMC,'bau')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Coal', 'EJ/yr', year_IAMC)               = valElecGen('Coal',Country,year_IAMC,'bau')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Gas', 'EJ/yr', year_IAMC)                = valElecGen('Gas',Country,year_IAMC,'bau')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Geothermal', 'EJ/yr', year_IAMC)         = valElecGen('Geothermal',Country,year_IAMC,'bau')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Hydro', 'EJ/yr', year_IAMC)              = valElecGen('Hydro',Country,year_IAMC,'bau')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Nuclear', 'EJ/yr', year_IAMC)            = valElecGen('Nuclear',Country,year_IAMC,'bau')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Oil', 'EJ/yr', year_IAMC)                = valElecGen('Oil',Country,year_IAMC,'bau')*GWhtoEJ + eps;
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Solar_PV', 'EJ/yr', year_IAMC)           = valElecGen('Solar',Country,year_IAMC,'bau')*GWhtoEJ + eps;
IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Electricity|Wind', 'EJ/yr', year_IAMC)               = valElecGen('Wind',Country,year_IAMC,'bau')*GWhtoEJ + eps;
*IAMC(model_IAMC, 'BAU', Country, 'Secondary Energy|Hydrogen', 'EJ/yr', year_IAMC)                       = eps ; 

*Final Energy (ktoe to EJ)
IAMC(model_IAMC, 'BAU', Country, 'Final Energy', 'EJ/yr', year_IAMC)                                    = {sum(product, valEH(product,Country,year_IAMC,'bau'))+Sum((product,Demand2),valEE(product,Demand2,Country,year_IAMC,'bau'))+Sum((product,Demand2),valNE(product,Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Gases', 'EJ/yr', year_IAMC)                              = {sum(p_gas,valEH(p_gas,Country,year_IAMC,'bau'))+ sum((p_gas, Demand2),valEE(p_gas,Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Geothermal', 'EJ/yr', year_IAMC)                         = {sum(p_geo,valEH(p_geo,Country,year_IAMC,'bau'))+ sum((p_geo, Demand2),valEE(p_geo,Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Heat', 'EJ/yr', year_IAMC)                               = {valEH('p64_HEAT',Country,year_IAMC,'bau')+ sum(Demand2,valEE('p64_HEAT',Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Electricity', 'EJ/yr', year_IAMC)                        = {valEH('p63_ELECTR',Country,year_IAMC,'bau')+ sum(Demand2,valEE('p63_ELECTR',Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Liquids', 'EJ/yr', year_IAMC)                            = {sum(p_liquids,valEH(p_liquids,Country,year_IAMC,'bau'))+ sum((p_liquids, Demand2),valEE(p_liquids,Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Solar', 'EJ/yr', year_IAMC)                              = {sum(p_solar,valEH(p_solar,Country,year_IAMC,'bau'))+ sum((p_solar, Demand2),valEE(p_solar,Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Solids', 'EJ/yr', year_IAMC)                             = {sum(p_coal,valEH(p_coal,Country,year_IAMC,'bau'))+ sum((p_coal, Demand2),valEE(p_coal,Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Solids|Biomass', 'EJ/yr', year_IAMC)                     = {sum(p_biowastecharcoal,valEH(p_biowastecharcoal,Country,year_IAMC,'bau'))+ sum((p_biowastecharcoal, Demand2),valEE(p_biowastecharcoal,Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Solids|Fossil', 'EJ/yr', year_IAMC)                      = {sum(p_coal,valEH(p_coal,Country,year_IAMC,'bau'))+ sum((p_coal, Demand2),valEE(p_coal,Demand2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Industry', 'EJ/yr', year_IAMC)                           = {sum((product,Industry2),valEE(product,Industry2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Non-Energy Use', 'EJ/yr', year_IAMC)                     = {sum((product,j),valNE(product,j,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Residential', 'EJ/yr', year_IAMC)                        = {sum(product,valEH(product,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Commercial', 'EJ/yr', year_IAMC)                         = {sum((product,Service2),valEE(product,Service2,Country,year_IAMC,'bau'))}*ktoetoEJ + eps ; 
IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Transportation', 'EJ/yr', year_IAMC)                     = {sum((product,Transportation),valEE(product,Transportation,Country,year_IAMC,'bau'))}*ktoetoEJ  + eps;
*IAMC(model_IAMC, 'BAU', Country, 'Final Energy|Hydrogen', 'EJ/yr', year_IAMC)                           = {eps}*ktoetoEJ ;

*Employment
IAMC(model_IAMC, 'BAU', Country, 'Employment', 'million', year_IAMC)                                    = SUM(j,EMPLOY(j,Country)*(valLDC(j,Country,year_IAMC,'bau')/valLDC(j,Country,'2019','bau')))/1000 ;
IAMC(model_IAMC, 'BAU', Country, 'Employment|Agriculture', 'million', year_IAMC)                        = SUM(Agriculture,EMPLOY(Agriculture,Country)*(valLDC(Agriculture,Country,year_IAMC,'bau')/valLDC(Agriculture,Country,'2019','bau')))/1000 ;
IAMC(model_IAMC, 'BAU', Country, 'Employment|Industry', 'million', year_IAMC)                           = SUM(Industry,EMPLOY(Industry,Country)*(valLDC(Industry,Country,year_IAMC,'bau')/valLDC(Industry,Country,'2019','bau')))/1000 ;
IAMC(model_IAMC, 'BAU', Country, 'Employment|Service', 'million', year_IAMC)                            = SUM(Service,EMPLOY(Service,Country)*(valLDC(Service,Country,year_IAMC,'bau')/valLDC(Service,Country,'2019','bau')))/1000 ;

execute_unload 'Output_w-t\Baseline_Results_IAMC_GreenEcos',
 IAMC
 
;