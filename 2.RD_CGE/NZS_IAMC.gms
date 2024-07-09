*Total population
IAMC(model_IAMC, 'NZS', Country, 'Population', 'million', year_IAMC)                                   = TOT_POP(Country,year_IAMC) + eps ; 

*GDP|MER 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, 'NZS', Country, 'GDP|MER', 'billion USD_2010/yr', year_IAMC)                          = valGDP_MP_REAL(Country, year_IAMC,'NZS')*10*USD2019toUSD2010 + eps ; 

*Value Added|Agriculture 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, 'NZS', Country, 'Value Added|Agriculture', 'billion USD_2010/yr', year_IAMC)          = sum(Agriculture, valPVA(Agriculture, Country, year_IAMC,'NZS')*valVA(Agriculture, Country, year_IAMC,'NZS'))/valPIXGDP(Country, year_IAMC,'NZS')*10*USD2019toUSD2010 + eps ; 

*Value Added|Industry 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, 'NZS', Country, 'Value Added|Industry', 'billion USD_2010/yr', year_IAMC)             = sum(Industry, valPVA(Industry, Country, year_IAMC,'NZS')*valVA(Industry, Country, year_IAMC,'NZS'))/valPIXGDP(Country, year_IAMC,'NZS')*10*USD2019toUSD2010 + eps ; 

*Value Added|Services 10$billion$ to billion$ (Nonimal, 10billion to billion)
IAMC(model_IAMC, 'NZS', Country, 'Value Added|Services', 'billion USD_2010/yr', year_IAMC)             = sum(Service, valPVA(Service, Country, year_IAMC,'NZS')*valVA(Service, Country, year_IAMC,'NZS'))/valPIXGDP(Country, year_IAMC,'NZS')*10*USD2019toUSD2010 + eps ; 

*Emissions|CO2 (kt to Mt)
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2', 'Mt CO2/yr', year_IAMC)                               = valTCO2(Country,year_IAMC,'NZS')/1000 ; 
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy', 'Mt CO2/yr', year_IAMC)                        = valTCO2(Country,year_IAMC,'NZS')/1000 ; 
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Demand', 'Mt CO2/yr', year_IAMC)                 = [sum(Demand, valCO2I2(Demand,Country,year_IAMC,'NZS')+valCO2NE2(Demand,Country,year_IAMC,'NZS'))+valTCO2H(Country, year_IAMC,'NZS')]/1000 + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Demand|AFOFI', 'Mt CO2/yr', year_IAMC)           = valCO2I2('01_AGRICULT',Country,year_IAMC,'NZS')/1000 + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Demand|Commercial', 'Mt CO2/yr', year_IAMC)      = [valCO2I2('31_SER',Country,year_IAMC,'NZS')+valCO2NE2('31_SER',Country,year_IAMC,'NZS')]/1000 + eps ;  
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Demand|Industry', 'Mt CO2/yr', year_IAMC)        = sum(Industry2, valCO2I2(Industry2,Country,year_IAMC,'NZS')+valCO2NE2(Industry2,Country,year_IAMC,'NZS'))/1000 + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Demand|Other Sector', 'Mt CO2/yr', year_IAMC)    = eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Demand|Residential', 'Mt CO2/yr', year_IAMC)     = valTCO2H(Country, year_IAMC,'NZS')/1000 + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Demand|Transportation', 'Mt CO2/yr', year_IAMC)  = sum(Transportation, valCO2I2(Transportation,Country,year_IAMC,'NZS')+valCO2NE2(Transportation,Country,year_IAMC,'NZS'))/1000 + eps;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Supply', 'Mt CO2/yr', year_IAMC)                 = sum(Supply, valCO2I2(Supply,Country,year_IAMC,'NZS')+valCO2NE2(Supply,Country,year_IAMC,'NZS'))/1000 + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Supply|Electricity', 'Mt CO2/yr', year_IAMC)     = sum(Supply_elec, valCO2I2(Supply_elec,Country,year_IAMC,'NZS')+valCO2NE2(Supply_elec,Country,year_IAMC,'NZS'))/1000 + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Supply|Gases', 'Mt CO2/yr', year_IAMC)           = [valCO2I2('04_GAS',Country,year_IAMC,'NZS')+valCO2NE2('04_GAS',Country,year_IAMC,'NZS')]/1000 + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Supply|Heat', 'Mt CO2/yr', year_IAMC)            = eps; 
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Supply|Liquids', 'Mt CO2/yr', year_IAMC)         = sum(Supply_liquid, valCO2I2(Supply_liquid,Country,year_IAMC,'NZS')+valCO2NE2(Supply_liquid,Country,year_IAMC,'NZS'))/1000 + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Supply|Other', 'Mt CO2/yr', year_IAMC)           = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Energy|Supply|Solids', 'Mt CO2/yr', year_IAMC)          = [valCO2I2('02_COAL',Country,year_IAMC,'NZS')+valCO2NE2('02_COAL',Country,year_IAMC,'NZS')]/1000 + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|Industrial Processes', 'Mt CO2/yr', year_IAMC)          = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|AFOLU', 'Mt CO2/yr', year_IAMC)                         = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|AFOLU|Land', 'Mt CO2/yr', year_IAMC)                    = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|AFOLU|Land|Positive', 'Mt CO2/yr', year_IAMC)           = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Emissions|CO2|AFOLU|Land|Negative', 'Mt CO2/yr', year_IAMC)           = eps ;

