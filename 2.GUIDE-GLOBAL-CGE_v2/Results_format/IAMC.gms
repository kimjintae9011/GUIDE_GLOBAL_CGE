*======================= Reporting IAMC Platform =====================================================================
*Total population
IAMC(model_IAMC, '%CurrentSce%', Country, 'Population', 'million', year_IAMC)                                            = TOT_POP(Country,year_IAMC) + eps ; 

*GDP|MER 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, '%CurrentSce%', Country,  'GDP|MER', 'billion USD_2010/yr', year_IAMC)                          = valGDP_MP_REAL(Country, year_IAMC,'%CurrentSce%')*10*USD2019toUSD2010 + eps ; 

*Value Added|Agriculture 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, '%CurrentSce%', Country,  'Value Added|Agriculture', 'billion USD_2010/yr', year_IAMC)          = sum(Agriculture, valPVA(Agriculture, Country, year_IAMC,'%CurrentSce%')*valVA(Agriculture, Country, year_IAMC,'%CurrentSce%'))/valPIXGDP(Country, year_IAMC,'%CurrentSce%')*10*USD2019toUSD2010 + eps ; 

*Value Added|Industry 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, '%CurrentSce%', Country,  'Value Added|Industry', 'billion USD_2010/yr', year_IAMC)             = sum(Industry, valPVA(Industry, Country, year_IAMC,'%CurrentSce%')*valVA(Industry, Country, year_IAMC,'%CurrentSce%'))/valPIXGDP(Country, year_IAMC,'%CurrentSce%')*10*USD2019toUSD2010 + eps ; 

*Value Added|Services 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, '%CurrentSce%', Country,  'Value Added|Services', 'billion USD_2010/yr', year_IAMC)             = sum(Service, valPVA(Service, Country, year_IAMC,'%CurrentSce%')*valVA(Service, Country, year_IAMC,'%CurrentSce%'))/valPIXGDP(Country, year_IAMC,'%CurrentSce%')*10*USD2019toUSD2010 + eps ; 

*Emissions|CO2 (kt to Mt)
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy', 'Mt CO2/yr', year_IAMC)                        = valTCO2(Country,year_IAMC,'%CurrentSce%')/1000 + eps ; 
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Demand', 'Mt CO2/yr', year_IAMC)                 = [sum(Demand, valCO2I2(Demand,Country,year_IAMC,'%CurrentSce%')+valCO2NE2(Demand,Country,year_IAMC,'%CurrentSce%'))+valTCO2H(Country, year_IAMC,'%CurrentSce%')]/1000 + eps ; 
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Demand|AFOFI', 'Mt CO2/yr', year_IAMC)           = valCO2I2('01_AGRICULT',Country,year_IAMC,'%CurrentSce%')/1000 + eps ; 
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Demand|Commercial', 'Mt CO2/yr', year_IAMC)      = [valCO2I2('31_SER',Country,year_IAMC,'%CurrentSce%')+valCO2NE2('31_SER',Country,year_IAMC,'%CurrentSce%')]/1000 + eps ;  
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Demand|Industry', 'Mt CO2/yr', year_IAMC)        = sum(Industry2, valCO2I2(Industry2,Country,year_IAMC,'%CurrentSce%')+valCO2NE2(Industry2,Country,year_IAMC,'%CurrentSce%'))/1000 + eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Demand|Other Sector', 'Mt CO2/yr', year_IAMC)    = eps ; 
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Demand|Residential', 'Mt CO2/yr', year_IAMC)     = valTCO2H(Country, year_IAMC,'%CurrentSce%')/1000 + eps ; 
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Demand|Transportation', 'Mt CO2/yr', year_IAMC)  = sum(Transportation, valCO2I2(Transportation,Country,year_IAMC,'%CurrentSce%')+valCO2NE2(Transportation,Country,year_IAMC,'%CurrentSce%'))/1000 + eps;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Supply', 'Mt CO2/yr', year_IAMC)                 = sum(Supply, valCO2I2(Supply,Country,year_IAMC,'%CurrentSce%')+valCO2NE2(Supply,Country,year_IAMC,'%CurrentSce%'))/1000 + eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Supply|Electricity', 'Mt CO2/yr', year_IAMC)     = sum(Supply_elec, valCO2I2(Supply_elec,Country,year_IAMC,'%CurrentSce%')+valCO2NE2(Supply_elec,Country,year_IAMC,'%CurrentSce%'))/1000 + eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Supply|Gases', 'Mt CO2/yr', year_IAMC)           = [valCO2I2('04_GAS',Country,year_IAMC,'%CurrentSce%')+valCO2NE2('04_GAS',Country,year_IAMC,'%CurrentSce%')]/1000 + eps;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Supply|Heat', 'Mt CO2/yr', year_IAMC)            = eps; 
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Supply|Liquids', 'Mt CO2/yr', year_IAMC)         = sum(Supply_liquid, valCO2I2(Supply_liquid,Country,year_IAMC,'%CurrentSce%')+valCO2NE2(Supply_liquid,Country,year_IAMC,'%CurrentSce%'))/1000 + eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Supply|Other', 'Mt CO2/yr', year_IAMC)           = eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Energy|Supply|Solids', 'Mt CO2/yr', year_IAMC)          = [valCO2I2('02_COAL',Country,year_IAMC,'%CurrentSce%')+valCO2NE2('02_COAL',Country,year_IAMC,'%CurrentSce%')]/1000 + eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|Industrial Processes', 'Mt CO2/yr', year_IAMC)          = eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|AFOLU', 'Mt CO2/yr', year_IAMC)                         = eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|AFOLU|Land', 'Mt CO2/yr', year_IAMC)                    = eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|AFOLU|Land|Positive', 'Mt CO2/yr', year_IAMC)           = eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2|AFOLU|Land|Negative', 'Mt CO2/yr', year_IAMC)           = eps ;
IAMC(model_IAMC, '%CurrentSce%', Country, 'Emissions|CO2', 'Mt CO2/yr', year_IAMC)                               = valTCO2(Country,year_IAMC,'%CurrentSce%')/1000 + eps ; 


