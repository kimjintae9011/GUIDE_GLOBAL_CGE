*==============================================================================
*  4.9 CO2 emission
*==============================================================================

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
;

 CO2FACTOR('02_COAL',j,z)$DEO('02_COAL',j,z) = [sum(p_coal,CO2IO(p_coal,j,z))/DEO('02_COAL',j,z)]*(1000/(10**8));
 CO2FACTOR('03_OIL',j,z)$DEO('03_OIL',j,z)   = [sum(p_oil,CO2IO(p_oil,j,z))/DEO('03_OIL',j,z)]*(1000/(10**8));
 CO2FACTOR('04_GAS',j,z)$DEO('04_GAS',j,z)   = [sum(p_gas,CO2IO(p_gas,j,z))/DEO('04_GAS',j,z)]*(1000/(10**8));
 CO2FACTOR('10_PETROLCOAL',j,z)$DEO('10_PETROLCOAL',j,z) = [sum(p_oilproduct,CO2IO(p_oilproduct,j,z))/DEO('10_PETROLCOAL',j,z)]*(1000/(10**8));

Parameters
Global_CO2FACTOR(ene,j)       Global Average CO2 emissions factor (tCO2 per 100$)
;

 Global_CO2FACTOR('02_COAL',j)            = [sum((p_coal,z),CO2IO(p_coal,j,z))/sum(z,DEO('02_COAL',j,z))]*(1000/(10**8));
 Global_CO2FACTOR('03_OIL',j)               = [sum((p_oil,z),CO2IO(p_oil,j,z))/sum(z,DEO('03_OIL',j,z))]*(1000/(10**8));
 Global_CO2FACTOR('04_GAS',j)              = [sum((p_gas,z),CO2IO(p_gas,j,z))/sum(z,DEO('04_GAS',j,z))]*(1000/(10**8));
 Global_CO2FACTOR('10_PETROLCOAL',j) = [sum((p_oilproduct,z),CO2IO(p_oilproduct,j,z))/sum(z,DEO('10_PETROLCOAL',j,z))]*(1000/(10**8));

$ontext
*MNG
CO2FACTOR('02_COAL','31_SER','05_MNG')        = 2;
 
*PRK
 CO2FACTOR('02_COAL','01_AGRICULT','06_PRK')        = CO2FACTOR('02_COAL','01_AGRICULT','05_MNG');
 CO2FACTOR('10_PETROLCOAL','01_AGRICULT','06_PRK')  = CO2FACTOR('10_PETROLCOAL','01_AGRICULT','05_MNG');
 CO2FACTOR('02_COAL','28_LTRP','06_PRK')            = CO2FACTOR('02_COAL','28_LTRP','05_MNG');
 CO2FACTOR('02_COAL','17_OTHERIND','06_PRK')        = CO2FACTOR('02_COAL','17_OTHERIND','05_MNG');

*RUS
 CO2FACTOR('02_COAL','08_WOODPRO','04_RUS')    = CO2FACTOR('02_COAL','08_WOODPRO','10_EEU');
 CO2FACTOR('04_GAS','17_OTHERIND','04_RUS')      = SMAX(j$(not sameas(j, '17_OTHERIND')), CO2FACTOR('04_GAS', j, '04_RUS'));

*LAM
 CO2FACTOR('04_GAS','02_COAL','08_LAM')             = CO2FACTOR('04_GAS','02_COAL','07_NAM');

* CO2FACTOR(ene,j,z)$(CO2FACTOR(ene,j,z) gt 10) = 10 ;
$offtext

CO2FACTOR(ene, j, z)$(
    not sameas(j, '13_IRONSTL') and
    not sameas(j, '20_eCoal') and
    not sameas(j, '21_eGas') and
    not sameas(j, '22_eOil')
) = MIN(CO2FACTOR(ene, j, z), Global_CO2FACTOR(ene, j));

*Otherind Sector
 CO2FACTOR('02_COAL','17_OTHERIND',Z)$DEO('02_COAL','17_OTHERIND',z) = Global_CO2FACTOR('02_COAL','20_eCoal');
 CO2FACTOR('03_OIL','17_OTHERIND',Z)$DEO('03_OIL','17_OTHERIND',z) = Global_CO2FACTOR('03_OIL','03_OIL');
 CO2FACTOR('04_GAS','17_OTHERIND',Z)$DEO('04_GAS','17_OTHERIND',z) = Global_CO2FACTOR('04_Gas','21_eGas');
 CO2FACTOR('10_PETROLCOAL','17_OTHERIND',Z)$DEO('10_PETROLCOAL','17_OTHERIND',z) = Global_CO2FACTOR('10_PETROLCOAL','22_eOil');

 CO2FACTOR(ene,j,z)$(CO2FACTOR(ene,j,z) lt 0) = 0.1 ; 


 CO2FACTOR('02_COAL','20_eCoal','06_PRK') = CO2FACTOR('02_COAL','20_eCoal','05_MNG') ;

 CO2FACTOR('10_PETROLCOAL','22_eOil','06_PRK') = CO2FACTOR('10_PETROLCOAL','22_eOil','05_MNG') ;

 CO2FACTOR2(ene,j,z,time) = CO2FACTOR(ene,j,z);

*===========
* Coal 2.7tCO2 per 100$
* CO2FACTOR2('02_COAL',j,z,time)$CO2FACTOR('02_COAL',j,z)           = 2.7 ;
* Gas 1.8tCO2 per 100$
* CO2FACTOR2('04_GAS',j,z,time)$CO2FACTOR('04_GAS',j,z)             = 0.67;
* Oilrproduct  0.6tCO2 per 100$
* CO2FACTOR2('10_PETROLCOAL',j,z,time)$CO2FACTOR('10_PETROLCOAL',j,z) = 0.67;