*Primary Energy (Direct equivalent method, Primary Energy Conumpiton)
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy', 'EJ/yr', year_IAMC)                                  = valTES(Country,year_IAMC,'NZS')*ktoetoEJ + valElecGen('Bio',Country,year_IAMC,'NZS')*GWhtoEJ + valElecGen('Geothermal',Country,year_IAMC,'NZS')*GWhtoEJ + valElecGen('Hydro',Country,year_IAMC,'NZS')*GWhtoEJ + valElecGen('Nuclear',Country,year_IAMC,'NZS')*GWhtoEJ + valElecGen('Solar',Country,year_IAMC,'NZS')*GWhtoEJ + valElecGen('Wind',Country,year_IAMC,'NZS')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Biomass', 'EJ/yr', year_IAMC)                          = valElecGen('Bio',Country,year_IAMC,'NZS')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Coal', 'EJ/yr', year_IAMC)                             = valTES_coal(Country,year_IAMC,'NZS')*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Gas', 'EJ/yr', year_IAMC)                              = valTES_gas(Country,year_IAMC,'NZS')*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Geothermal', 'EJ/yr', year_IAMC)                       = valElecGen('Geothermal',Country,year_IAMC,'NZS')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Hydro', 'EJ/yr', year_IAMC)                            = valElecGen('Hydro',Country,year_IAMC,'NZS')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Nuclear', 'EJ/yr', year_IAMC)                          = valElecGen('Nuclear',Country,year_IAMC,'NZS')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Oil', 'EJ/yr', year_IAMC)                              = valTES_oil(Country,year_IAMC,'NZS')*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Solar', 'EJ/yr', year_IAMC)                            = valElecGen('Solar',Country,year_IAMC,'NZS')*GWhtoEJ + eps;
IAMC(model_IAMC, 'NZS', Country, 'Primary Energy|Wind', 'EJ/yr', year_IAMC)                             = valElecGen('Wind',Country,year_IAMC,'NZS')*GWhtoEJ + eps;

*Secondary Energy (GWh to EJ)
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity', 'EJ/yr', year_IAMC)                    = valElecGen('Total',Country,year_IAMC,'NZS')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Biomass|w/ CCS', 'EJ/yr', year_IAMC)     = eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Biomass|w/o CCS', 'EJ/yr', year_IAMC)    = valElecGen('Bio',Country,year_IAMC,'NZS')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Coal|w/ CCS', 'EJ/yr', year_IAMC)        = eps ;  
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Coal|w/o CCS', 'EJ/yr', year_IAMC)       = valElecGen('Coal',Country,year_IAMC,'NZS')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Gas|w/ CCS', 'EJ/yr', year_IAMC)         = eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Gas|w/o CCS', 'EJ/yr', year_IAMC)        = valElecGen('Gas',Country,year_IAMC,'NZS')*GWhtoEJ + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Geothermal', 'EJ/yr', year_IAMC)         = valElecGen('Geothermal',Country,year_IAMC,'NZS')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Hydro', 'EJ/yr', year_IAMC)              = valElecGen('Hydro',Country,year_IAMC,'NZS')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Nuclear', 'EJ/yr', year_IAMC)            = valElecGen('Nuclear',Country,year_IAMC,'NZS')*GWhtoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Oil|w/ CCS', 'EJ/yr', year_IAMC)         = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Oil|w/o CCS', 'EJ/yr', year_IAMC)        = valElecGen('Oil',Country,year_IAMC,'NZS')*GWhtoEJ + eps;
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Solar|CSP', 'EJ/yr', year_IAMC)          = eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Solar|PV', 'EJ/yr', year_IAMC)           = valElecGen('Solar',Country,year_IAMC,'NZS')*GWhtoEJ + eps;
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Wind|Offshore', 'EJ/yr', year_IAMC)      = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Electricity|Wind|Onshore', 'EJ/yr', year_IAMC)       = valElecGen('Wind',Country,year_IAMC,'NZS')*GWhtoEJ + eps;
IAMC(model_IAMC, 'NZS', Country, 'Secondary Energy|Hydrogen', 'EJ/yr', year_IAMC)                       = eps ; 

