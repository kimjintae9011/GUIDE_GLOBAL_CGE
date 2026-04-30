*==============================================================================
* [1] ENERGY CONSUMPTION & INTENSITY (VOLUME BASE)
*==============================================================================
Parameters
    EEI(product,j,z)  "Energy intensity by industry sector (ktoe per billion $)"
    NEI(product,j,z)  "Non-Energy intensity by production sector (ktoe per billion $)"
    EHI(product,z)    "Energy intensity by household (ktoe per billion $)"

    EEO(product,j,z)  "Initial Industry energy consumption in region z (ktoe)"
    NEO(product,j,z)  "Initial Industry non-energy consumption in region z (ktoe)"
    EHO(product,z)    "Initial Household energy consumption in region z (ktoe)"
 
    Marinebunker(product,z)
    Aviationbunker(product,z) 
;

* -------------------------------------------------------------------
* 1.1 Energy Intensity (Pure combustion: Total demand - Non-energy)
* -------------------------------------------------------------------
EEI(p_coal,j,z)$(DEO('02_COAL',j,z) > 0)             
    = (Coal_DIO(p_coal,j,z) - NCoal_DIO(p_coal,j,z)) / DEO('02_COAL',j,z);
    
EEI(p_oil,j,z)$(DEO('03_OIL',j,z) > 0)               
    = Oil_DIO(p_oil,j,z)  / DEO('03_OIL',j,z);
    
EEI(p_gas,j,z)$(DEO('04_GAS',j,z) > 0)               
    = (Gas_DIO(p_gas,j,z) - NGas_DIO(p_gas,j,z)) / DEO('04_GAS',j,z);
    
EEI(p_oilproduct,j,z)$(DEO('10_PETROLCOAL',j,z) > 0) 
    = (Oilp_DIO(p_oilproduct,j,z) - NOilp_DIO(p_oilproduct,j,z)) / DEO('10_PETROLCOAL',j,z);
    
EEI(p_elecheat,j,z)$(DEO('18_ELEC',j,z) > 0)         
    = Elec_DIO(p_elecheat,j,z) / DEO('18_ELEC',j,z);

EEI(p_waste,j,z)$(XSTO(j,z) > 0)    = Waste_DIO(p_waste,j,z) / XSTO(j,z);
EEI(p_bio,j,z)$(XSTO(j,z) > 0)      = Bio_DIO(p_bio,j,z) / XSTO(j,z);
EEI(p_charcoal,j,z)$(XSTO(j,z) > 0) = Charcoal_DIO(p_charcoal,j,z) / XSTO(j,z);
EEI(p_ren,j,z)$(XSTO(j,z) > 0)      = Ren_DIO(p_ren,j,z) / XSTO(j,z);

* -------------------------------------------------------------------
* 1.2 Non-Energy Intensity
* -------------------------------------------------------------------
NEI(p_coal,j,z)$(DEO('02_COAL',j,z) > 0)             = NCoal_DIO(p_coal,j,z) / DEO('02_COAL',j,z);
NEI(p_gas,j,z)$(DEO('04_GAS',j,z) > 0)               = NGas_DIO(p_gas,j,z) / DEO('04_GAS',j,z);
NEI(p_oilproduct,j,z)$(DEO('10_PETROLCOAL',j,z) > 0) = NOilp_DIO(p_oilproduct,j,z) / DEO('10_PETROLCOAL',j,z);

* -------------------------------------------------------------------
* 1.3 Household Intensity
* -------------------------------------------------------------------
EHI(p_coal,z)$(CO('02_COAL',z) > 0)             = Coal_CO(p_coal,z) / CO('02_COAL',z);
EHI(p_oil,z)$(CO('03_OIL',z) > 0)               = Oil_CO(p_oil,z) / CO('03_OIL',z);
EHI(p_gas,z)$(CO('04_GAS',z) > 0)               = Gas_CO(p_gas,z) / CO('04_GAS',z);
EHI(p_oilproduct,z)$(CO('10_PETROLCOAL',z) > 0) = Oilp_CO(p_oilproduct,z) / CO('10_PETROLCOAL',z);
EHI(p_elecheat,z)$(CO('18_ELEC',z) > 0)         = Elec_CO(p_elecheat,z) / CO('18_ELEC',z);
 