*Primary Energy (Direct equivalent method, Primary Energy Conumpiton)
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy', 'EJ/yr', year_IAMC)                                  = valTES(Country,year_IAMC,'%CurrentSce%')*ktoetoEJ + valElecGen('Bio',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + valElecGen('Geothermal',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + valElecGen('Hydro',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + valElecGen('Nuclear',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + valElecGen('Solar',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + valElecGen('Wind',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Biomass', 'EJ/yr', year_IAMC)                          = valElecGen('Bio',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Coal', 'EJ/yr', year_IAMC)                             = valTES_coal(Country,year_IAMC,'%CurrentSce%')*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Gas', 'EJ/yr', year_IAMC)                              = valTES_gas(Country,year_IAMC,'%CurrentSce%')*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Geothermal', 'EJ/yr', year_IAMC)                       = valElecGen('Geothermal',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Hydro', 'EJ/yr', year_IAMC)                            = valElecGen('Hydro',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Nuclear', 'EJ/yr', year_IAMC)                          = valElecGen('Nuclear',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Oil', 'EJ/yr', year_IAMC)                              = valTES_oil(Country,year_IAMC,'%CurrentSce%')*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Solar', 'EJ/yr', year_IAMC)                            = valElecGen('Solar',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Primary Energy|Wind', 'EJ/yr', year_IAMC)                             = valElecGen('Wind',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps;

*Secondary Energy (GWh to EJ)
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity', 'EJ/yr', year_IAMC)                    = valElecGen('Total',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Biomass', 'EJ/yr', year_IAMC)            = valElecGen('Bio',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Coal', 'EJ/yr', year_IAMC)               = valElecGen('Coal',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Gas', 'EJ/yr', year_IAMC)                = valElecGen('Gas',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Geothermal', 'EJ/yr', year_IAMC)         = valElecGen('Geothermal',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Hydro', 'EJ/yr', year_IAMC)              = valElecGen('Hydro',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Nuclear', 'EJ/yr', year_IAMC)            = valElecGen('Nuclear',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Oil', 'EJ/yr', year_IAMC)                = valElecGen('Oil',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Solar_PV', 'EJ/yr', year_IAMC)           = valElecGen('Solar',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Wind', 'EJ/yr', year_IAMC)               = valElecGen('Wind',Country,year_IAMC,'%CurrentSce%')*GWhtoEJ + eps;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Hydrogen', 'EJ/yr', year_IAMC)                       = eps ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity', 'EJ/yr', year_IAMC)                    = IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Biomass', 'EJ/yr', year_IAMC) 
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Coal', 'EJ/yr', year_IAMC)   
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Gas', 'EJ/yr', year_IAMC)   
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Geothermal', 'EJ/yr', year_IAMC)
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Hydro', 'EJ/yr', year_IAMC)  
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Nuclear', 'EJ/yr', year_IAMC)  
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Oil', 'EJ/yr', year_IAMC) 
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Solar_PV', 'EJ/yr', year_IAMC) 
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Secondary Energy|Electricity|Wind', 'EJ/yr', year_IAMC)  ;