*Final Energy (ktoe to EJ)
IAMC(model_IAMC, 'NZS', Country, 'Final Energy', 'EJ/yr', year_IAMC)                                    = {sum(product, valEH(product,Country,year_IAMC,'NZS'))+Sum((product,Demand2),valEE(product,Demand2,Country,year_IAMC,'NZS'))+Sum((product,Demand2),valNE(product,Demand2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Gases', 'EJ/yr', year_IAMC)                              = {sum(p_gas,valEH(p_gas,Country,year_IAMC,'NZS'))+ sum((p_gas, Demand2),valEE(p_gas,Demand2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Geothermal', 'EJ/yr', year_IAMC)                         = {eps}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Heat', 'EJ/yr', year_IAMC)                               = {valEH('p64_HEAT',Country,year_IAMC,'NZS')+ sum(Demand2,valEE('p64_HEAT',Demand2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Electricity', 'EJ/yr', year_IAMC)                        = {valEH('p63_ELECTR',Country,year_IAMC,'NZS')+ sum(Demand2,valEE('p63_ELECTR',Demand2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Hydrogen', 'EJ/yr', year_IAMC)                           = {eps}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Liquids', 'EJ/yr', year_IAMC)                            = {sum(p_liquids,valEH(p_liquids,Country,year_IAMC,'NZS'))+ sum((p_liquids, Demand2),valEE(p_liquids,Demand2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Solar', 'EJ/yr', year_IAMC)                              = {eps}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Solids', 'EJ/yr', year_IAMC)                             = {sum(p_coal,valEH(p_coal,Country,year_IAMC,'NZS'))+ sum((p_coal, Demand2),valEE(p_coal,Demand2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Solids|Biomass', 'EJ/yr', year_IAMC)                     = {eps}*ktoetoEJ ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Solids|Fossil', 'EJ/yr', year_IAMC)                      = {sum(p_coal,valEH(p_coal,Country,year_IAMC,'NZS'))+ sum((p_coal, Demand2),valEE(p_coal,Demand2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Industry', 'EJ/yr', year_IAMC)                           = {sum((product,Industry2),valEE(product,Industry2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Non-Energy Use', 'EJ/yr', year_IAMC)                     = {sum((product,j),valNE(product,j,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Residential', 'EJ/yr', year_IAMC)                        = {sum(product,valEH(product,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Commercial', 'EJ/yr', year_IAMC)                         = {sum((product,Service2),valEE(product,Service2,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ; 
IAMC(model_IAMC, 'NZS', Country, 'Final Energy|Transportation', 'EJ/yr', year_IAMC)                     = {sum((product,Transportation),valEE(product,Transportation,Country,year_IAMC,'NZS'))}*ktoetoEJ + eps ;

*Agricultural Production
IAMC(model_IAMC, 'NZS', Country, 'Agricultural Production|Energy', 'million t DM/yr', year_IAMC)            = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Agricultural Production|Energy|Crops', 'million t DM/yr', year_IAMC)      = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Agricultural Production|Non-Energy', 'million t DM/yr', year_IAMC)        = eps ;

*Fertilizer Use
IAMC(model_IAMC, 'NZS', Country, 'Fertilizer Use|Nitrogen', 'Tg N/yr', year_IAMC)                           = eps ;

*Land Cover
IAMC(model_IAMC, 'NZS', Country, 'Land Cover', 'million ha', year_IAMC)                                        = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Land Cover|Built-up Area', 'million ha', year_IAMC)                          = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Land Cover|Cropland', 'million ha', year_IAMC)                               = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Land Cover|Forest', 'million ha', year_IAMC)                                 = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Land Cover|Forest|Afforestation and Reforestation', 'million ha', year_IAMC) = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Land Cover|Forest|Natural Forest', 'million ha', year_IAMC)                  = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Land Cover|Other Arable Land', 'million ha', year_IAMC)                      = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Land Cover|Other Land', 'million ha', year_IAMC)                             = eps ;
IAMC(model_IAMC, 'NZS', Country, 'Land Cover|Pasture', 'million ha', year_IAMC)                                = eps ;

$ontext
*total consumption of all goods, by all consumers in a region
IAMC(model_IAMC,'NZS',z,'Consumption','billion US$2010/yr','2019') = sum(i,valDD(i,z,'NZS'))*10*USD2010(z,'NZS') ;

*GDP at market exchange rate
IAMC(model_IAMC,'NZS',z,'GDP|MER','billion US$2010/yr','2019') = GDPMER(z,'2019')/10**9*(valGDP_FD(z,'NZS')/GDP_FDO(z))*USD2010(z,'NZS') ;

*GDP at PPP exchange rate
IAMC(model_IAMC,'NZS',z,'GDP|PPP','billion US$2010/yr','2019') = (GDPMER(z,'2019')/10**9*PPPexr(z))*(valGDP_FD(z,'NZS')/GDP_FDO(z))*USD2010(z,'NZS') ;

*Macroeconomic capital stock
IAMC(model_IAMC,'NZS',z,'Capital Stock','billion US$2010/yr','2019') =  valCAPSTOCK(z,'NZS')*10*USD2010(z,'NZS') ;

*value added of the agricultural sector
IAMC(model_IAMC,'NZS',z,'Value Added|Agriculture','billion US$2010/yr','2019') = valVA('01_AGRICULT',z,'NZS')*10*USD2010(z,'NZS') ;

*value added of the commercial sector
IAMC(model_IAMC,'NZS',z,'Value Added|Commercial','billion US$2010/yr','2019') = sum(Commercial_J, valVA(Commercial_J,z,'NZS'))*10*USD2010(z,'NZS');

*Value Added|Industry
IAMC(model_IAMC,'NZS',z,'Value Added|Industry','billion US$2010/yr','2019') = sum(Industry, valVA(Industry,z,'NZS'))*10*USD2010(z,'NZS') ;

*value added of the chemical industries.
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Chemicals','billion US$2010/yr','2019') = valVA('11_CHEMICAL',z,'NZS')*10*USD2010(z,'NZS') ;

*value added of iron and steel production
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Iron and Steel','billion US$2010/yr','2019') = valVA('13_IRONSTL',z,'NZS')*10*USD2010(z,'NZS') ;

*value added of non-metallic minerals industries
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Metallic Minerals','billion US$2010/yr','2019') = valVA('12_NONMET',z,'NZS')*10*USD2010(z,'NZS') ;

*value added of the pulp and paper sector
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Pulp and Paper','billion US$2010/yr','2019') = valVA('08_WOODPRO',z,'NZS')*10*USD2010(z,'NZS') ;

*value added of the non-ferrous metals sector
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Ferrous metals','billion US$2010/yr','2019') = valVA('14_NONFERR',z,'NZS')*10*USD2010(z,'NZS') ;

*value added of all other industry sectors
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Ferrous metals','billion US$2010/yr','2019') =

IAMC(model_IAMC,'NZS',z,'Value Added|Industry','billion US$2010/yr','2019')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Chemicals','billion US$2010/yr','2019')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Iron and Steel','billion US$2010/yr','2019')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Metallic Minerals','billion US$2010/yr','2019')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Pulp and Paper','billion US$2010/yr','2019')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Ferrous metals','billion US$2010/yr','2019')
;

*production of the agriculture sector
IAMC(model_IAMC,'NZS',z,'Production|Agriculture|Value','billion US$2010/yr','2019') =   (valDS('01_AGRICULT',z,'NZS')+ valEXT('01_AGRICULT',z,'NZS'))*10*USD2010(z,'NZS') ;

*production of the commercial sector
IAMC(model_IAMC,'NZS',z,'Production|Commerical|Value','billion US$2010/yr','2019') =  sum(Commercial_J, valXS(Commercial_J,z,'NZS'))*10*USD2010(z,'NZS') ;

*production of the industry sector
IAMC(model_IAMC,'NZS',z,'Production|Industry|Value','billion US$2010/yr','2019') =   sum(Industry, valXS(Industry,z,'NZS'))*10*USD2010(z,'NZS');

*production of chemicals
IAMC(model_IAMC,'NZS',z,'Production|Chemicals|Value','billion US$2010/yr','2019') =  (valDS('11_CHEMICAL',z,'NZS')+ valEXT('11_CHEMICAL',z,'NZS'))*10*USD2010(z,'NZS') ;

*production of steel
IAMC(model_IAMC,'NZS',z,'Production|Iron and Steel|Value','billion US$2010/yr','2019') =  (valDS('13_IRONSTL',z,'NZS')+ valEXT('13_IRONSTL',z,'NZS'))*10*USD2010(z,'NZS') ;

*production of non-metallic minerals
IAMC(model_IAMC,'NZS',z,'Production|Non-Metallic Minerals|Value','billion US$2010/yr','2019') =  (valDS('12_NONMET',z,'NZS')+ valEXT('12_NONMET',z,'NZS'))*10*USD2010(z,'NZS') ;

*production of pulp and paper
IAMC(model_IAMC,'NZS',z,'Production|Pulp and Paper|Value','billion US$2010/yr','2019') =  (valDS('08_WOODPRO',z,'NZS')+ valEXT('08_WOODPRO',z,'NZS'))*10*USD2010(z,'NZS') ;

*production of non-ferrous metals (e.g., aluminum)
IAMC(model_IAMC,'NZS',z,'Production|Non-Ferrous Metals|Value','billion US$2010/yr','2019') =  (valDS('14_NONFERR',z,'NZS')+ valEXT('14_NONFERR',z,'NZS'))*10*USD2010(z,'NZS') ;

*production of other industry products
IAMC(model_IAMC,'NZS',z,'Production|Other Sector|Value','billion US$2010/yr','2019') =
IAMC(model_IAMC,'NZS',z,'Production|Industry|Value','billion US$2010/yr','2019')
-IAMC(model_IAMC,'NZS',z,'Production|Chemicals|Value','billion US$2010/yr','2019')
-IAMC(model_IAMC,'NZS',z,'Production|Iron and Steel|Value','billion US$2010/yr','2019')
-IAMC(model_IAMC,'NZS',z,'Production|Non-Metallic Minerals|Value','billion US$2010/yr','2019')
-IAMC(model_IAMC,'NZS',z,'Production|Pulp and Paper|Value','billion US$2010/yr','2019')
-IAMC(model_IAMC,'NZS',z,'Production|Non-Ferrous Metals|Value','billion US$2010/yr','2019')
;

*total government expenditure
IAMC(model_IAMC,'NZS',z,'Expenditure|Government','billion US$2010/yr','2019') = valG(z,'NZS')*10*USD2010(z,'NZS') ;

*government revenue
*IAMC(model_IAMC,'NZS',z,'Revenue|government','billion US$2010/yr','2019') =  ;

*government revenue from taxes
*IAMC(model_IAMC,'NZS',z,'Revenue|government|Tax','billion US$2010/yr','2019') =  ;

*Total household expenditure
IAMC(model_IAMC,'NZS',z,'Expenditure|Household','billion US$2010/yr','2019') = sum(i,valC(i,z,'NZS'))*10*USD2010(z,'NZS') ;

*Expenditure of households for industrial goods
IAMC(model_IAMC,'NZS',z,'Expenditure|household|Industry','billion US$2010/yr','2019') = sum(Industrial_goods,valC(Industrial_goods,z,'NZS'))*10*USD2010(z,'NZS') ;

*Expenditure of households for energy
IAMC(model_IAMC,'NZS',z,'Expenditure|household|Energy','billion US$2010/yr','2019') = sum(Energy_goods,valC(Energy_goods,z,'NZS'))*10*USD2010(z,'NZS');

*Expenditure of households for food
IAMC(model_IAMC,'NZS',z,'Expenditure|household|Food','billion US$2010/yr','2019') = sum(Food,valC(Food,z,'NZS'))*10*USD2010(z,'NZS') ;

*Expenditure of households for services
IAMC(model_IAMC,'NZS',z,'Expenditure|household|Services','billion US$2010/yr','2019') = sum(Services,valC(Services,z,'NZS'))*10*USD2010(z,'NZS') ;

*Total exports measured in monetary quantities.
IAMC(model_IAMC,'NZS',z,'Export','billion US$2010/yr','2019') = sum((i,zj),valEX(i,z,zj,'NZS'))*10*USD2010(z,'NZS') ;
*valEX(i,z,zj,'NZS') Quantity of product i exported by country z to country zj

*Total imports measured in monetary quantities.
IAMC(model_IAMC,'NZS',z,'Import','billion US$2010/yr','2019') = sum((i,zj),valIM(i,zj,z,'NZS'))*10*USD2010(z,'NZS') ;
*valIM(i,zj,z,scen) Quantity of product i imported by country z from country zj

*Weighted trade tariff-average (regional and global indicator relevant)
IAMC(model_IAMC,'NZS',z,'Tariffs|Average','%','2019') =  [sum((i,zj),valTIM(i,zj,z,'NZS'))/ sum((i,zj),valIM(i,zj,z,'NZS'))]*100;

*CO2 emission
IAMC(model_IAMC,'NZS',z,'Emissions|CO2|Energy|Demand|Residential and Commercial','Mt CO2/yr','2019')  = {sum(product, valCO2I(product,'31_SER',z,'NZS') +  valCO2H(product,z,'NZS'))}/1000 ;
*IAMC(model_IAMC,'NZS',z,'Emissions|CO2|Energy|Demand|Residential and Commercial|Commercial','Mt CO2/yr','2019')  = {sum(product, valCO2I(product,'31_SER',z,'NZS') +  valCO2H(product,z,'NZS'))}/1000 ;


*CH4 emission
IAMC(model_IAMC,'NZS',z,'Emissions|CH4|Energy|Demand|Residential and Commercial','Mt CH4/yr','2019') = {sum(product, valCH4I(product,'31_SER',z,'NZS') +  valCH4H(product,z,'NZS'))}/1000000/GWP('CH4EF') ;

*N2O emission
IAMC(model_IAMC,'NZS',z,'Emissions|N2O|Energy|Demand|Residential and Commercial','kt N2O/yr','2019') = {sum(product, valN2OI(product,'31_SER',z,'NZS') +  valN2OH(product,z,'NZS'))}/1000000/GWP('N2OEF')*1000 ;

*Final energy
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial','EJ/yr','2019') = { sum((p_ftotal),valEE(p_ftotal,'31_SER',z,'NZS')) + sum(p_ftotal, valEH(p_ftotal,z,'NZS'))}*CF ;

IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Electricity','EJ/yr','2019')   = {valEE('p63_ELECTR','31_SER',z,'NZS') + valEH('p63_ELECTR',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Gases','EJ/yr','2019')         = {sum(p_gas, valEE(p_gas,'31_SER',z,'NZS') + valEH(p_gas,z,'NZS'))}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Heat','EJ/yr','2019')          = {valEE('p64_HEAT','31_SER',z,'NZS') + valEH('p64_HEAT',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids','EJ/yr','2019')        = {sum(p_coal, valEE(p_coal,'31_SER',z,'NZS') + valEH(p_coal,z,'NZS'))}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids','EJ/yr','2019')       = {sum(p_liquid, valEE(p_liquid,'31_SER',z,'NZS') + valEH(p_liquid,z,'NZS'))}*CF ;

*Solids
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|ANTCOAL','EJ/yr','2019') = {valEE('p3_ANTCOAL','31_SER',z,'NZS') + valEH('p3_ANTCOAL',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|COKCOAL','EJ/yr','2019') = {valEE('p4_COKCOAL','31_SER',z,'NZS') + valEH('p4_COKCOAL',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|BITCOAL','EJ/yr','2019') = {valEE('p5_BITCOAL','31_SER',z,'NZS') + valEH('p5_BITCOAL',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|SUBCOAL','EJ/yr','2019') = {valEE('p6_SUBCOAL','31_SER',z,'NZS') + valEH('p6_SUBCOAL',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|LIGNITE','EJ/yr','2019') = {valEE('p7_LIGNITE','31_SER',z,'NZS') + valEH('p7_LIGNITE',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|BKB','EJ/yr','2019')     = {valEE('p12_BKB','31_SER',z,'NZS') + valEH('p12_BKB',z,'NZS')}*CF ;

*Gases
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Gases|GASWKSGS','EJ/yr','2019') = {valEE('p13_GASWKSGS','31_SER',z,'NZS') + valEH('p13_GASWKSGS',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Gases|NATGAS','EJ/yr','2019')   = {valEE('p20_NATGAS','31_SER',z,'NZS') + valEH('p20_NATGAS',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Gases|NGL','EJ/yr','2019')      = {valEE('p23_NGL','31_SER',z,'NZS') + valEH('p23_NGL',z,'NZS')}*CF ;

*Liquids - energy
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|LPG','EJ/yr','2019')           = {valEE('p29_LPG','31_SER',z,'NZS') +  valEH('p29_LPG',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|NONBIOGASO','EJ/yr','2019')    = {valEE('p30_NONBIOGASO','31_SER',z,'NZS') +  valEH('p30_NONBIOGASO',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|AVGAS','EJ/yr','2019')         = {valEE('p31_AVGAS','31_SER',z,'NZS') +  valEH('p31_AVGAS',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|JETGAS','EJ/yr','2019')        = {valEE('p32_JETGAS','31_SER',z,'NZS') +  valEH('p32_JETGAS',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|NONBIOJETK','EJ/yr','2019')    = {valEE('p33_NONBIOJETK','31_SER',z,'NZS')+  valEH('p33_NONBIOJETK',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|OTHKERO','EJ/yr','2019')       = {valEE('p34_OTHKERO','31_SER',z,'NZS') +  valEH('p34_OTHKERO',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|NONBIODIES','EJ/yr','2019')    = {valEE('p35_NONBIODIES','31_SER',z,'NZS') +  valEH('p35_NONBIODIES',z,'NZS')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|RESFUEL','EJ/yr','2019')       = {valEE('p36_RESFUEL','31_SER',z,'NZS') +  valEH('p36_RESFUEL',z,'NZS')}*CF ;

*==========================Sim=================================

*Total population
IAMC(model_IAMC,'NZS',z,'Population','million','2025') = POPO(z);

*total consumption of all goods, by all consumers in a region
IAMC(model_IAMC,'NZS',z,'Consumption','billion US$2010/yr','2025') = sum(i,valDD(i,z,'sim'))*10*USD2010(z,'sim') ;

*GDP at market exchange rate
IAMC(model_IAMC,'NZS',z,'GDP|MER','billion US$2010/yr','2025') = GDPMER(z,'2019')/10**9*(valGDP_FD(z,'sim')/GDP_FDO(z))*USD2010(z,'sim') ;

*GDP at PPP exchange rate
IAMC(model_IAMC,'NZS',z,'GDP|PPP','billion US$2010/yr','2025') = (GDPMER(z,'2019')/10**9*PPPexr(z))*(valGDP_FD(z,'sim')/GDP_FDO(z))*USD2010(z,'sim') ;

*Macroeconomic capital stock
IAMC(model_IAMC,'NZS',z,'Capital Stock','billion US$2010/yr','2025') =  valCAPSTOCK(z,'sim')*10*USD2010(z,'sim') ;

*value added of the agricultural sector
IAMC(model_IAMC,'NZS',z,'Value Added|Agriculture','billion US$2010/yr','2025') = valVA('01_AGRICULT',z,'sim')*10*USD2010(z,'sim') ;

*value added of the commercial sector
IAMC(model_IAMC,'NZS',z,'Value Added|Commercial','billion US$2010/yr','2025') = sum(Commercial_J, valVA(Commercial_J,z,'sim'))*10*USD2010(z,'sim') ;

*Value Added|Industry
IAMC(model_IAMC,'NZS',z,'Value Added|Industry','billion US$2010/yr','2025') = sum(Industry, valVA(Industry,z,'sim'))*10*USD2010(z,'sim') ;

*value added of the chemical industries.
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Chemicals','billion US$2010/yr','2025') = valVA('11_CHEMICAL',z,'sim')*10*USD2010(z,'sim') ;

*value added of iron and steel production
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Iron and Steel','billion US$2010/yr','2025') = valVA('13_IRONSTL',z,'sim')*10*USD2010(z,'sim') ;

*value added of non-metallic minerals industries
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Metallic Minerals','billion US$2010/yr','2025') = valVA('12_NONMET',z,'sim')*10*USD2010(z,'sim') ;

*value added of the pulp and paper sector
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Pulp and Paper','billion US$2010/yr','2025') = valVA('08_WOODPRO',z,'sim')*10*USD2010(z,'sim') ;

*value added of the non-ferrous metals sector
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Ferrous metals','billion US$2010/yr','2025') = valVA('14_NONFERR',z,'sim')*10*USD2010(z,'sim') ;

*value added of all other industry sectors
IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Ferrous metals','billion US$2010/yr','2025') =

IAMC(model_IAMC,'NZS',z,'Value Added|Industry','billion US$2010/yr','2025')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Chemicals','billion US$2010/yr','2025')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Iron and Steel','billion US$2010/yr','2025')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Metallic Minerals','billion US$2010/yr','2025')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Pulp and Paper','billion US$2010/yr','2025')
- IAMC(model_IAMC,'NZS',z,'Value Added|Industry|Non-Ferrous metals','billion US$2010/yr','2025')
;

*production of the agriculture sector
IAMC(model_IAMC,'NZS',z,'Production|Agriculture|Value','billion US$2010/yr','2025') =   (valDS('01_AGRICULT',z,'sim')+ valEXT('01_AGRICULT',z,'sim'))*10*USD2010(z,'sim') ;

*production of the commercial sector
IAMC(model_IAMC,'NZS',z,'Production|Commerical|Value','billion US$2010/yr','2025') =  sum(Commercial_J, valXS(Commercial_J,z,'sim'))*10*USD2010(z,'sim') ;

*production of the industry sector
IAMC(model_IAMC,'NZS',z,'Production|Industry|Value','billion US$2010/yr','2025') =   sum(Industry, valXS(Industry,z,'sim'))*10*USD2010(z,'sim');

*production of chemicals
IAMC(model_IAMC,'NZS',z,'Production|Chemicals|Value','billion US$2010/yr','2025') =  (valDS('11_CHEMICAL',z,'sim')+ valEXT('11_CHEMICAL',z,'sim'))*10*USD2010(z,'sim') ;

*production of steel
IAMC(model_IAMC,'NZS',z,'Production|Iron and Steel|Value','billion US$2010/yr','2025') =  (valDS('13_IRONSTL',z,'sim')+ valEXT('13_IRONSTL',z,'sim'))*10*USD2010(z,'sim') ;

*production of non-metallic minerals
IAMC(model_IAMC,'NZS',z,'Production|Non-Metallic Minerals|Value','billion US$2010/yr','2025') =  (valDS('12_NONMET',z,'sim')+ valEXT('12_NONMET',z,'sim'))*10*USD2010(z,'sim') ;

*production of pulp and paper
IAMC(model_IAMC,'NZS',z,'Production|Pulp and Paper|Value','billion US$2010/yr','2025') =  (valDS('08_WOODPRO',z,'sim')+ valEXT('08_WOODPRO',z,'sim'))*10*USD2010(z,'sim') ;

*production of non-ferrous metals (e.g., aluminum)
IAMC(model_IAMC,'NZS',z,'Production|Non-Ferrous Metals|Value','billion US$2010/yr','2025') =  (valDS('14_NONFERR',z,'sim')+ valEXT('14_NONFERR',z,'sim'))*10*USD2010(z,'sim') ;

*production of other industry products
IAMC(model_IAMC,'NZS',z,'Production|Other Sector|Value','billion US$2010/yr','2025') =
IAMC(model_IAMC,'NZS',z,'Production|Industry|Value','billion US$2010/yr','2025')
-IAMC(model_IAMC,'NZS',z,'Production|Chemicals|Value','billion US$2010/yr','2025')
-IAMC(model_IAMC,'NZS',z,'Production|Iron and Steel|Value','billion US$2010/yr','2025')
-IAMC(model_IAMC,'NZS',z,'Production|Non-Metallic Minerals|Value','billion US$2010/yr','2025')
-IAMC(model_IAMC,'NZS',z,'Production|Pulp and Paper|Value','billion US$2010/yr','2025')
-IAMC(model_IAMC,'NZS',z,'Production|Non-Ferrous Metals|Value','billion US$2010/yr','2025')
;

*total government expenditure
IAMC(model_IAMC,'NZS',z,'Expenditure|Government','billion US$2010/yr','2025') = valG(z,'sim')*10*USD2010(z,'sim') ;

*government revenue
*IAMC(model_IAMC,'NZS',z,'Revenue|government','billion US$2010/yr','2025') =  ;

*government revenue from taxes
*IAMC(model_IAMC,'NZS',z,'Revenue|government|Tax','billion US$2010/yr','2025') =  ;

*Total household expenditure
IAMC(model_IAMC,'NZS',z,'Expenditure|Household','billion US$2010/yr','2025') = sum(i,valC(i,z,'sim'))*10*USD2010(z,'sim') ;

*Expenditure of households for industrial goods
IAMC(model_IAMC,'NZS',z,'Expenditure|household|Industry','billion US$2010/yr','2025') = sum(Industrial_goods,valC(Industrial_goods,z,'sim'))*10*USD2010(z,'sim') ;

*Expenditure of households for energy
IAMC(model_IAMC,'NZS',z,'Expenditure|household|Energy','billion US$2010/yr','2025') = sum(Energy_goods,valC(Energy_goods,z,'sim'))*10*USD2010(z,'sim') ;

*Expenditure of households for food
IAMC(model_IAMC,'NZS',z,'Expenditure|household|Food','billion US$2010/yr','2025') = sum(Food,valC(Food,z,'sim'))*10*USD2010(z,'sim') ;

*Expenditure of households for services
IAMC(model_IAMC,'NZS',z,'Expenditure|household|Services','billion US$2010/yr','2025') = sum(Services,valC(Services,z,'sim'))*10*USD2010(z,'sim') ;

*Total exports measured in monetary quantities.
IAMC(model_IAMC,'NZS',z,'Export','billion US$2010/yr','2025') = sum((i,zj),valEX(i,z,zj,'sim'))*10*USD2010(z,'sim') ;
*valEX(i,z,zj,'sim') Quantity of product i exported by country z to country zj

*Total imports measured in monetary quantities.
IAMC(model_IAMC,'NZS',z,'Import','billion US$2010/yr','2025') = sum((i,zj),valIM(i,zj,z,'sim'))*10*USD2010(z,'sim') ;
*valIM(i,zj,z,scen) Quantity of product i imported by country z from country zj

*Weighted trade tariff-average (regional and global indicator relevant)
IAMC(model_IAMC,'NZS',z,'Tariffs|Average','%','2025') =  [sum((i,zj),valTIM(i,zj,z,'sim'))/ sum((i,zj),valIM(i,zj,z,'sim'))]*100;

*CO2 emission
IAMC(model_IAMC,'NZS',z,'Emissions|CO2|Energy|Demand|Residential and Commercial','Mt CO2/yr','2025') = {sum(product, valCO2I(product,'31_SER',z,'sim') +  valCO2H(product,z,'sim'))}/1000 ;

*CH4 emission
IAMC(model_IAMC,'NZS',z,'Emissions|CH4|Energy|Demand|Residential and Commercial','Mt CH4/yr','2025') = {sum(product, valCH4I(product,'31_SER',z,'sim') +  valCH4H(product,z,'sim'))}/1000000/GWP('CH4EF') ;

*N2O emission
IAMC(model_IAMC,'NZS',z,'Emissions|N2O|Energy|Demand|Residential and Commercial','kt N2O/yr','2025') = {sum(product, valN2OI(product,'31_SER',z,'sim') +  valN2OH(product,z,'sim'))}/1000000/GWP('N2OEF')*1000 ;

*Final energy
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial','EJ/yr','2025') = { sum((p_ftotal),valEE(p_ftotal,'31_SER',z,'sim')) + sum(p_ftotal, valEH(p_ftotal,z,'sim'))}*CF ;

IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Electricity','EJ/yr','2025')   = {valEE('p63_ELECTR','31_SER',z,'sim') + valEH('p63_ELECTR',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Gases','EJ/yr','2025')         = {sum(p_gas, valEE(p_gas,'31_SER',z,'sim') + valEH(p_gas,z,'sim'))}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Heat','EJ/yr','2025')          = {valEE('p64_HEAT','31_SER',z,'sim') + valEH('p64_HEAT',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids','EJ/yr','2025')        = {sum(p_coal, valEE(p_coal,'31_SER',z,'sim') + valEH(p_coal,z,'sim'))}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids','EJ/yr','2025')       = {sum(p_liquid, valEE(p_liquid,'31_SER',z,'sim') + valEH(p_liquid,z,'sim'))}*CF ;

*Solids
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|ANTCOAL','EJ/yr','2025') = {valEE('p3_ANTCOAL','31_SER',z,'sim') + valEH('p3_ANTCOAL',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|COKCOAL','EJ/yr','2025') = {valEE('p4_COKCOAL','31_SER',z,'sim') + valEH('p4_COKCOAL',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|BITCOAL','EJ/yr','2025') = {valEE('p5_BITCOAL','31_SER',z,'sim') + valEH('p5_BITCOAL',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|SUBCOAL','EJ/yr','2025') = {valEE('p6_SUBCOAL','31_SER',z,'sim') + valEH('p6_SUBCOAL',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|LIGNITE','EJ/yr','2025') = {valEE('p7_LIGNITE','31_SER',z,'sim') + valEH('p7_LIGNITE',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Solids|BKB','EJ/yr','2025')     = {valEE('p12_BKB','31_SER',z,'sim') + valEH('p12_BKB',z,'sim')}*CF ;

*Gases
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Gases|GASWKSGS','EJ/yr','2025') = {valEE('p13_GASWKSGS','31_SER',z,'sim') + valEH('p13_GASWKSGS',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Gases|NATGAS','EJ/yr','2025')   = {valEE('p20_NATGAS','31_SER',z,'sim') + valEH('p20_NATGAS',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Gases|NGL','EJ/yr','2025')      = {valEE('p23_NGL','31_SER',z,'sim') + valEH('p23_NGL',z,'sim')}*CF ;

*Liquids - energy
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|LPG','EJ/yr','2025')           = {valEE('p29_LPG','31_SER',z,'sim') +  valEH('p29_LPG',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|NONBIOGASO','EJ/yr','2025')    = {valEE('p30_NONBIOGASO','31_SER',z,'sim') +  valEH('p30_NONBIOGASO',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|AVGAS','EJ/yr','2025')         = {valEE('p31_AVGAS','31_SER',z,'sim') +  valEH('p31_AVGAS',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|JETGAS','EJ/yr','2025')        = {valEE('p32_JETGAS','31_SER',z,'sim') +  valEH('p32_JETGAS',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|NONBIOJETK','EJ/yr','2025')    = {valEE('p33_NONBIOJETK','31_SER',z,'sim')+  valEH('p33_NONBIOJETK',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|OTHKERO','EJ/yr','2025')       = {valEE('p34_OTHKERO','31_SER',z,'sim') +  valEH('p34_OTHKERO',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|NONBIODIES','EJ/yr','2025')    = {valEE('p35_NONBIODIES','31_SER',z,'sim') +  valEH('p35_NONBIODIES',z,'sim')}*CF ;
IAMC(model_IAMC,'NZS',z,'Final Energy|Residential and Commercial|Liquids|RESFUEL','EJ/yr','2025')       = {valEE('p36_RESFUEL','31_SER',z,'sim') +  valEH('p36_RESFUEL',z,'sim')}*CF ;
$offtext

execute_unload 'Output_w-t\NZS_Results_IAMC',
 IAMC
 
;