EHI(p_waste,z)    = Waste_CO(p_waste,z) / TOT_POP(z,'2019');
EHI(p_bio,z)      = Bio_CO(p_bio,z) / TOT_POP(z,'2019');
EHI(p_charcoal,z) = Charcoal_CO(p_charcoal,z) / TOT_POP(z,'2019');
EHI(p_ren,z)      = Ren_CO(p_ren,z) / TOT_POP(z,'2019');

* -------------------------------------------------------------------
* 1.4 Initial Energy Consumption Assignments
* -------------------------------------------------------------------
EEO(p_coal,j,z)       = Coal_DIO(p_coal,j,z) ;
EEO(p_gas,j,z)        = Gas_DIO(p_gas,j,z) ;
EEO(p_oil,j,z)        = Oil_DIO(p_oil,j,z) ;
EEO(p_oilproduct,j,z) = Oilp_DIO(p_oilproduct,j,z) ;
EEO(p_elecheat,j,z)   = Elec_DIO(p_elecheat,j,z) ;
EEO(p_waste,j,z)      = Waste_DIO(p_waste,j,z) ;
EEO(p_bio,j,z)        = Bio_DIO(p_bio,j,z) ;
EEO(p_charcoal,j,z)   = Charcoal_DIO(p_charcoal,j,z) ;
EEO(p_ren,j,z)        = Ren_DIO(p_ren,j,z) ;

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
EHO(p_ren,z)          = Ren_CO(p_ren,z);
 
Marinebunker(p_gas,z)          = gas_Marine(p_gas,z);
Marinebunker(p_oilproduct,z)   = Oilp_Marine(p_oilproduct,z);
Marinebunker(p_Bio,z)          = Bio_Marine(p_Bio,z);
Aviationbunker(p_oilproduct,z) = Oilp_Aviation(p_oilproduct,z);


*==============================================================================
* [2] GREENHOUSE GAS (GHG) EMISSIONS SETS & PARAMETERS
*==============================================================================
Sets
    emis_type / Energy, Industry, LTRP, ATRP, WTRP, Other /

    map_sec_emis(j, emis_type) 
    /
      02_COAL.Energy, 03_OIL.Energy, 04_GAS.Energy, 10_PETROLCOAL.Energy, 
      18_TnD.Energy, 19_eNuclear.Energy, 20_eCoal.Energy, 21_eGas.Energy, 
      22_eOil.Energy, 23_eWind.Energy, 24_eSolar.Energy, 25_eHydro.Energy, 26_eOther.Energy

      05_MINING.Industry, 06_FOODPRO.Industry, 07_TEXTILES.Industry, 08_WOODPRO.Industry, 
      09_PAPERPRO.Industry, 11_CHEMICAL.Industry, 12_NONMET.Industry, 13_IRONSTL.Industry, 
      14_NONFERR.Industry, 15_MACHINE.Industry, 16_TRANSEQ.Industry, 17_OTHERIND.Industry, 
      27_CONSTRUC.Industry

      28_LTRP.LTRP  
      29_WTRP.WTRP  
      30_ATRP.ATRP  

      01_AGRICULT.Other, 31_SER.Other
    /

    map_CH4_type(emis_type, type) 
    / Energy.CH4EF_Energy, Industry.CH4EF_Industry, LTRP.CH4EF_LTRP, ATRP.CH4EF_ATRP, WTRP.CH4EF_WTRP, Other.CH4EF_Other /

    map_N2O_type(emis_type, type) 
    / Energy.N2OEF_Energy, Industry.N2OEF_Industry, LTRP.N2OEF_LTRP, ATRP.N2OEF_ATRP, WTRP.N2OEF_WTRP, Other.N2OEF_Other /
;