*Final Energy (ktoe to EJ)
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy', 'EJ/yr', year_IAMC)                                    = {sum(product, valEH(product,Country,year_IAMC,'%CurrentSce%'))+Sum((product,Demand2),valEE(product,Demand2,Country,year_IAMC,'%CurrentSce%'))+Sum((product,Demand2),valNE(product,Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Gases', 'EJ/yr', year_IAMC)                              = {sum(p_gas,valEH(p_gas,Country,year_IAMC,'%CurrentSce%'))+ sum((p_gas, Demand2),valEE(p_gas,Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Geothermal', 'EJ/yr', year_IAMC)                         = {sum(p_geo,valEH(p_geo,Country,year_IAMC,'%CurrentSce%'))+ sum((p_geo, Demand2),valEE(p_geo,Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Heat', 'EJ/yr', year_IAMC)                               = {valEH('p64_HEAT',Country,year_IAMC,'%CurrentSce%')+ sum(Demand2,valEE('p64_HEAT',Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Electricity', 'EJ/yr', year_IAMC)                        = {valEH('p63_ELECTR',Country,year_IAMC,'%CurrentSce%')+ sum(Demand2,valEE('p63_ELECTR',Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Liquids', 'EJ/yr', year_IAMC)                            = {sum(p_liquids,valEH(p_liquids,Country,year_IAMC,'%CurrentSce%'))+ sum((p_liquids, Demand2),valEE(p_liquids,Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Solar', 'EJ/yr', year_IAMC)                              = {sum(p_solar,valEH(p_solar,Country,year_IAMC,'%CurrentSce%'))+ sum((p_solar, Demand2),valEE(p_solar,Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Solids|Biomass', 'EJ/yr', year_IAMC)                     = {sum(p_biowastecharcoal,valEH(p_biowastecharcoal,Country,year_IAMC,'%CurrentSce%'))+ sum((p_biowastecharcoal, Demand2),valEE(p_biowastecharcoal,Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Solids|Fossil', 'EJ/yr', year_IAMC)                      = {sum(p_coal,valEH(p_coal,Country,year_IAMC,'%CurrentSce%'))+ sum((p_coal, Demand2),valEE(p_coal,Demand2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Solids', 'EJ/yr', year_IAMC)                             = IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Solids|Biomass', 'EJ/yr', year_IAMC) 
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Solids|Fossil', 'EJ/yr', year_IAMC)  ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Hydrogen', 'EJ/yr', year_IAMC)                           = {eps}*ktoetoEJ ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Industry', 'EJ/yr', year_IAMC)                           = {sum((product,Industry2),valEE(product,Industry2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Non-Energy Use', 'EJ/yr', year_IAMC)                     = {sum((product,j),valNE(product,j,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Residential', 'EJ/yr', year_IAMC)                        = {sum(product,valEH(product,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Commercial', 'EJ/yr', year_IAMC)                         = {sum((product,Service2),valEE(product,Service2,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ + eps ; 
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Transportation', 'EJ/yr', year_IAMC)                     = {sum((product,Transportation),valEE(product,Transportation,Country,year_IAMC,'%CurrentSce%'))}*ktoetoEJ  + eps;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy', 'EJ/yr', year_IAMC)                                    = IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Gases', 'EJ/yr', year_IAMC)
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Geothermal', 'EJ/yr', year_IAMC)
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Heat', 'EJ/yr', year_IAMC) 
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Electricity', 'EJ/yr', year_IAMC)
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Liquids', 'EJ/yr', year_IAMC)
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Solar', 'EJ/yr', year_IAMC)
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Solids', 'EJ/yr', year_IAMC)
*                                                                                                        + IAMC(model_IAMC, '%CurrentSce%', Country, 'Final Energy|Hydrogen', 'EJ/yr', year_IAMC)  ;

*Employment
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Employment', 'million', year_IAMC)                                    = SUM(j,EMPLOY(j,Country)*(valLDC(j,Country,year_IAMC,'%CurrentSce%')/valLDC(j,Country,'2019','%CurrentSce%')))/1000 ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Employment|Agriculture', 'million', year_IAMC)                    = SUM(Agriculture,EMPLOY(Agriculture,Country)*(valLDC(Agriculture,Country,year_IAMC,'%CurrentSce%')/valLDC(Agriculture,Country,'2019','%CurrentSce%')))/1000 ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Employment|Industry', 'million', year_IAMC)                       = SUM(Industry,EMPLOY(Industry,Country)*(valLDC(Industry,Country,year_IAMC,'%CurrentSce%')/valLDC(Industry,Country,'2019','%CurrentSce%')))/1000 ;
*IAMC(model_IAMC, '%CurrentSce%', Country, 'Employment|Service', 'million', year_IAMC)                         = SUM(Service,EMPLOY(Service,Country)*(valLDC(Service,Country,year_IAMC,'%CurrentSce%')/valLDC(Service,Country,'2019','%CurrentSce%')))/1000 ;

execute_unload 'Output_CGE/IAMC_%CurrentSce%.gdx',

 IAMC
;