Parameters
    Emiss_CO2(j,z)       "CO2 emissions by industry sector (tCO2)"
    Emiss_CH4(j,z)       "CH4 emissions by industry sector (tCH4)"
    Emiss_N2O(j,z)       "N2O emissions by industry sector (tN2O)"
    Emiss_GHG(j,z)       "Total GHG emissions by industry sector (tCO2eq)"
    
    Emiss_CO2_HH(z)      "Household CO2 emissions (tCO2)"
    Emiss_CH4_HH(z)      "Household CH4 emissions (tCH4)"
    Emiss_N2O_HH(z)      "Household N2O emissions (tN2O)"
    Emiss_GHG_HH(z)      "Total Household GHG emissions (tCO2eq)"
    
    GWP_CH4 / 28 /    
    GWP_N2O / 265 /   
;


*==============================================================================
* [3] GHG EMISSIONS CALCULATIONS (PHYSICAL VOLUME BASE)
*==============================================================================
* -------------------------------------------------------------------
* 3.1 Industry CO2 Emissions
* Formula: ktoe * 41.868 (TJ conversion) * CO2EF (tC/TJ) * (44/12)
* -------------------------------------------------------------------
Emiss_CO2(j,z) = 
  sum(p_coal, 
      max(0, Coal_DIO(p_coal,j,z) - (NCoal_DIO(p_coal,j,z) * GHGsEF(p_coal,'Stored_rate'))) 
      * 41.868 * GHGsEF(p_coal,'CO2EF') * (44/12)
  )
+ sum(p_oilproduct, 
      max(0, Oilp_DIO(p_oilproduct,j,z) - (NOilp_DIO(p_oilproduct,j,z) * GHGsEF(p_oilproduct,'Stored_rate'))) 
      * 41.868 * GHGsEF(p_oilproduct,'CO2EF') * (44/12)
  )
+ sum(p_gas, 
      max(0, Gas_DIO(p_gas,j,z) - (NGas_DIO(p_gas,j,z) * GHGsEF(p_gas,'Stored_rate'))) 
      * 41.868 * GHGsEF(p_gas,'CO2EF') * (44/12)
  )
* Direct combustion of crude oil (excluding refinery inputs to prevent double counting)
+ sum(p_oil, 
      max(0, Oil_DIO(p_oil,j,z)) 
      * 41.868 * GHGsEF(p_oil,'CO2EF') * (44/12)
  )$(not sameas(j, '10_PETROLCOAL'))
* Deduct carbon from steel by-product gas (prevent double counting & adjust process emissions)
- sum(p_irongas,
      Gas_Prod_Iron(p_irongas, z)$sameas(j,'13_IRONSTL')
      * 41.868 * GHGsEF(p_irongas,'CO2EF') * (44/12)
  )
;

* -------------------------------------------------------------------
* 3.2 Industry CH4 & N2O Emissions
* Note: Non-energy use does not combust, hence (DIO - N_DIO) is used.
* -------------------------------------------------------------------
Emiss_CH4(j,z) = 
  sum(emis_type$map_sec_emis(j, emis_type),
    sum(type$map_CH4_type(emis_type, type),
        sum(p_coal,       max(0, Coal_DIO(p_coal,j,z)       - NCoal_DIO(p_coal,j,z))       * 41.868 * GHGsEF(p_coal, type) / 1000)
      + sum(p_oilproduct, max(0, Oilp_DIO(p_oilproduct,j,z) - NOilp_DIO(p_oilproduct,j,z)) * 41.868 * GHGsEF(p_oilproduct, type) / 1000)
      + sum(p_gas,        max(0, Gas_DIO(p_gas,j,z)         - NGas_DIO(p_gas,j,z))         * 41.868 * GHGsEF(p_gas, type) / 1000)
    )
  );

Emiss_N2O(j,z) = 
  sum(emis_type$map_sec_emis(j, emis_type),
    sum(type$map_N2O_type(emis_type, type),
        sum(p_coal,       max(0, Coal_DIO(p_coal,j,z)       - NCoal_DIO(p_coal,j,z))       * 41.868 * GHGsEF(p_coal, type) / 1000)
      + sum(p_oilproduct, max(0, Oilp_DIO(p_oilproduct,j,z) - NOilp_DIO(p_oilproduct,j,z)) * 41.868 * GHGsEF(p_oilproduct, type) / 1000)
      + sum(p_gas,        max(0, Gas_DIO(p_gas,j,z)         - NGas_DIO(p_gas,j,z))         * 41.868 * GHGsEF(p_gas, type) / 1000)
    )
  );

Emiss_GHG(j,z) = Emiss_CO2(j,z) + (Emiss_CH4(j,z) * GWP_CH4) + (Emiss_N2O(j,z) * GWP_N2O);

* -------------------------------------------------------------------
* 3.3 Household Emissions
* -------------------------------------------------------------------
Emiss_CO2_HH(z) = 
    sum(p_coal, Coal_CO(p_coal,z) * 41.868 * GHGsEF(p_coal,'CO2EF') * (44/12))
  + sum(p_oilproduct, Oilp_CO(p_oilproduct,z) * 41.868 * GHGsEF(p_oilproduct,'CO2EF') * (44/12))
  + sum(p_gas, Gas_CO(p_gas,z) * 41.868 * GHGsEF(p_gas,'CO2EF') * (44/12));

Emiss_CH4_HH(z) = 
    sum(p_coal, Coal_CO(p_coal,z) * 41.868 * GHGsEF(p_coal,'CH4EF_Other') / 1000)
  + sum(p_oilproduct, Oilp_CO(p_oilproduct,z) * 41.868 * GHGsEF(p_oilproduct,'CH4EF_Other') / 1000)
  + sum(p_gas, Gas_CO(p_gas,z) * 41.868 * GHGsEF(p_gas,'CH4EF_Other') / 1000);

Emiss_N2O_HH(z) = 
    sum(p_coal, Coal_CO(p_coal,z) * 41.868 * GHGsEF(p_coal,'N2OEF_Other') / 1000)
  + sum(p_oilproduct, Oilp_CO(p_oilproduct,z) * 41.868 * GHGsEF(p_oilproduct,'N2OEF_Other') / 1000)
  + sum(p_gas, Gas_CO(p_gas,z) * 41.868 * GHGsEF(p_gas,'N2OEF_Other') / 1000);

Emiss_GHG_HH(z) = Emiss_CO2_HH(z) + (Emiss_CH4_HH(z) * GWP_CH4) + (Emiss_N2O_HH(z) * GWP_N2O);


*==============================================================================
* [4] CARBON INTENSITY FACTORS (CO2FACTOR) CALCULATION
*==============================================================================
Parameters
    GHG_Energy(ene,j,z)         "CO2 emissions from Energy Sector 1.A. by IO sector (tCO2)"
    GHG_Energy_HH(ene,z)        "Household CO2 emissions by energy source (tCO2)"
    
    CO2FACTOR(ene,j,z)          "CO2 emissions factor for industry (tCO2 per 100$)"
    CO2FACTORHH(ene,z,time)     "Time series CO2 emissions factor for household (tCO2 per 100$)"
    Global_CO2FACTOR(ene,j)     "Global average CO2 emissions factor (tCO2 per 100$)"
    CO2FACTOR2(ene,j,z,time)    "Time series CO2 emissions factor for industry (tCO2 per 100$)"
;

* -------------------------------------------------------------------
* 4.1 GHG Allocation by IO Energy Sectors
* -------------------------------------------------------------------
GHG_Energy('02_COAL',j,z) = 
    sum(p_coal, 
        max(0, Coal_DIO(p_coal,j,z) - (NCoal_DIO(p_coal,j,z) * GHGsEF(p_coal,'Stored_rate'))) 
        * 41.868 * GHGsEF(p_coal,'CO2EF') * (44/12)
    )
- sum(p_irongas, Gas_Prod_Iron(p_irongas, z)$sameas(j,'13_IRONSTL') * 41.868 * GHGsEF(p_irongas,'CO2EF') * (44/12));

GHG_Energy('03_OIL',j,z) = 
    sum(p_oil, 
        max(0, Oil_DIO(p_oil,j,z)* GHGsEF(p_oil,'Stored_rate')) 
        * 41.868 * GHGsEF(p_oil,'CO2EF') * (44/12)
    )$(not sameas(j, '10_PETROLCOAL'));

GHG_Energy('04_GAS',j,z) = 
    sum(p_gas, 
        max(0, Gas_DIO(p_gas,j,z) - (NGas_DIO(p_gas,j,z) * GHGsEF(p_gas,'Stored_rate'))) 
        * 41.868 * GHGsEF(p_gas,'CO2EF') * (44/12)
    );

GHG_Energy('10_PETROLCOAL',j,z) = 
    sum(p_oilproduct, 
        max(0, Oilp_DIO(p_oilproduct,j,z) - (NOilp_DIO(p_oilproduct,j,z) * GHGsEF(p_oilproduct,'Stored_rate'))) 
        * 41.868 * GHGsEF(p_oilproduct,'CO2EF') * (44/12)
    )
    - sum(p_oilproduct, Coke_Prod_Iron(p_oilproduct, z)$sameas(j,'13_IRONSTL') * 41.868 * GHGsEF(p_oilproduct,'CO2EF') * (44/12));

* Household allocation
GHG_Energy_HH('02_COAL',z)       = sum(p_coal, Coal_CO(p_coal,z) * 41.868 * GHGsEF(p_coal,'CO2EF') * (44/12));
GHG_Energy_HH('03_OIL',z)        = sum(p_oil, Oil_CO(p_oil,z) * 41.868 * GHGsEF(p_oil,'CO2EF') * (44/12));
GHG_Energy_HH('04_GAS',z)        = sum(p_gas, Gas_CO(p_gas,z) * 41.868 * GHGsEF(p_gas,'CO2EF') * (44/12));
GHG_Energy_HH('10_PETROLCOAL',z) = sum(p_oilproduct, Oilp_CO(p_oilproduct,z) * 41.868 * GHGsEF(p_oilproduct,'CO2EF') * (44/12));


* -------------------------------------------------------------------
* 4.2 Base CO2FACTOR Calculations (1 Billion $ = 10,000,000 * 100$)
* -------------------------------------------------------------------
CO2FACTOR('02_COAL',j,z)$(DEO('02_COAL',j,z) > 0) 
    = GHG_Energy('02_COAL',j,z) / (DEO('02_COAL',j,z) * 10000000);

CO2FACTOR('03_OIL',j,z)$(DEO('03_OIL',j,z) > 0) 
    = GHG_Energy('03_OIL',j,z) / (DEO('03_OIL',j,z) * 10000000);

CO2FACTOR('04_GAS',j,z)$(DEO('04_GAS',j,z) > 0) 
    = GHG_Energy('04_GAS',j,z) / (DEO('04_GAS',j,z) * 10000000);

CO2FACTOR('10_PETROLCOAL',j,z)$(DEO('10_PETROLCOAL',j,z) > 0) 
    = GHG_Energy('10_PETROLCOAL',j,z) / (DEO('10_PETROLCOAL',j,z) * 10000000);

* Household Intensity (Denominator: Final Consumption CO)
CO2FACTORHH('02_COAL',z,time)$(CO('02_COAL',z) > 0) 
    = GHG_Energy_HH('02_COAL',z) / (CO('02_COAL',z) * 10000000);

CO2FACTORHH('03_OIL',z,time)$(CO('03_OIL',z) > 0) 
    = GHG_Energy_HH('03_OIL',z) / (CO('03_OIL',z) * 10000000);

CO2FACTORHH('04_GAS',z,time)$(CO('04_GAS',z) > 0) 
    = GHG_Energy_HH('04_GAS',z) / (CO('04_GAS',z) * 10000000);

CO2FACTORHH('10_PETROLCOAL',z,time)$(CO('10_PETROLCOAL',z) > 0) 
    = GHG_Energy_HH('10_PETROLCOAL',z) / (CO('10_PETROLCOAL',z) * 10000000);

*==============================================================================
* [5] SMOOTHING, CALIBRATION & REGIONAL SCALING
*==============================================================================
* -------------------------------------------------------------------
* 5.1 Global Average Calculations
* -------------------------------------------------------------------
Global_CO2FACTOR('02_COAL',j)$(sum(z, DEO('02_COAL',j,z)) > 0) 
    = sum(z, GHG_Energy('02_COAL',j,z)) / (sum(z, DEO('02_COAL',j,z)) * 10000000);

Global_CO2FACTOR('03_OIL',j)$(sum(z, DEO('03_OIL',j,z)) > 0) 
    = sum(z, GHG_Energy('03_OIL',j,z)) / (sum(z, DEO('03_OIL',j,z)) * 10000000);

Global_CO2FACTOR('04_GAS',j)$(sum(z, DEO('04_GAS',j,z)) > 0) 
    = sum(z, GHG_Energy('04_GAS',j,z)) / (sum(z, DEO('04_GAS',j,z)) * 10000000);

Global_CO2FACTOR('10_PETROLCOAL',j)$(sum(z, DEO('10_PETROLCOAL',j,z)) > 0) 
    = sum(z, GHG_Energy('10_PETROLCOAL',j,z)) / (sum(z, DEO('10_PETROLCOAL',j,z)) * 10000000);

* -------------------------------------------------------------------
* 5.2 Outlier Smoothing & Net Zero Feasibility Capping
* -------------------------------------------------------------------
Parameter 
    Threshold_Multiplier / 2 / 
    NZ_Safety_Cap        / 2.5 /  
    Total_Emiss_Ref(z)   "Store total emissions BEFORE calibration"
    Scale_Factor(z)      "Regional scale factor to preserve total volume"
    Final_Emiss_Check(z) "Validation check for final volume"
    Emiss_Diff(z)        "Difference between original and calibrated volumes"
;

* [CRITICAL] Save baseline reference volume BEFORE any modifications
Total_Emiss_Ref(z) = sum((ene,j), GHG_Energy(ene,j,z));

* Step 1: Generic outlier smoothing (Cutoff based on global average)
CO2FACTOR(ene,j,z)$(CO2FACTOR(ene,j,z) > Global_CO2FACTOR(ene,j) * Threshold_Multiplier) 
    = Global_CO2FACTOR(ene,j);

* Step 2: Targeted Hard Cap for '17_OTHERIND' (Net Zero Feasibility)
* Suppress extreme noise in the "Other Industry" sector to prevent solver failure.
CO2FACTOR(ene,'17_OTHERIND',z)$(CO2FACTOR(ene,'17_OTHERIND',z) > NZ_Safety_Cap) 
    = NZ_Safety_Cap;


* -------------------------------------------------------------------
* 5.3 Volume Redistribution & Scaling
* -------------------------------------------------------------------
* Calculate scaling factor to redistribute smoothed intensity evenly
Scale_Factor(z)$(sum((ene,j), CO2FACTOR(ene,j,z) * DEO(ene,j,z)) > 0) 
    = Total_Emiss_Ref(z) / sum((ene,j), CO2FACTOR(ene,j,z) * DEO(ene,j,z) * 10000000);

* Manual override for PRK (North Korea) due to severe data mismatch
Scale_Factor('06_PRK') = 1.05;

* Apply regional scale factor to finalize calibrated CO2FACTOR
CO2FACTOR(ene,j,z) = CO2FACTOR(ene,j,z) * Scale_Factor(z);


* -------------------------------------------------------------------
* 5.4 Data Integrity Verification & Time Series Assignment
* -------------------------------------------------------------------
Final_Emiss_Check(z) = sum((ene,j), CO2FACTOR(ene,j,z) * DEO(ene,j,z) * 10000000);
Emiss_Diff(z)        = Total_Emiss_Ref(z) - Final_Emiss_Check(z);

* Prevent zeros or negative values for solver stability (CES function requirement)
CO2FACTOR(ene,j,z)$(CO2FACTOR(ene,j,z) < 0) = 0.1 ; 

* Assign to Time Series Parameter for model baseline
CO2FACTOR2(ene,j,z,time) = CO2FACTOR(ene,j,z);



