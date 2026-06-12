*==============================================================================
* Extended Energy Balances (WEB) Mapping & Allocation
*==============================================================================
* IEA Wrold Energy Balance 2022 edition 
Set flow flow
/
f1_INDPROD      Production
f2_IMPORTS      Imports
f3_EXPORTS      Exports
f4_MARBUNK      International marine bunkers
f5_AVBUNK       International aviation bunkers
f6_STOCKCHA     Stock changes
f7_TES          Total energy supply
f8_TRANSFER     Transfers
f9_STATDIFF     Statistical differences
f10_TOTTRANF    Transformation process
f11_MAINELEC    Main activity producer electricity plants
f12_AUTOELEC    Autoproducer electricity plants
f13_MAINCHP     Main activity producer CHP plants
f14_AUTOCHP     Autoproducer CHP plants
f15_MAINHEAT    Main activity producer heat plants
f16_AUTOHEAT    Autoproducer heat plants
f17_THEAT       Heat pumps
f19_TBOILER     Electric boilers
f18_TELE        Chemical heat for electricity production
f20_TBLASTFUR   Blast furnaces
f21_TGASWKS     Gas works
f22_TCOKEOVS    Coke ovens
f23_TPATFUEL    Patent fuel plants
f24_TBKB        BKB peat briquettes
f25_TREFINER    Oil refineries
f26_TPETCHEM    Petrochemical plants
f27_TCOALLIQ    Coal liquefaction
f28_TGTL        Gas-to-liquids plants
f29_TBLENDGAS   For blended natural gas
f30_TCHARCOAL   Charcoal production plants
f31_TNONSPEC    Non-specific transformation
f32_TOTENGY     Energy industry own use
f33_EMINES      Coal mines
f34_EOILGASEX   Oil and gas extraction
f35_EBLASTFUR   Blast furances
f36_EGASWKS     Gas works
f37_EBIOGAS     Gasfication plants for biogases
f38_ECOKEOVS    Coke ovens
f39_EPATFUEL    Patent fuel plants
f40_EBKB        BKB peat briquettes
f41_EREFINER    Oil refineries
f42_ECOALLIQ    Coal liquefaction plants
f43_ELNG        Liquefaction regasification plants
f44_EGTL        Gas to liquids plants
f45_EPOWERPLT   Own use in electricity CHP and heat plants
f46_EPUMPST     Pumped storage plants
f47_ENUC        Nuclear industry
f48_ECHARCOAL   Charcoal production plants
f49_ENONSPEC    Non specified
f50_DISTLOSS    Losses
f51_TFC         Total final consumption
f52_AGRICULT    Agriculture forestry
f53_FISHING     Fishing
f54_MINING      Mining and quarrying
f55_FOODPRO     Food and tobacco
f56_TEXTILES    Textile and leather
f57_WOODPRO     Wood and wood products
f58_PAPERPRO    Paper pulp and print
f59_CHEMICAL    Chemical and petrochemical
f60_NONMET      Non metallic minerals
f61_IRONSTL     Iron and steel
f62_NONFERR     Non ferrous metals
f63_MACHINE     Machinery
f64_TRANSEQ     Transport equipment
f65_INONSPEC    Industry not elsewhere specified
f66_CONSTRUC    Construction
f67_COMMPUB     Commercial and public services
f68_ONONSPEC    Final consumption not elsewhere specified
f69_RESIDENT    Residential
f70_ROAD        Road
f71_RAIL        Rail
f72_DOMESAIR    Domestic aviation
f73_DOMESNAV    Domestic navigation
f74_PIPELINE    Pipeline transport
f75_TRNONSPE    Transport not elsewhere
f76_NEMINING    Non energy use in mining and quarrying
f77_NEFOODPRO   Non energy use in food beverages tobacco
f78_NETEXTILES  Non energy use in textiles and leather
f79_NEWOODPRO   Non energy use in wood and wood products
f80_NEPAPERPRO  Non energy use in paper pulp and printing
f81_NECHEM      Non energy use in chemical petrochemical
f82_NENONMET    Non energy use in non metallic minerals
f83_NEIRONSTL   Non energy use in iron and steel
f84_NENONFERR   Non energy use in non ferrous metals
f85_NEMACHINE   Non energy use in machinery
f86_NETRANSEQ   Non energy use in transport equipment
f87_NEINONSPEC  Non energy use in non specified industry
f88_NECONSTRUC  Non energy use in construction
f89_NEOTHER     Non energy use in other residential commercial public services agriculture forestry and fishing
f90_NETRANS     Non energy use in transport
f91_TOTIND      Industry
f92_MANUFACT    Manufacturing
f93_TOTTRANS    Transport
f94_NONENUSE    Non energy use
f95_NEINTREN    Non energy use industry transformation energy
f96_NEIND       Non energy use in industry
f97_WORLDAV     World aviation bunkers
f98_WORLDMAR    World marine bunkers
f99_ELOUTPUT    Electricity output GWh 
f100_ELMAINE    Electricity output GWh main activity producer electricity plants
f101_ELAUTOE    Electrictiy output GWh autoproducer electricity plants
f102_ELMAINC    Electricity output GWh main activity producer CHP plants
f103_ELAUTOC    Electricity output GWh autoproducer CHP plants
f104_HEATOUT    Heat output
f105_HEMAINC    Heat output main activity producer CHP plants
f106_HEAUTOC    Heat output autoproducer CHP plants
f107_HEMAINH    Heat output main activity producer heat plants
f108_HEAUTOH    Heat output autoproducer heat plants
/

product energy product
/
p1_HARDCOAL      Hard coal
p2_BROWN         Brown coal
p3_ANTCOAL       Anthracite
p4_COKCOAL       Coking coal
p5_BITCOAL       Other bituminous coal
p6_SUBCOAL       Sub-bituminous coal
p7_LIGNITE       Lignite
p8_PATFUEL       Patent fuel
p9_OVENCOKE      Coke oven coke
p10_GASCOKE      Gas coke
p11_COALTAR      Coal tar
p12_BKB          Brown coal briquettes
p13_GASWKSGS     Gas works gas
p14_COKEOVGS     Coke oven gas
p15_BLFURGS      Blast furnace gas
p16_OGASES       Other recovered gases
p17_PEAT         Peat
p18_PEATPROD     Peat products
p19_OILSHALE     Oil shale and oil sands
p20_NATGAS       Natural gas
p21_CRNGFEED     Crude NGL feedstock
p22_CRUDEOIL     Crude oil
p23_NGL          Natural gas liquids
p24_REFFEEDS     Refinery feedstocks
p25_ADDITIVE     Additives blending components
p26_NONCRUDE     Other hydrocarbons
p27_REFINGAS     Refinery gas
p28_ETHANE       Ethane
p29_LPG          Liquefied petroleum gases(LPG)
p30_NONBIOGASO   Motor gasoline (excl. biofuels)
p31_AVGAS        Aviation gasoline
p32_JETGAS       Jet fuel Gasoline type
p33_NONBIOJETK   Jet fuel Kerosene type (excl. biofuels)
p34_OTHKERO      Kerosene
p35_NONBIODIES   Diesel oil (excl. biofuels)
p36_RESFUEL      Fuel oil
p37_NAPHTHA      Naphtha
p38_WHITESP      Solvent (White spirit and industrial spirit SBP)
p39_LUBRIC       Lubricants
p40_BITUMEN      Bitumen (Asphalt)
p41_PARWAX       Paraffin waxes
p42_PETCOKE      Petroleum coke
p43_ONONSPEC     Other oil products
p44_INDWASTE     Industrial waste
p45_MUNWASTER    Municipal waste(renewable)
p46_MUNWASTEN    Municipal waste(non-renewable)
p47_PRIMSBIO     Primary solid biofuels
p48_BIOGASES     Biogases
p49_BIOGASOL     Biogasoline
p50_BIOJETKERO   Bio jet kerosene
p51_BIODIESEL    Biodiesels
p52_OBIOLIQ      Other liquid biofuels
p53_RENEWNS      Non-specified primary biofuels and waste
p54_CHARCOAL     Charcoal
p55_NUCLEAR      Nuclear
p56_HYDRO        Hydro
p57_GEOTHERM     Geothermal
p58_SOLARPV      Solar photovoltaics
p59_SOLARTH      Solar thermal
p60_TIDE         Tide wave and ocean
p61_WIND         Wind
p62_OTHER        Other sources
p63_ELECTR       Electricity
p64_HEAT         Heat
p65_HEATNS       Heat output from non-specified combustible fuels
p66_TOTAL        Total
p67_MANGAS       Elec heat output from non-specified manufactured gases
p68_MRENEW       Memo Renewable
/

*=========================== Products Mapping ===================================
* [Primary Energy]
p_coal(product) 02_COAL (Primary coal and peat) / 
  p1_HARDCOAL, p2_BROWN, p3_ANTCOAL, p4_COKCOAL, p5_BITCOAL, p6_SUBCOAL, p7_LIGNITE,
  p17_PEAT, p18_PEATPROD, p19_OILSHALE /

p_oil(product) 03_OIL (Crude oil and primary products) / 
  p21_CRNGFEED, p22_CRUDEOIL, p23_NGL, p24_REFFEEDS, p25_ADDITIVE, p26_NONCRUDE /

p_gas(product) 04_GAS (Natural gas) / 
  p20_NATGAS /

* [Secondary Energy]
p_oilproduct(product) 10_PETROLCOAL (Refined petroleum and coal products) /
 p8_PATFUEL, p9_OVENCOKE, p10_GASCOKE, p11_COALTAR, p12_BKB, p13_GASWKSGS, p14_COKEOVGS , p15_BLFURGS, p16_OGASES,       
 p27_REFINGAS, p28_ETHANE, p29_LPG, p30_NONBIOGASO, p31_AVGAS, p32_JETGAS, p33_NONBIOJETK, p34_OTHKERO, p35_NONBIODIES,   
 p36_RESFUEL, p37_NAPHTHA, p38_WHITESP, p39_LUBRIC, p40_BITUMEN, p41_PARWAX, p42_PETCOKE, p43_ONONSPEC /    

p_liquids(product) /
  p21_CRNGFEED, p22_CRUDEOIL, p23_NGL, p24_REFFEEDS, p25_ADDITIVE, p26_NONCRUDE,
  p67_MANGAS, p27_REFINGAS, p28_ETHANE, p29_LPG, p30_NONBIOGASO, p31_AVGAS, p32_JETGAS, 
  p33_NONBIOJETK, p34_OTHKERO, p35_NONBIODIES, p36_RESFUEL, p37_NAPHTHA, p38_WHITESP, 
  p39_LUBRIC, p40_BITUMEN, p41_PARWAX, p42_PETCOKE, p43_ONONSPEC /

p_liquid(p_oilproduct) /
 p29_LPG, p30_NONBIOGASO, p31_AVGAS, p32_JETGAS, p33_NONBIOJETK, p34_OTHKERO, 
 p35_NONBIODIES, p36_RESFUEL /

p_oilproduct_feed(product) /
 p37_NAPHTHA, p38_WHITESP, p39_LUBRIC, p40_BITUMEN, 
 p41_PARWAX, p42_PETCOKE, p43_ONONSPEC /

* [Other Energy & Utilities]
p_waste(product) Waste energy /
 p44_INDWASTE, p45_MUNWASTER, p46_MUNWASTEN /

p_bio(product) Bio energy /
 p47_PRIMSBIO, p48_BIOGASES, p49_BIOGASOL, p50_BIOJETKERO, p51_BIODIESEL, p52_OBIOLIQ, p53_RENEWNS /

p_charcoal(product) Charcoal /
 p54_CHARCOAL /

p_biowastecharcoal(product) /
 p44_INDWASTE, p45_MUNWASTER, p46_MUNWASTEN, p47_PRIMSBIO, p48_BIOGASES, 
 p49_BIOGASOL, p50_BIOJETKERO, p51_BIODIESEL, p52_OBIOLIQ, p53_RENEWNS, p54_CHARCOAL /

p_elecheat(product) Electricity and Heat /
 p63_ELECTR, p64_HEAT, p65_HEATNS /

p_ren(product) Renewable and Nuclear energy /
 p68_MRENEW, p55_NUCLEAR, p56_HYDRO, p57_GEOTHERM, p58_SOLARPV, p59_SOLARTH, p60_TIDE, p61_WIND, p62_OTHER /

p_irongas(product) By-product gas from iron and steel /
 p14_COKEOVGS, p15_BLFURGS, p16_OGASES /

p_fuelcomb(product) /
 p1_HARDCOAL, p2_BROWN, p3_ANTCOAL, p4_COKCOAL, p5_BITCOAL, p6_SUBCOAL, p7_LIGNITE, p8_PATFUEL, p9_OVENCOKE, p10_GASCOKE, p11_COALTAR, p12_BKB, p13_GASWKSGS, p14_COKEOVGS, p15_BLFURGS, p16_OGASES, p17_PEAT, p18_PEATPROD, p19_OILSHALE, p20_NATGAS, p21_CRNGFEED, p22_CRUDEOIL, p23_NGL, p24_REFFEEDS, p25_ADDITIVE, p26_NONCRUDE, p27_REFINGAS, p28_ETHANE, p29_LPG, p30_NONBIOGASO, p31_AVGAS, p32_JETGAS, p33_NONBIOJETK, p34_OTHKERO, p35_NONBIODIES, p36_RESFUEL, p37_NAPHTHA, p38_WHITESP, p39_LUBRIC, p40_BITUMEN, p41_PARWAX, p42_PETCOKE, p43_ONONSPEC, p44_INDWASTE, p45_MUNWASTER, p46_MUNWASTEN, p47_PRIMSBIO, p48_BIOGASES, p49_BIOGASOL, p50_BIOJETKERO, p51_BIODIESEL, p52_OBIOLIQ, p53_RENEWNS, p54_CHARCOAL, p68_MRENEW, p67_MANGAS, p65_HEATNS, p63_ELECTR, p64_HEAT /

p_nuclear(product) /p55_NUCLEAR/
p_wind(product) /p61_WIND/
p_solar(product) /p58_SOLARPV, p59_SOLARTH/
p_hydro(product) /p56_HYDRO/
p_geo(product) /p57_GEOTHERM/

* [Power Generation Fuel Sets]
p_coal_power(product) Coal and coal-derived by-product gases for Power Generation /
  p1_HARDCOAL, p2_BROWN, p3_ANTCOAL, p4_COKCOAL, p5_BITCOAL, p6_SUBCOAL, p7_LIGNITE, 
  p17_PEAT, p18_PEATPROD, p19_OILSHALE, p13_GASWKSGS, p14_COKEOVGS, p15_BLFURGS, p16_OGASES / 

p_oil_power(product) Products strictly used for Oil-fired power generation /
  p27_REFINGAS, p29_LPG, p30_NONBIOGASO, p31_AVGAS, p32_JETGAS, p33_NONBIOJETK, 
  p34_OTHKERO, p35_NONBIODIES, p36_RESFUEL, p37_NAPHTHA, p38_WHITESP, p39_LUBRIC, 
  p40_BITUMEN, p41_PARWAX, p42_PETCOKE, p43_ONONSPEC / 

p_other_power(product) /
 p60_TIDE, p62_OTHER, p64_HEAT /

*=========================== Flows Mapping ======================================
* 1. Energy Demand Sectors
f_agri(flow)       01_AGRICULT / f52_AGRICULT, f53_FISHING /
f_mining(flow)     05_MINING / f54_MINING /
f_foodpro(flow)    06_FOODPRO / f55_FOODPRO /
f_textiles(flow)   07_TEXTILES / f56_TEXTILES /
f_woodpro(flow)    08_WOODPRO / f57_WOODPRO /
f_paperpro(flow)   09_PAPERPRO / f58_PAPERPRO /
f_chemical(flow)   11_CHEMICAL / f59_CHEMICAL, f26_TPETCHEM /
f_nonmet(flow)     12_NONMET / f60_NONMET /
f_nonferr(flow)    14_NONFERR / f62_NONFERR /
f_machine(flow)    15_MACHINE / f63_MACHINE /
f_transeq(flow)    16_TRANSEQ / f64_TRANSEQ /
f_otherind(flow)   17_OTHERIND / f65_INONSPEC, f31_TNONSPEC, f49_ENONSPEC /
f_construc(flow)   27_CONSTRUC / f66_CONSTRUC /
f_roadrail(flow)   28_LTRP / f70_ROAD, f71_RAIL, f74_PIPELINE, f75_TRNONSPE /
f_domewater(flow)  29_WTRP / f73_DOMESNAV /
f_domeair(flow)    30_ATRP / f72_DOMESAIR /
f_ser(flow)        31_SER / f67_COMMPUB, f68_ONONSPEC /

* 2. Energy Transformation and Own Use
f_coa(flow)        02_COAL (Own use in coal mines) / f33_EMINES /
f_oil(flow)        03_OIL (Own use in oil and gas extraction) / f34_EOILGASEX /
f_gas(flow)        04_GAS (Gas works and own use) / f36_EGASWKS, f43_ELNG, f21_TGASWKS, f29_TBLENDGAS /
f_petrolcoal(flow) 10_PETROLCOAL (Refineries and coal transformation) / f23_TPATFUEL, f24_TBKB, f25_TREFINER, f27_TCOALLIQ, f28_TGTL, f30_TCHARCOAL, f39_EPATFUEL, f40_EBKB, f41_EREFINER, f42_ECOALLIQ, f44_EGTL, f48_ECHARCOAL /

* 13_IRONSTL (Complex mapping for iron and steel)
f_ironstl(flow)    13_IRONSTL (Final consumption) / f61_IRONSTL /
f_cokeoven(flow)   13_IRONSTL (Coke oven transformation) / f22_TCOKEOVS, f38_ECOKEOVS /
f_blastfur(flow)   13_IRONSTL (Blast furnace transformation) / f20_TBLASTFUR /
f_Eblastcoke(flow) 13_IRONSTL (Blast furnace own use) / f35_EBLASTFUR /

* 3. Power, Heat, and T&D
f_elec(flow)       "19~26 Power generation sectors" / f11_MAINELEC, f12_AUTOELEC, f13_MAINCHP, f14_AUTOCHP, f15_MAINHEAT, f16_AUTOHEAT, f17_THEAT, f19_TBOILER, f18_TELE, f45_EPOWERPLT, f47_ENUC /
f_tnd(flow)        18_TnD (Transmission and distribution) / f50_DISTLOSS, f46_EPUMPST /

* 4. Household
f_household(flow)  Household consumption / f69_RESIDENT /

* 5. Non-Energy (NE) Sectors
f_nemining(flow)    05_MINING (NE) / f76_NEMINING /
f_nefoodpro(flow)   06_FOODPRO (NE) / f77_NEFOODPRO /
f_netextiles(flow)  07_TEXTILES (NE) / f78_NETEXTILES /
f_newoodpro(flow)   08_WOODPRO (NE) / f79_NEWOODPRO /
f_nepaperpro(flow)  09_PAPERPRO (NE) / f80_NEPAPERPRO /
f_nechemical(flow)  11_CHEMICAL (NE) / f81_NECHEM /
f_nenonmet(flow)    12_NONMET (NE) / f82_NENONMET /
f_neironstl(flow)   13_IRONSTL (NE) / f83_NEIRONSTL /
f_nenonferr(flow)   14_NONFERR (NE) / f84_NENONFERR /
f_nemachine(flow)   15_MACHINE (NE) / f85_NEMACHINE /
f_netranseq(flow)   16_TRANSEQ (NE) / f86_NETRANSEQ /
f_neotherind(flow)  17_OTHERIND (NE) / f87_NEINONSPEC /
f_neconstruc(flow)  27_CONSTRUC (NE) / f88_NECONSTRUC /
f_netransport(flow) 28~30_TRP (NE) / f90_NETRANS /
f_neother(flow)     31_SER (NE) / f89_NEOTHER /

* 6. Primary Energy Supply 
f_TES(flow)         Total energy supply / f7_TES /

* 7. Electricity Supply Sector (Generation GWH)
f_elecoutput(flow) Electrictiy output GWh / f99_ELOUTPUT /

* 8. Heat Supply Sector
f_heatoutput(flow) Heat Supply KTOE / f104_HEATOUT /

* 9. International Marine bunkers
f_marine_bunker(flow) International marine bunkers / f4_MARBUNK, f98_WORLDMAR /

* 10. International Aviation bunkers
f_aviation_bunker(flow) International aviation bunkers / f5_AVBUNK, f97_WORLDAV /

*=========================== Emission Factor Types ==============================
type / CO2EF, Stored_rate, CH4EF_Energy, N2OEF_Energy, CH4EF_Industry, 
       N2OEF_Industry, CH4EF_LTRP, N2OEF_LTRP, CH4EF_ATRP, N2OEF_ATRP, 
       CH4EF_WTRP, N2OEF_WTRP, CH4EF_Other, N2OEF_Other / ;

Alias(p_coal, p_coal2);
Alias(p_gas, p_gas2);
Alias(p_oil, p_oil2);
Alias(p_oilproduct, p_oilproduct2);
Alias(p_elecheat, p_elecheat2);
Alias(p_waste, p_waste2);
Alias(p_bio, p_bio2);
Alias(p_charcoal, p_charcoal2);
Alias(p_ren, p_ren2);

Parameter
WEB(flow,product,z),
WEB_KOR(flow,product), WEB_CHN(flow,product), WEB_JPN(flow,product), WEB_RUS(flow,product), WEB_MNG(flow,product), WEB_PRK(flow,product), 
WEB_NAM(flow,product), WEB_LAM(flow,product), WEB_WEU(flow,product), WEB_EEU(flow,product), WEB_RFSU(flow,product), WEB_MEA(flow,product), 
WEB_AFR(flow,product), WEB_RCPA(flow,product), WEB_SAS(flow,product), WEB_RPAS(flow,product), WEB_RPAO(flow,product)
;
* Unit: 2019 ktoe

Parameter
GHGsEF(product,type) kgC per TJ ;

$call csv2gdx Input_CGE/2019_WorldEnergyBalance_22e.csv output=Input_CGE/2019_WorldEnergyBalance_22e.gdx id=WEB index=1,2,3 values=4 useHeader=yes

$gdxIn Input_CGE/2019_WorldEnergyBalance_22e.gdx
$load WEB
$gdxIn

$call csv2gdx Input_CGE/Emission_Factors.csv output=Input_CGE/Emission_Factors.gdx id=GHGsEF index=1,2 values=3 useHeader=yes

$gdxIn Input_CGE/Emission_Factors.gdx
$load GHGsEF
$gdxIn

Parameter
* Intermediate & Final Consumptions
 Coal_DIO(p_coal,j,z), Coal_CO(p_coal,z), CoalR_DIO(p_coal,j,z), CoalR_CO(p_coal,z)
 Gas_DIO(p_gas,j,z), Gas_CO(p_gas,z), GasR_DIO(p_gas,j,z), GasR_CO(p_gas,z)
 Oil_DIO(p_oil,j,z), Oil_CO(p_oil,z), OilR_DIO(p_oil,j,z)
 Oilp_DIO(p_oilproduct,j,z), Oilp_CO(p_oilproduct,z), OilpR_DIO(p_oilproduct,j,z), OilpR_CO(p_oilproduct,z)
 
* Non-Energy Consumptions
 NCoal_DIO(p_coal,j,z), NCoalR_DIO(p_coal,j,z)
 NGas_DIO(p_gas,j,z), NGasR_DIO(p_gas,j,z)
 NOil_DIO(p_oil,j,z), NOilR_DIO(p_oil,j,z)
 NOilp_DIO(p_oilproduct,j,z), NOilpR_DIO(p_oilproduct,j,z)

* Physical Energy Reporting & Other Sources
 Waste_DIO(p_waste,j,z), Waste_CO(p_waste,z), WasteR_DIO(p_waste,j,z), WasteR_CO(p_waste,z)
 Bio_DIO(p_bio,j,z), Bio_CO(p_bio,z), BioR_DIO(p_bio,j,z), BioR_CO(p_bio,z)
 Elec_DIO(p_elecheat,j,z), Elec_CO(p_elecheat,z), ElecR_DIO(p_elecheat,j,z), ElecR_CO(p_elecheat,z)
 Charcoal_DIO(p_charcoal,j,z), Charcoal_CO(p_charcoal,z), CharcoalR_DIO(p_charcoal,j,z), CharcoalR_CO(p_charcoal,z)
 Ren_DIO(p_ren,j,z), Ren_CO(p_ren,z), RenR_DIO(p_ren,j,z), RenR_CO(p_ren,z)

* Bunkers
 Coal_Marine(p_coal,z), Coal_Aviation(p_coal,z)
 Gas_Marine(p_gas,z), Gas_Aviation(p_gas,z)
 Oil_Marine(p_oil,z), Oil_Aviation(p_oil,z)
 Oilp_Marine(p_oilproduct,z), Oilp_Aviation(p_oilproduct,z)
 Bio_Marine(p_bio,z), Bio_Aviation(p_bio,z)

* Totals
 Coal_Total(p_coal,z), Gas_Total(p_gas,z), Oil_Total(p_oil,z), Oilp_Total(p_oilproduct,z)
 Waste_Total(p_waste,z), Bio_Total(p_bio,z), Charcoal_Total(p_charcoal,z)
 ELec_Total(p_elecheat,z), Ren_Total(p_ren,z)
 NCoal_Total(p_coal,z), NGas_Total(p_gas,z), NOilp_Total(p_oilproduct,z)
 
* Primary Energy Supply
 TES_Coal(p_coal,z), TES_Gas(p_gas,z), TES_Oil(p_oil,z), TES_Oilproduct(p_oilproduct,z)
 TES_Nuclear(product,z), TES_Hydro(product,z), TES_Solar(product,z), TES_Wind(product,z), TES_Geo(product,z), TES_Bio(product,z)
 TES_Waste(product,z), TES_Other(product,z)
;

Parameter Gas_Prod_Iron(product, z) By-product gas production in the iron and steel sector (ktoe);
Parameter Coke_Prod_Iron(product, z) Coke production in the iron and steel sector (ktoe);

Gas_Prod_Iron(p_irongas, z) = 
      sum(f_cokeoven, WEB(f_cokeoven, p_irongas, z)$(WEB(f_cokeoven, p_irongas, z) > 0))
    + sum(f_blastfur, WEB(f_blastfur, p_irongas, z)$(WEB(f_blastfur, p_irongas, z) > 0)) ;

Coke_Prod_Iron(p_oilproduct, z) = 
      sum(f_cokeoven, WEB(f_cokeoven, p_oilproduct, z)$(WEB(f_cokeoven, p_oilproduct, z) > 0));

*==============================================================================
* Data Allocation (Zero assignments are omitted as GAMS defaults parameters to 0)
*==============================================================================

* ------------------- COAL -------------------
 Coal_DIO(p_coal,'01_AGRICULT',z) = sum((f_agri), WEB(f_agri, p_coal, z));
 Coal_DIO(p_coal,'02_COAL',z)     = -1*sum((f_coa), WEB(f_coa, p_coal, z));
 Coal_DIO(p_coal,'03_OIL',z)      = -1*sum((f_oil), WEB(f_oil, p_coal, z));
 Coal_DIO(p_coal,'04_GAS',z)      = -1*sum((f_gas), WEB(f_gas, p_coal, z));
 Coal_DIO(p_coal,'05_MINING',z)   = sum((f_mining), WEB(f_mining, p_coal, z));
 Coal_DIO(p_coal,'06_FOODPRO',z)  = sum((f_foodpro), WEB(f_foodpro, p_coal, z));
 Coal_DIO(p_coal,'07_TEXTILES',z) = sum((f_textiles), WEB(f_textiles, p_coal, z));
 Coal_DIO(p_coal,'08_WOODPRO',z)  = sum((f_woodpro), WEB(f_woodpro, p_coal, z));
 Coal_DIO(p_coal,'09_PAPERPRO',z) = sum((f_paperpro), WEB(f_paperpro, p_coal, z));
 Coal_DIO(p_coal,'10_PETROLCOAL',z) = -1*sum((f_petrolcoal), WEB(f_petrolcoal, p_coal, z)$(WEB(f_petrolcoal, p_coal, z) < 0));
 Coal_DIO(p_coal,'11_CHEMICAL',z) = sum((f_chemical), WEB(f_chemical, p_coal, z));
 Coal_DIO(p_coal,'12_NONMET',z)   = sum((f_nonmet), WEB(f_nonmet, p_coal, z));
 Coal_DIO(p_coal,'13_IRONSTL',z) 
    = sum(f_ironstl, WEB(f_ironstl, p_coal, z)$(WEB(f_ironstl, p_coal, z) > 0))    
    - 1 * sum(f_cokeoven, WEB(f_cokeoven, p_coal, z)$(WEB(f_cokeoven, p_coal, z) < 0))    
    - 1 * sum(f_blastfur, WEB(f_blastfur, p_coal, z)$(WEB(f_blastfur, p_coal, z) < 0))    
    - 1 * sum(f_Eblastcoke, WEB(f_Eblastcoke, p_coal, z)$(WEB(f_Eblastcoke, p_coal, z) < 0));
 Coal_DIO(p_coal,'14_NONFERR',z)  = sum((f_nonferr), WEB(f_nonferr, p_coal, z));
 Coal_DIO(p_coal,'15_MACHINE',z)  = sum((f_machine), WEB(f_machine, p_coal, z));
 Coal_DIO(p_coal,'16_TRANSEQ',z)  = sum((f_transeq), WEB(f_transeq, p_coal, z));
 Coal_DIO(p_coal,'17_OTHERIND',z) 
    = sum((f_otherind), WEB(f_otherind, p_coal, z)$(WEB(f_otherind, p_coal, z) > 0))    
    - 1 * sum((f_otherind), WEB(f_otherind, p_coal, z)$(WEB(f_otherind, p_coal, z) < 0));
 Coal_DIO(p_coal,'20_eCoal',z)    = -1*sum((f_elec), WEB(f_elec, p_coal, z)$(WEB(f_elec, p_coal, z) < 0));
 Coal_DIO(p_coal,'27_CONSTRUC',z) = sum((f_construc), WEB(f_construc, p_coal, z));
 Coal_DIO(p_coal,'28_LTRP',z)     = sum((f_roadrail), WEB(f_roadrail, p_coal, z));
 Coal_DIO(p_coal,'29_WTRP',z)     = sum((f_domewater), WEB(f_domewater, p_coal, z));
 Coal_DIO(p_coal,'30_ATRP',z)     = sum((f_domeair), WEB(f_domeair, p_coal, z));
 Coal_DIO(p_coal,'31_SER',z)      = sum((f_ser), WEB(f_ser, p_coal, z));
 Coal_CO(p_coal,z)                = sum((f_household), WEB(f_household, p_coal, z));
 Coal_Marine(p_coal,z)            = -1*sum((f_marine_bunker), WEB(f_marine_bunker, p_coal, z)); 
 Coal_Aviation(p_coal,z)          = -1*sum((f_aviation_bunker), WEB(f_aviation_bunker, p_coal, z));        

* ------------------- GAS -------------------
 Gas_DIO(p_gas,'01_AGRICULT',z) = sum((f_agri), WEB(f_agri, p_gas, z));
 Gas_DIO(p_gas,'02_COAL',z)     = -1 * sum((f_coa), WEB(f_coa, p_gas, z)$(WEB(f_coa, p_gas, z) < 0));
 Gas_DIO(p_gas,'04_GAS',z)      = -1 * sum((f_gas), WEB(f_gas, p_gas, z)$(WEB(f_gas, p_gas, z) < 0));
 Gas_DIO(p_gas,'05_MINING',z)   = sum((f_mining), WEB(f_mining, p_gas, z));
 Gas_DIO(p_gas,'06_FOODPRO',z)  = sum((f_foodpro), WEB(f_foodpro, p_gas, z));
 Gas_DIO(p_gas,'07_TEXTILES',z) = sum((f_textiles), WEB(f_textiles, p_gas, z));
 Gas_DIO(p_gas,'08_WOODPRO',z)  = sum((f_woodpro), WEB(f_woodpro, p_gas, z));
 Gas_DIO(p_gas,'09_PAPERPRO',z) = sum((f_paperpro), WEB(f_paperpro, p_gas, z));
 Gas_DIO(p_gas,'10_PETROLCOAL',z) = -1 * sum((f_petrolcoal), WEB(f_petrolcoal, p_gas, z)$(WEB(f_petrolcoal, p_gas, z) < 0));
 Gas_DIO(p_gas,'11_CHEMICAL',z) = sum((f_chemical), WEB(f_chemical, p_gas, z));
 Gas_DIO(p_gas,'12_NONMET',z)   = sum((f_nonmet), WEB(f_nonmet, p_gas, z));
 Gas_DIO(p_gas,'13_IRONSTL',z)  = sum((f_ironstl), WEB(f_ironstl, p_gas, z));
 Gas_DIO(p_gas,'14_NONFERR',z)  = sum((f_nonferr), WEB(f_nonferr, p_gas, z));
 Gas_DIO(p_gas,'15_MACHINE',z)  = sum((f_machine), WEB(f_machine, p_gas, z));
 Gas_DIO(p_gas,'16_TRANSEQ',z)  = sum((f_transeq), WEB(f_transeq, p_gas, z));
 Gas_DIO(p_gas,'17_OTHERIND',z) 
    = sum((f_otherind), WEB(f_otherind, p_gas, z)$(WEB(f_otherind, p_gas, z) > 0))
    - 1 * sum((f_otherind), WEB(f_otherind, p_gas, z)$(WEB(f_otherind, p_gas, z) < 0));
 Gas_DIO(p_gas,'21_eGas',z)     = -1 * sum((f_elec), WEB(f_elec, p_gas, z)$(WEB(f_elec, p_gas, z) < 0));
 Gas_DIO(p_gas,'27_CONSTRUC',z) = sum((f_construc), WEB(f_construc, p_gas, z));
 Gas_DIO(p_gas,'28_LTRP',z)     = sum((f_roadrail), WEB(f_roadrail, p_gas, z));
 Gas_DIO(p_gas,'29_WTRP',z)     = sum((f_domewater), WEB(f_domewater, p_gas, z));
 Gas_DIO(p_gas,'30_ATRP',z)     = sum((f_domeair), WEB(f_domeair, p_gas, z));
 Gas_DIO(p_gas,'31_SER',z)      = sum((f_ser), WEB(f_ser, p_gas, z));
 Gas_CO(p_gas,z)                = sum((f_household), WEB(f_household, p_gas, z));
 Gas_Marine(p_gas,z)            = -1*sum((f_marine_bunker), WEB(f_marine_bunker, p_gas, z)); 
 Gas_Aviation(p_gas,z)          = -1*sum((f_aviation_bunker), WEB(f_aviation_bunker, p_gas, z));   

* ------------------- OIL -------------------
 Oil_DIO(p_oil,'01_AGRICULT',z) = sum((f_agri), WEB(f_agri, p_oil, z));
 Oil_DIO(p_oil,'02_COAL',z)     = -1 * sum((f_coa), WEB(f_coa, p_oil, z)$(WEB(f_coa, p_oil, z) < 0));  
 Oil_DIO(p_oil,'03_OIL',z)      = -1 * sum((f_oil), WEB(f_oil, p_oil, z)$(WEB(f_oil, p_oil, z) < 0));
 Oil_DIO(p_oil,'05_MINING',z)   = sum((f_mining), WEB(f_mining, p_oil, z));
 Oil_DIO(p_oil,'06_FOODPRO',z)  = sum((f_foodpro), WEB(f_foodpro, p_oil, z));
 Oil_DIO(p_oil,'07_TEXTILES',z) = sum((f_textiles), WEB(f_textiles, p_oil, z));
 Oil_DIO(p_oil,'08_WOODPRO',z)  = sum((f_woodpro), WEB(f_woodpro, p_oil, z));
 Oil_DIO(p_oil,'09_PAPERPRO',z) = sum((f_paperpro), WEB(f_paperpro, p_oil, z));
 Oil_DIO(p_oil,'10_PETROLCOAL',z) = -1 * sum((f_petrolcoal), WEB(f_petrolcoal, p_oil, z)$(WEB(f_petrolcoal, p_oil, z) < 0));
 Oil_DIO(p_oil,'11_CHEMICAL',z) = sum((f_chemical), WEB(f_chemical, p_oil, z));
 Oil_DIO(p_oil,'12_NONMET',z)   = sum((f_nonmet), WEB(f_nonmet, p_oil, z));
 Oil_DIO(p_oil,'13_IRONSTL',z)  = sum((f_ironstl), WEB(f_ironstl, p_oil, z));
 Oil_DIO(p_oil,'14_NONFERR',z)  = sum((f_nonferr), WEB(f_nonferr, p_oil, z));
 Oil_DIO(p_oil,'15_MACHINE',z)  = sum((f_machine), WEB(f_machine, p_oil, z));
 Oil_DIO(p_oil,'16_TRANSEQ',z)  = sum((f_transeq), WEB(f_transeq, p_oil, z));
 Oil_DIO(p_oil,'17_OTHERIND',z) 
    = sum((f_otherind), WEB(f_otherind, p_oil, z)$(WEB(f_otherind, p_oil, z) > 0))
    - 1 * sum((f_otherind), WEB(f_otherind, p_oil, z)$(WEB(f_otherind, p_oil, z) < 0));
 Oil_DIO(p_oil,'22_eOil',z)     = -1 * sum((f_elec), WEB(f_elec, p_oil, z)$(WEB(f_elec, p_oil, z) < 0));
 Oil_DIO(p_oil,'27_CONSTRUC',z) = sum((f_construc), WEB(f_construc, p_oil, z));
 Oil_DIO(p_oil,'28_LTRP',z)     = sum((f_roadrail), WEB(f_roadrail, p_oil, z));
 Oil_DIO(p_oil,'29_WTRP',z)     = sum((f_domewater), WEB(f_domewater, p_oil, z));
 Oil_DIO(p_oil,'30_ATRP',z)     = sum((f_domeair), WEB(f_domeair, p_oil, z));
 Oil_DIO(p_oil,'31_SER',z)      = sum((f_ser), WEB(f_ser, p_oil, z));
 Oil_CO(p_oil,z)                = sum((f_household), WEB(f_household, p_oil, z));
 Oil_Marine(p_oil,z)            = -1*sum((f_marine_bunker), WEB(f_marine_bunker, p_oil, z)); 
 Oil_Aviation(p_oil,z)          = -1*sum((f_aviation_bunker), WEB(f_aviation_bunker, p_oil, z));   

* ------------------- OIL PRODUCTS -------------------
 Oilp_DIO(p_oilproduct,'01_AGRICULT',z) = sum((f_agri), WEB(f_agri, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'02_COAL',z)     = -1 * sum((f_coa), WEB(f_coa, p_oilproduct, z)$(WEB(f_coa, p_oilproduct, z) < 0)); 
 Oilp_DIO(p_oilproduct,'03_OIL',z)      = -1 * sum((f_oil), WEB(f_oil, p_oilproduct, z)$(WEB(f_oil, p_oilproduct, z) < 0));
 Oilp_DIO(p_oilproduct,'05_MINING',z)   = sum((f_mining), WEB(f_mining, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'06_FOODPRO',z)  = sum((f_foodpro), WEB(f_foodpro, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'07_TEXTILES',z) = sum((f_textiles), WEB(f_textiles, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'08_WOODPRO',z)  = sum((f_woodpro), WEB(f_woodpro, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'09_PAPERPRO',z) = sum((f_paperpro), WEB(f_paperpro, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'10_PETROLCOAL',z) = -1 * sum((f_petrolcoal), WEB(f_petrolcoal, p_oilproduct, z)$(WEB(f_petrolcoal, p_oilproduct, z) < 0));
 Oilp_DIO(p_oilproduct,'11_CHEMICAL',z) 
    = sum((f_chemical), WEB(f_chemical, p_oilproduct, z)$(WEB(f_chemical, p_oilproduct, z) > 0))
    - 1 * sum((f_chemical), WEB(f_chemical, p_oilproduct, z)$(WEB(f_chemical, p_oilproduct, z) < 0));
 Oilp_DIO(p_oilproduct,'12_NONMET',z)   = sum((f_nonmet), WEB(f_nonmet, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'13_IRONSTL',z) 
    = sum((f_ironstl), WEB(f_ironstl, p_oilproduct, z)$(WEB(f_ironstl, p_oilproduct, z) > 0))
    - 1 * sum(f_cokeoven, WEB(f_cokeoven, p_oilproduct, z)$(WEB(f_cokeoven, p_oilproduct, z) < 0))
    - 1 * sum(f_blastfur, WEB(f_blastfur, p_oilproduct, z)$(WEB(f_blastfur, p_oilproduct, z) < 0))
    - 1 * sum(f_Eblastcoke, WEB(f_Eblastcoke, p_oilproduct, z)$(WEB(f_Eblastcoke, p_oilproduct, z) < 0));
 Oilp_DIO(p_oilproduct,'14_NONFERR',z)  = sum((f_nonferr), WEB(f_nonferr, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'15_MACHINE',z)  = sum((f_machine), WEB(f_machine, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'16_TRANSEQ',z)  = sum((f_transeq), WEB(f_transeq, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'17_OTHERIND',z) 
    = sum((f_otherind), WEB(f_otherind, p_oilproduct, z)$(WEB(f_otherind, p_oilproduct, z) > 0))
    - 1 * sum((f_otherind), WEB(f_otherind, p_oilproduct, z)$(WEB(f_otherind, p_oilproduct, z) < 0));
 Oilp_DIO(p_oilproduct,'22_eOil',z)     = -1 * sum((f_elec), WEB(f_elec, p_oilproduct, z)$(WEB(f_elec, p_oilproduct, z) < 0));
 Oilp_DIO(p_oilproduct,'27_CONSTRUC',z) = sum((f_construc), WEB(f_construc, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'28_LTRP',z)     = sum((f_roadrail), WEB(f_roadrail, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'29_WTRP',z)     = sum((f_domewater), WEB(f_domewater, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'30_ATRP',z)     = sum((f_domeair), WEB(f_domeair, p_oilproduct, z));
 Oilp_DIO(p_oilproduct,'31_SER',z)      = sum((f_ser), WEB(f_ser, p_oilproduct, z));
 Oilp_CO(p_oilproduct,z)                = sum((f_household), WEB(f_household, p_oilproduct, z));
 Oilp_Marine(p_oilproduct,z)            = -1*sum((f_marine_bunker), WEB(f_marine_bunker, p_oilproduct, z)); 
 Oilp_Aviation(p_oilproduct,z)          = -1*sum((f_aviation_bunker), WEB(f_aviation_bunker, p_oilproduct, z));   

* ------------------- NON-ENERGY CONSUMPTION -------------------
* Only assign non-zero flows
 NCoal_DIO(p_coal,'05_MINING',z)     = sum(f_nemining, WEB(f_nemining, p_coal, z));
 NCoal_DIO(p_coal,'06_FOODPRO',z)    = sum(f_nefoodpro, WEB(f_nefoodpro, p_coal, z));
 NCoal_DIO(p_coal,'07_TEXTILES',z)   = sum(f_netextiles, WEB(f_netextiles, p_coal, z));
 NCoal_DIO(p_coal,'08_WOODPRO',z)    = sum(f_newoodpro, WEB(f_newoodpro, p_coal, z));
 NCoal_DIO(p_coal,'09_PAPERPRO',z)   = sum(f_nepaperpro, WEB(f_nepaperpro, p_coal, z));
 NCoal_DIO(p_coal,'11_CHEMICAL',z)   = sum(f_nechemical, WEB(f_nechemical, p_coal, z));
 NCoal_DIO(p_coal,'12_NONMET',z)     = sum(f_nenonmet, WEB(f_nenonmet, p_coal, z));
 NCoal_DIO(p_coal,'13_IRONSTL',z)    = sum(f_neironstl, WEB(f_neironstl, p_coal, z));
 NCoal_DIO(p_coal,'14_NONFERR',z)    = sum(f_nenonferr, WEB(f_nenonferr, p_coal, z));
 NCoal_DIO(p_coal,'15_MACHINE',z)    = sum(f_nemachine, WEB(f_nemachine, p_coal, z));
 NCoal_DIO(p_coal,'16_TRANSEQ',z)    = sum(f_netranseq, WEB(f_netranseq, p_coal, z));
 NCoal_DIO(p_coal,'17_OTHERIND',z)   = sum(f_neotherind, WEB(f_neotherind, p_coal, z));
 NCoal_DIO(p_coal,'27_CONSTRUC',z)   = sum(f_neconstruc, WEB(f_neconstruc, p_coal, z));
 NCoal_DIO(p_coal,'28_LTRP',z)       = sum(f_netransport, WEB(f_netransport, p_coal, z));
 NCoal_DIO(p_coal,'31_SER',z)        = sum(f_neother, WEB(f_neother, p_coal, z));

 NGas_DIO(p_gas,'05_MINING',z)     = sum(f_nemining, WEB(f_nemining, p_gas, z));
 NGas_DIO(p_gas,'06_FOODPRO',z)    = sum(f_nefoodpro, WEB(f_nefoodpro, p_gas, z));
 NGas_DIO(p_gas,'07_TEXTILES',z)   = sum(f_netextiles, WEB(f_netextiles, p_gas, z));
 NGas_DIO(p_gas,'08_WOODPRO',z)    = sum(f_newoodpro, WEB(f_newoodpro, p_gas, z));
 NGas_DIO(p_gas,'09_PAPERPRO',z)   = sum(f_nepaperpro, WEB(f_nepaperpro, p_gas, z));
 NGas_DIO(p_gas,'11_CHEMICAL',z)   = sum(f_nechemical, WEB(f_nechemical, p_gas, z));
 NGas_DIO(p_gas,'12_NONMET',z)     = sum(f_nenonmet, WEB(f_nenonmet, p_gas, z));
 NGas_DIO(p_gas,'13_IRONSTL',z)    = sum(f_neironstl, WEB(f_neironstl, p_gas, z));
 NGas_DIO(p_gas,'14_NONFERR',z)    = sum(f_nenonferr, WEB(f_nenonferr, p_gas, z));
 NGas_DIO(p_gas,'15_MACHINE',z)    = sum(f_nemachine, WEB(f_nemachine, p_gas, z));
 NGas_DIO(p_gas,'16_TRANSEQ',z)    = sum(f_netranseq, WEB(f_netranseq, p_gas, z));
 NGas_DIO(p_gas,'17_OTHERIND',z)   = sum(f_neotherind, WEB(f_neotherind, p_gas, z));
 NGas_DIO(p_gas,'27_CONSTRUC',z)   = sum(f_neconstruc, WEB(f_neconstruc, p_gas, z));
 NGas_DIO(p_gas,'28_LTRP',z)       = sum(f_netransport, WEB(f_netransport, p_gas, z));
 NGas_DIO(p_gas,'31_SER',z)        = sum(f_neother, WEB(f_neother, p_gas, z));

 NOilp_DIO(p_oilproduct,'05_MINING',z)     = sum(f_nemining, WEB(f_nemining, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'06_FOODPRO',z)    = sum(f_nefoodpro, WEB(f_nefoodpro, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'07_TEXTILES',z)   = sum(f_netextiles, WEB(f_netextiles, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'08_WOODPRO',z)    = sum(f_newoodpro, WEB(f_newoodpro, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'09_PAPERPRO',z)   = sum(f_nepaperpro, WEB(f_nepaperpro, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'11_CHEMICAL',z)   = sum(f_nechemical, WEB(f_nechemical, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'12_NONMET',z)     = sum(f_nenonmet, WEB(f_nenonmet, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'13_IRONSTL',z)    = sum(f_neironstl, WEB(f_neironstl, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'14_NONFERR',z)    = sum(f_nenonferr, WEB(f_nenonferr, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'15_MACHINE',z)    = sum(f_nemachine, WEB(f_nemachine, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'16_TRANSEQ',z)    = sum(f_netranseq, WEB(f_netranseq, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'17_OTHERIND',z)   = sum(f_neotherind, WEB(f_neotherind, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'27_CONSTRUC',z)   = sum(f_neconstruc, WEB(f_neconstruc, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'28_LTRP',z)       = sum(f_netransport, WEB(f_netransport, p_oilproduct, z));
 NOilp_DIO(p_oilproduct,'31_SER',z)        = sum(f_neother, WEB(f_neother, p_oilproduct, z));

* ------------------- ELECTRICITY / HEAT -------------------
 Elec_DIO(p_elecheat,'01_AGRICULT',z) = sum((f_agri), WEB(f_agri, p_elecheat, z));
 Elec_DIO(p_elecheat,'02_COAL',z)     = -1 * sum((f_coa), WEB(f_coa, p_elecheat, z)$(WEB(f_coa, p_elecheat, z) < 0));  
 Elec_DIO(p_elecheat,'03_OIL',z)      = -1 * sum((f_oil), WEB(f_oil, p_elecheat, z)$(WEB(f_oil, p_elecheat, z) < 0));   
 Elec_DIO(p_elecheat,'04_GAS',z)      = -1 * sum((f_gas), WEB(f_gas, p_elecheat, z)$(WEB(f_gas, p_elecheat, z) < 0));
 Elec_DIO(p_elecheat,'05_MINING',z)   = sum((f_mining), WEB(f_mining, p_elecheat, z));
 Elec_DIO(p_elecheat,'06_FOODPRO',z)  = sum((f_foodpro), WEB(f_foodpro, p_elecheat, z));
 Elec_DIO(p_elecheat,'07_TEXTILES',z) = sum((f_textiles), WEB(f_textiles, p_elecheat, z));
 Elec_DIO(p_elecheat,'08_WOODPRO',z)  = sum((f_woodpro), WEB(f_woodpro, p_elecheat, z));
 Elec_DIO(p_elecheat,'09_PAPERPRO',z) = sum((f_paperpro), WEB(f_paperpro, p_elecheat, z));
 Elec_DIO(p_elecheat,'10_PETROLCOAL',z) = -1 * sum((f_petrolcoal), WEB(f_petrolcoal, p_elecheat, z)$(WEB(f_petrolcoal, p_elecheat, z) < 0));
 Elec_DIO(p_elecheat,'11_CHEMICAL',z) 
    = sum((f_chemical), WEB(f_chemical, p_elecheat, z)$(WEB(f_chemical, p_elecheat, z) > 0))
    - 1 * sum((f_chemical), WEB(f_chemical, p_elecheat, z)$(WEB(f_chemical, p_elecheat, z) < 0));
 Elec_DIO(p_elecheat,'12_NONMET',z)   = sum((f_nonmet), WEB(f_nonmet, p_elecheat, z));
 Elec_DIO(p_elecheat,'13_IRONSTL',z) 
    = sum((f_ironstl), WEB(f_ironstl, p_elecheat, z)$(WEB(f_ironstl, p_elecheat, z) > 0))
    - 1 * sum(f_cokeoven, WEB(f_cokeoven, p_elecheat, z)$(WEB(f_cokeoven, p_elecheat, z) < 0))
    - 1 * sum(f_blastfur, WEB(f_blastfur, p_elecheat, z)$(WEB(f_blastfur, p_elecheat, z) < 0))
    - 1 * sum(f_Eblastcoke, WEB(f_Eblastcoke, p_elecheat, z)$(WEB(f_Eblastcoke, p_elecheat, z) < 0));
 Elec_DIO(p_elecheat,'14_NONFERR',z)  = sum((f_nonferr), WEB(f_nonferr, p_elecheat, z));
 Elec_DIO(p_elecheat,'15_MACHINE',z)  = sum((f_machine), WEB(f_machine, p_elecheat, z));
 Elec_DIO(p_elecheat,'16_TRANSEQ',z)  = sum((f_transeq), WEB(f_transeq, p_elecheat, z));
 Elec_DIO(p_elecheat,'17_OTHERIND',z) 
    = sum((f_otherind), WEB(f_otherind, p_elecheat, z)$(WEB(f_otherind, p_elecheat, z) > 0))
    - 1 * sum((f_otherind), WEB(f_otherind, p_elecheat, z)$(WEB(f_otherind, p_elecheat, z) < 0));
 Elec_DIO(p_elecheat,'18_TnD',z) 
    = -1 * sum((f_tnd), WEB(f_tnd, p_elecheat, z)$(WEB(f_tnd, p_elecheat, z) < 0))
    - 1 * sum((f_elec), WEB(f_elec, p_elecheat, z)$(WEB(f_elec, p_elecheat, z) < 0));
 Elec_DIO(p_elecheat,'27_CONSTRUC',z) = sum((f_construc), WEB(f_construc, p_elecheat, z));
 Elec_DIO(p_elecheat,'28_LTRP',z)     = sum((f_roadrail), WEB(f_roadrail, p_elecheat, z));
 Elec_DIO(p_elecheat,'29_WTRP',z)     = sum((f_domewater), WEB(f_domewater, p_elecheat, z));
 Elec_DIO(p_elecheat,'30_ATRP',z)     = sum((f_domeair), WEB(f_domeair, p_elecheat, z));
 Elec_DIO(p_elecheat,'31_SER',z)      = sum((f_ser), WEB(f_ser, p_elecheat, z));
 Elec_CO(p_elecheat,z)                = sum((f_household), WEB(f_household, p_elecheat, z));

* ------------------- WASTE -------------------
 Waste_DIO(p_waste,'01_AGRICULT',z)   = sum((f_agri), WEB(f_agri, p_waste, z));
 Waste_DIO(p_waste,'02_COAL',z)       = sum((f_coa), WEB(f_coa, p_waste, z));
 Waste_DIO(p_waste,'03_OIL',z)        = sum((f_oil), WEB(f_oil, p_waste, z));
 Waste_DIO(p_waste,'04_GAS',z)        = sum((f_gas), WEB(f_gas, p_waste, z));
 Waste_DIO(p_waste,'05_MINING',z)     = sum((f_mining), WEB(f_mining, p_waste, z));
 Waste_DIO(p_waste,'06_FOODPRO',z)    = sum((f_foodpro), WEB(f_foodpro, p_waste, z));
 Waste_DIO(p_waste,'07_TEXTILES',z)   = sum((f_textiles), WEB(f_textiles, p_waste, z));
 Waste_DIO(p_waste,'08_WOODPRO',z)    = sum((f_woodpro), WEB(f_woodpro, p_waste, z));
 Waste_DIO(p_waste,'09_PAPERPRO',z)   = sum((f_paperpro), WEB(f_paperpro, p_waste, z));
 Waste_DIO(p_waste,'10_PETROLCOAL',z) = sum((f_petrolcoal), WEB(f_petrolcoal, p_waste, z));
 Waste_DIO(p_waste,'11_CHEMICAL',z)   = sum((f_chemical), WEB(f_chemical, p_waste, z));
 Waste_DIO(p_waste,'12_NONMET',z)     = sum((f_nonmet), WEB(f_nonmet, p_waste, z));
 Waste_DIO(p_waste,'13_IRONSTL',z)    = sum((f_ironstl), WEB(f_ironstl, p_waste, z));
 Waste_DIO(p_waste,'14_NONFERR',z)    = sum((f_nonferr), WEB(f_nonferr, p_waste, z));
 Waste_DIO(p_waste,'15_MACHINE',z)    = sum((f_machine), WEB(f_machine, p_waste, z));
 Waste_DIO(p_waste,'16_TRANSEQ',z)    = sum((f_transeq), WEB(f_transeq, p_waste, z));
 Waste_DIO(p_waste,'17_OTHERIND',z)   = sum((f_otherind), WEB(f_otherind, p_waste, z));
 Waste_DIO(p_waste,'26_eOther',z)     = -1*sum((f_elec), WEB(f_elec, p_waste, z)) ;  
 Waste_DIO(p_waste,'27_CONSTRUC',z)   = sum((f_construc), WEB(f_construc, p_waste, z));
 Waste_DIO(p_waste,'28_LTRP',z)       = sum((f_roadrail), WEB(f_roadrail, p_waste, z));
 Waste_DIO(p_waste,'29_WTRP',z)       = sum((f_domewater), WEB(f_domewater, p_waste, z));
 Waste_DIO(p_waste,'30_ATRP',z)       = sum((f_domeair), WEB(f_domeair, p_waste, z));
 Waste_DIO(p_waste,'31_SER',z)        = sum((f_ser), WEB(f_ser, p_waste, z));
 Waste_CO(p_waste,z)                  = sum((f_household), WEB(f_household, p_waste, z));

* ------------------- BIO -------------------
 Bio_DIO(p_bio,'01_AGRICULT',z)   = sum((f_agri), WEB(f_agri, p_bio, z));
 Bio_DIO(p_bio,'02_COAL',z)       = sum((f_coa), WEB(f_coa, p_bio, z));
 Bio_DIO(p_bio,'03_OIL',z)        = sum((f_oil), WEB(f_oil, p_bio, z));
 Bio_DIO(p_bio,'04_GAS',z)        = sum((f_gas), WEB(f_gas, p_bio, z));
 Bio_DIO(p_bio,'05_MINING',z)     = sum((f_mining), WEB(f_mining, p_bio, z));
 Bio_DIO(p_bio,'06_FOODPRO',z)    = sum((f_foodpro), WEB(f_foodpro, p_bio, z));
 Bio_DIO(p_bio,'07_TEXTILES',z)   = sum((f_textiles), WEB(f_textiles, p_bio, z));
 Bio_DIO(p_bio,'08_WOODPRO',z)    = sum((f_woodpro), WEB(f_woodpro, p_bio, z));
 Bio_DIO(p_bio,'09_PAPERPRO',z)   = sum((f_paperpro), WEB(f_paperpro, p_bio, z));
 Bio_DIO(p_bio,'10_PETROLCOAL',z) = sum((f_petrolcoal), WEB(f_petrolcoal, p_bio, z));
 Bio_DIO(p_bio,'11_CHEMICAL',z)   = sum((f_chemical), WEB(f_chemical, p_bio, z));
 Bio_DIO(p_bio,'12_NONMET',z)     = sum((f_nonmet), WEB(f_nonmet, p_bio, z));
 Bio_DIO(p_bio,'13_IRONSTL',z)    = sum((f_ironstl), WEB(f_ironstl, p_bio, z));
 Bio_DIO(p_bio,'14_NONFERR',z)    = sum((f_nonferr), WEB(f_nonferr, p_bio, z));
 Bio_DIO(p_bio,'15_MACHINE',z)    = sum((f_machine), WEB(f_machine, p_bio, z));
 Bio_DIO(p_bio,'16_TRANSEQ',z)    = sum((f_transeq), WEB(f_transeq, p_bio, z));
 Bio_DIO(p_bio,'17_OTHERIND',z)   = sum((f_otherind), WEB(f_otherind, p_bio, z));
 Bio_DIO(p_bio,'26_eOther',z)     = -1*sum((f_elec), WEB(f_elec, p_bio, z)) ; 
 Bio_DIO(p_bio,'27_CONSTRUC',z)   = sum((f_construc), WEB(f_construc, p_bio, z));
 Bio_DIO(p_bio,'28_LTRP',z)       = sum((f_roadrail), WEB(f_roadrail, p_bio, z));
 Bio_DIO(p_bio,'29_WTRP',z)       = sum((f_domewater), WEB(f_domewater, p_bio, z));
 Bio_DIO(p_bio,'30_ATRP',z)       = sum((f_domeair), WEB(f_domeair, p_bio, z));
 Bio_DIO(p_bio,'31_SER',z)        = sum((f_ser), WEB(f_ser, p_bio, z));
 Bio_CO(p_bio,z)                  = sum((f_household), WEB(f_household, p_bio, z));
 Bio_Marine(p_bio,z)              = -1*sum((f_marine_bunker), WEB(f_marine_bunker, p_bio, z)); 
 Bio_Aviation(p_bio,z)            = -1*sum((f_aviation_bunker), WEB(f_aviation_bunker, p_bio, z));   

* ------------------- CHARCOAL -------------------
 Charcoal_DIO(p_charcoal,'01_AGRICULT',z)   = sum((f_agri), WEB(f_agri, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'02_COAL',z)       = sum((f_coa), WEB(f_coa, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'03_OIL',z)        = sum((f_oil), WEB(f_oil, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'04_GAS',z)        = sum((f_gas), WEB(f_gas, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'05_MINING',z)     = sum((f_mining), WEB(f_mining, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'06_FOODPRO',z)    = sum((f_foodpro), WEB(f_foodpro, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'07_TEXTILES',z)   = sum((f_textiles), WEB(f_textiles, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'08_WOODPRO',z)    = sum((f_woodpro), WEB(f_woodpro, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'09_PAPERPRO',z)   = sum((f_paperpro), WEB(f_paperpro, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'10_PETROLCOAL',z) = sum((f_petrolcoal), WEB(f_petrolcoal, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'11_CHEMICAL',z)   = sum((f_chemical), WEB(f_chemical, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'12_NONMET',z)     = sum((f_nonmet), WEB(f_nonmet, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'13_IRONSTL',z)    = sum((f_ironstl), WEB(f_ironstl, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'14_NONFERR',z)    = sum((f_nonferr), WEB(f_nonferr, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'15_MACHINE',z)    = sum((f_machine), WEB(f_machine, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'16_TRANSEQ',z)    = sum((f_transeq), WEB(f_transeq, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'17_OTHERIND',z)   = sum((f_otherind), WEB(f_otherind, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'26_eOther',z)     = -1*sum((f_elec), WEB(f_elec, p_charcoal, z)) ; 
 Charcoal_DIO(p_charcoal,'27_CONSTRUC',z)   = sum((f_construc), WEB(f_construc, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'28_LTRP',z)       = sum((f_roadrail), WEB(f_roadrail, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'29_WTRP',z)       = sum((f_domewater), WEB(f_domewater, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'30_ATRP',z)       = sum((f_domeair), WEB(f_domeair, p_charcoal, z));
 Charcoal_DIO(p_charcoal,'31_SER',z)        = sum((f_ser), WEB(f_ser, p_charcoal, z));
 Charcoal_CO(p_charcoal,z)                  = sum((f_household), WEB(f_household, p_charcoal, z));

* ------------------- RENEWABLE & NUCLEAR -------------------
 Ren_DIO(p_ren,'01_AGRICULT',z)   = sum((f_agri), WEB(f_agri, p_ren, z));
 Ren_DIO(p_ren,'02_COAL',z)       = sum((f_coa), WEB(f_coa, p_ren, z));
 Ren_DIO(p_ren,'03_OIL',z)        = sum((f_oil), WEB(f_oil, p_ren, z));
 Ren_DIO(p_ren,'04_GAS',z)        = sum((f_gas), WEB(f_gas, p_ren, z));
 Ren_DIO(p_ren,'05_MINING',z)     = sum((f_mining), WEB(f_mining, p_ren, z));
 Ren_DIO(p_ren,'06_FOODPRO',z)    = sum((f_foodpro), WEB(f_foodpro, p_ren, z));
 Ren_DIO(p_ren,'07_TEXTILES',z)   = sum((f_textiles), WEB(f_textiles, p_ren, z));
 Ren_DIO(p_ren,'08_WOODPRO',z)    = sum((f_woodpro), WEB(f_woodpro, p_ren, z));
 Ren_DIO(p_ren,'09_PAPERPRO',z)   = sum((f_paperpro), WEB(f_paperpro, p_ren, z));
 Ren_DIO(p_ren,'10_PETROLCOAL',z) = sum((f_petrolcoal), WEB(f_petrolcoal, p_ren, z));
 Ren_DIO(p_ren,'11_CHEMICAL',z)   = sum((f_chemical), WEB(f_chemical, p_ren, z));
 Ren_DIO(p_ren,'12_NONMET',z)     = sum((f_nonmet), WEB(f_nonmet, p_ren, z));
 Ren_DIO(p_ren,'13_IRONSTL',z)    = sum((f_ironstl), WEB(f_ironstl, p_ren, z));
 Ren_DIO(p_ren,'14_NONFERR',z)    = sum((f_nonferr), WEB(f_nonferr, p_ren, z));
 Ren_DIO(p_ren,'15_MACHINE',z)    = sum((f_machine), WEB(f_machine, p_ren, z));
 Ren_DIO(p_ren,'16_TRANSEQ',z)    = sum((f_transeq), WEB(f_transeq, p_ren, z));
 Ren_DIO(p_ren,'17_OTHERIND',z)   = sum((f_otherind), WEB(f_otherind, p_ren, z));
 Ren_DIO(p_ren,'27_CONSTRUC',z)   = sum((f_construc), WEB(f_construc, p_ren, z));
 Ren_DIO(p_ren,'28_LTRP',z)       = sum((f_roadrail), WEB(f_roadrail, p_ren, z));
 Ren_DIO(p_ren,'29_WTRP',z)       = sum((f_domewater), WEB(f_domewater, p_ren, z));
 Ren_DIO(p_ren,'30_ATRP',z)       = sum((f_domeair), WEB(f_domeair, p_ren, z));
 Ren_DIO(p_ren,'31_SER',z)        = sum((f_ser), WEB(f_ser, p_ren, z));
 Ren_CO(p_ren,z)                  = sum((f_household), WEB(f_household, p_ren, z));

*==============================================================================
* Calculated Totals
*==============================================================================
 NCoal_Total(p_coal,z)       = sum(j, NCoal_DIO(p_coal,j,z));
 NGas_Total(p_gas,z)         = sum(j, NGas_DIO(p_gas,j,z));
 NOilp_Total(p_oilproduct,z) = sum(j, NOilp_DIO(p_oilproduct,j,z));

 Coal_Total(p_coal,z)        = sum(j, Coal_DIO(p_coal,j,z)) + Coal_CO(p_coal,z);
 Gas_Total(p_gas,z)          = sum(j, Gas_DIO(p_gas,j,z)) + Gas_CO(p_gas,z);
 Oilp_Total(p_oilproduct,z)  = sum(j, Oilp_DIO(p_oilproduct,j,z)) + Oilp_CO(p_oilproduct,z);
 ELec_Total(p_elecheat,z)    = sum(j, ELec_DIO(p_elecheat,j,z)) + ELec_CO(p_elecheat,z);

 TES_Coal(p_coal,z)               = sum(f_TES, WEB(f_TES, p_coal, z));         
 TES_Gas(p_gas,z)                 = sum(f_TES, WEB(f_TES, p_gas, z));         
 TES_Oil(p_oil,z)                 = sum(f_TES, WEB(f_TES, p_oil, z));   
 TES_Oilproduct(p_oilproduct,z)   = sum(f_TES, WEB(f_TES, p_oilproduct, z));
 TES_Nuclear(p_nuclear,z) = sum(f_TES, WEB(f_TES, p_nuclear, z));
 TES_Hydro(p_hydro,z)     = sum(f_TES, WEB(f_TES, p_hydro, z));
 TES_Solar(p_solar,z)     = sum(f_TES, WEB(f_TES, p_solar, z));
 TES_Wind(p_wind,z)       = sum(f_TES, WEB(f_TES, p_wind, z));
 TES_Geo(p_geo,z)         = sum(f_TES, WEB(f_TES, p_geo, z));
 TES_Bio(p_bio,z)         = sum(f_TES, WEB(f_TES, p_bio, z));
 TES_Waste(p_waste,z)     = sum(f_TES, WEB(f_TES, p_waste, z));
 TES_Other(p_other_power,z) = sum(f_TES, WEB(f_TES, p_other_power, z));

*==============================================================================
* Ratio Calculations (Consolidated Block)
*==============================================================================
Loop(j,
* Intermediate consumption ratios
  CoalR_DIO(p_coal,j,z)$(Coal_DIO(p_coal,j,z) > 0)             = Coal_DIO(p_coal,j,z)/sum(p_coal2, Coal_DIO(p_coal2,j,z));
  GasR_DIO(p_gas,j,z)$(Gas_DIO(p_gas,j,z) > 0)                 = Gas_DIO(p_gas,j,z)/sum(p_gas2, Gas_DIO(p_gas2,j,z));
  OilR_DIO(p_oil,j,z)$(Oil_DIO(p_oil,j,z) > 0)                 = Oil_DIO(p_oil,j,z)/sum(p_oil2, Oil_DIO(p_oil2,j,z));
  OilpR_DIO(p_oilproduct,j,z)$(Oilp_DIO(p_oilproduct,j,z) > 0) = Oilp_DIO(p_oilproduct,j,z)/sum(p_oilproduct2, Oilp_DIO(p_oilproduct2,j,z));
  
  ElecR_DIO(p_elecheat,j,z)$(Elec_DIO(p_elecheat,j,z) > 0)     = Elec_DIO(p_elecheat,j,z)/sum(p_elecheat2, Elec_DIO(p_elecheat2,j,z));
  WasteR_DIO(p_waste,j,z)$(Waste_DIO(p_waste,j,z) > 0)         = Waste_DIO(p_waste,j,z)/sum(p_waste2, Waste_DIO(p_waste2,j,z));
  BioR_DIO(p_bio,j,z)$(Bio_DIO(p_bio,j,z) > 0)                 = Bio_DIO(p_bio,j,z)/sum(p_bio2, Bio_DIO(p_bio2,j,z));
  CharcoalR_DIO(p_charcoal,j,z)$(Charcoal_DIO(p_charcoal,j,z) > 0) = Charcoal_DIO(p_charcoal,j,z)/sum(p_charcoal2, Charcoal_DIO(p_charcoal2,j,z));
  RenR_DIO(p_ren,j,z)$(Ren_DIO(p_ren,j,z) > 0)                 = Ren_DIO(p_ren,j,z)/sum(p_ren2, Ren_DIO(p_ren2,j,z));

* Non-energy intermediate consumption ratios
  NCoalR_DIO(p_coal,j,z)$(NCoal_DIO(p_coal,j,z) > 0)           = NCoal_DIO(p_coal,j,z)/sum(p_coal2, NCoal_DIO(p_coal2,j,z));
  NGasR_DIO(p_gas,j,z)$(NGas_DIO(p_gas,j,z) > 0)               = NGas_DIO(p_gas,j,z)/sum(p_gas2, NGas_DIO(p_gas2,j,z));
  NOilp_DIO(p_oilproduct,j,z)$(NOilp_DIO(p_oilproduct,j,z) > 0)= NOilp_DIO(p_oilproduct,j,z)/sum(p_oilproduct2, NOilp_DIO(p_oilproduct2,j,z));
);

* Household consumption ratios
CoalR_CO(p_coal,z)$(Coal_CO(p_coal,z) > 0)                     = Coal_CO(p_coal,z)/ sum(p_coal2, Coal_CO(p_coal2,z));
GasR_CO(p_gas,z)$(Gas_CO(p_gas,z) > 0)                         = Gas_CO(p_gas,z)/ sum(p_gas2, Gas_CO(p_gas2,z));
OilpR_CO(p_oilproduct,z)$(Oilp_CO(p_oilproduct,z) > 0)         = Oilp_CO(p_oilproduct,z)/ sum(p_oilproduct2, Oilp_CO(p_oilproduct2,z));

ElecR_CO(p_elecheat,z)$(Elec_CO(p_elecheat,z) > 0)             = Elec_CO(p_elecheat,z)/ sum(p_elecheat2, Elec_CO(p_elecheat2,z));
WasteR_CO(p_waste,z)$(Waste_CO(p_waste,z) > 0)                 = Waste_CO(p_waste,z)/ sum(p_waste2, Waste_CO(p_waste2,z));
BioR_CO(p_bio,z)$(Bio_CO(p_bio,z) > 0)                         = Bio_CO(p_bio,z)/ sum(p_bio2, Bio_CO(p_bio2,z));
CharcoalR_CO(p_charcoal,z)$(Charcoal_CO(p_charcoal,z) > 0)     = Charcoal_CO(p_charcoal,z)/ sum(p_charcoal2, Charcoal_CO(p_charcoal2,z));
RenR_CO(p_ren,z)$(Ren_CO(p_ren,z) > 0)                         = Ren_CO(p_ren,z)/ sum(p_ren2, Ren_CO(p_ren2,z));

*==============================================================================
* Electricity Generation and Loss Calculation (GWh)
*==============================================================================

* 1. Electricity Generation by Product (Unit: GWh)
Parameter Elec_Gen_ByProd_GWh(product, z) Electricity generation by product (GWh);
Parameter Total_Elec_Gen_GWh(z)           Total electricity generation by region (GWh);

* Extract total electricity output (f99_ELOUTPUT) directly from WEB data.
Elec_Gen_ByProd_GWh(product, z) = WEB('f99_ELOUTPUT', product, z);

* Total electricity generation by region.
Total_Elec_Gen_GWh(z) = sum(product, Elec_Gen_ByProd_GWh(product, z));

* 2. Total Electricity Consumption (Unit Conversion: ktoe to GWh)
* Extract only 'p63_ELECTR' from previously allocated Elec_DIO and Elec_CO.
* Exclude Transmission and Distribution (18_TnD) as it is treated as a loss.
Parameter Total_Elec_Cons_ktoe(z) Total electricity consumption (ktoe);
Parameter Total_Elec_Cons_GWh(z)  Total electricity consumption (GWh);

Total_Elec_Cons_ktoe(z) = 
    sum(j$(not sameas(j,'18_TnD')), Elec_DIO('p63_ELECTR',j,z)) 
    + Elec_CO('p63_ELECTR',z);

Total_Elec_Cons_GWh(z) = Total_Elec_Cons_ktoe(z) * 11.63;

* 3. Electricity Loss and Loss Rate Calculation (Unit: GWh, %)
Parameter Elec_Loss_Gap_GWh(z)  Total electricity loss based on generation-consumption gap (GWh);
Parameter Elec_Loss_Rate(z)     Total electricity loss rate (%);
Parameter Dist_Loss_WEB_GWh(z)  Official T&D loss reported in IEA WEB (GWh);

* (A) Calculated Total Gap (Includes T&D loss, own use, and statistical differences)
Elec_Loss_Gap_GWh(z) = Total_Elec_Gen_GWh(z) - Total_Elec_Cons_GWh(z);

* Calculate loss rate (conditional on generation > 0 to avoid division by zero)
Elec_Loss_Rate(z)$(Total_Elec_Gen_GWh(z) > 0) 
    = (Elec_Loss_Gap_GWh(z) / Total_Elec_Gen_GWh(z)) * 100;

* (B) Reported T&D Loss from IEA WEB ('f50_DISTLOSS' for comparison)
* Multiply by -1 to convert original negative values to positive.
Dist_Loss_WEB_GWh(z) = -1 * WEB('f50_DISTLOSS', 'p63_ELECTR', z) * 11.63;

*==============================================================================
* Heat Generation and Loss Calculation (ktoe)
*==============================================================================

* 1. Heat Generation by Product (Unit: ktoe)
Parameter Heat_Gen_ByProd_ktoe(product, z) Heat generation by product (ktoe);
Parameter Total_Heat_Gen_ktoe(z)           Total heat generation by region (ktoe);

* Extract total heat output (f104_HEATOUT) from WEB data.
Heat_Gen_ByProd_ktoe(product, z) = WEB('f104_HEATOUT', product, z);

* Total heat generation by region.
Total_Heat_Gen_ktoe(z) = sum(product, Heat_Gen_ByProd_ktoe(product, z));

* 2. Total Heat Consumption (Unit: ktoe)
* Aggregate 'p64_HEAT' and 'p65_HEATNS' from the p_elecheat group.
Parameter Total_Heat_Cons_ktoe(z) Total heat consumption (ktoe);

Total_Heat_Cons_ktoe(z) = 
    sum(j$(not sameas(j,'18_TnD')), Elec_DIO('p64_HEAT',j,z)) 
  + sum(j$(not sameas(j,'18_TnD')), Elec_DIO('p65_HEATNS',j,z))
  + Elec_CO('p64_HEAT',z)
  + Elec_CO('p65_HEATNS',z);

* 3. Heat Loss and Loss Rate Calculation (Unit: ktoe, %)
Parameter Heat_Loss_Gap_ktoe(z)      Total heat loss based on generation-consumption gap (ktoe);
Parameter Heat_Loss_Rate(z)          Total heat loss rate (%);
Parameter Dist_Loss_WEB_Heat_ktoe(z) Official heat distribution loss reported in IEA WEB (ktoe);

* (A) Calculated Total Gap (Includes distribution loss, own use, and statistical differences)
Heat_Loss_Gap_ktoe(z) = Total_Heat_Gen_ktoe(z) - Total_Heat_Cons_ktoe(z);

* Calculate loss rate (conditional on generation > 0 to avoid division by zero)
Heat_Loss_Rate(z)$(Total_Heat_Gen_ktoe(z) > 0) 
    = (Heat_Loss_Gap_ktoe(z) / Total_Heat_Gen_ktoe(z)) * 100;

* (B) Reported Heat Distribution Loss from IEA WEB ('f50_DISTLOSS' for comparison)
* Multiply by -1 to convert original negative values to positive.
Dist_Loss_WEB_Heat_ktoe(z) = 
    -1 * WEB('f50_DISTLOSS', 'p64_HEAT', z) 
    -1 * WEB('f50_DISTLOSS', 'p65_HEATNS', z);

*=============================Eelectricity============================================================
 Parameter
 ElecNucGWh(j,z)     Nuclear Output GWh
 ElecCoalGWh(j,z)    Coal Output GWh 
 ElecGasGWh(j,z)     Gas Output GWh 
 ElecOilGWh(j,z)     Oil Output GWh 
 ElecSolarGWh(j,z)   Solar Output GWh 
 ElecWindGWh(j,z)    Wind Output GWh 
 ElecHydroGWh(j,z)   Hydro Output GWh
 ElecwasteGWh(j,z)   waste Output GWh
 ElecbioGWh(j,z)     bio Output GWh
 ElecgeoGWh(j,z)     geothermal Output GWh
 ElecOtherGWh(j,z)   Other Output GWh
;

 ElecNucGWh('19_eNuclear',z)  = sum((f_elecoutput, p_nuclear), WEB(f_elecoutput, p_nuclear, z));
 ElecCoalGWh('20_eCoal',z)    = sum((f_elecoutput, p_coal_power), WEB(f_elecoutput, p_coal_power,z)); 
 ElecGasGWh('21_eGas',z)      = sum((f_elecoutput, p_gas), WEB(f_elecoutput, p_gas,z));             
 ElecOilGWh('22_eOil',z)      = sum((f_elecoutput, p_oil_power), WEB(f_elecoutput, p_oil_power,z));          
 ElecWindGWh('23_eWind',z)    = sum((f_elecoutput, p_wind), WEB(f_elecoutput, p_wind,z)); 
 ElecSolarGWh('24_eSolar',z)  = sum((f_elecoutput, p_solar), WEB(f_elecoutput, p_solar,z));
 ElecHydroGWh('25_eHydro',z)  = sum((f_elecoutput, p_hydro), WEB(f_elecoutput, p_hydro,z));       
 ElecwasteGWh('26_eOther',z)  = sum((f_elecoutput, p_waste), WEB(f_elecoutput, p_waste,z)); 
 ElecbioGWh('26_eOther',z)    = sum((f_elecoutput, p_bio), WEB(f_elecoutput, p_bio,z)); 
 ElecgeoGWh('26_eOther',z)    = sum((f_elecoutput, p_geo), WEB(f_elecoutput, p_geo,z)); 
 ElecOtherGWh('26_eOther',z)  = sum((f_elecoutput, p_other_power), WEB(f_elecoutput, p_other_power,z)); 

*==============================================================================
* Electricity Generation coefficients
*==============================================================================
Parameter
 EGINucGWh(j,z)    Nuclear GWh per billion $
 EGICoalGWh(j,z)   Coal GWh per billion $ 
 EGIGasGWh(j,z)    Gas GWh per billion $ 
 EGIOilGWh(j,z)    Oil GWh per billion $ 
 EGIWindGWh(j,z)   Wind GWh per billion $
 EGISolarGWh(j,z)  Solar GWh per  billion $ 
 EGIHydroGWh(j,z)  Hydro GWh per billion $
 EGIWasteGWh(j,z)  Waste GWh per  billion $
 EGIBioGWh(j,z)    bio GWh per  billion $
 EGIGeoGWh(j,z)    geothermal GWh per billion $
 EGIOtherGWh(j,z)  Other GWh per billion $
;

 EGINucGWh('19_eNuclear',z) = ElecNucGWh('19_eNuclear',z)/XSTO('19_eNuclear',z); 
 EGICoalGWh('20_eCoal',z)   = ElecCoalGWh('20_eCoal',z)/XSTO('20_eCoal',z); 
 EGIGasGWh('21_eGas',z)     = ElecGasGWh('21_eGas',z)/XSTO('21_eGas',z); 
 EGIOilGWh('22_eOil',z)     = ElecOilGWh('22_eOil',z)/XSTO('22_eOil',z); 
 EGIWindGWh('23_eWind',z)   = ElecWindGWh('23_eWind',z)/XSTO('23_eWind',z); 
 EGISolarGWh('24_eSolar',z) = ElecSolarGWh('24_eSolar',z)/XSTO('24_eSolar',z); 
 EGIHydroGWh('25_eHydro',z) = ElecHydroGWh('25_eHydro',z)/XSTO('25_eHydro',z); 
 EGIWasteGWh('26_eOther',z) = ElecwasteGWh('26_eOther',z)/XSTO('26_eOther',z); 
 EGIBioGWh('26_eOther',z)   = ElecbioGWh('26_eOther',z)/XSTO('26_eOther',z); 
 EGIGeoGWh('26_eOther',z)   = ElecgeoGWh('26_eOther',z)/XSTO('26_eOther',z); 
 EGIOtherGWh('26_eOther',z) = ElecOtherGWh('26_eOther',z)/XSTO('26_eOther',z); 

*==============================================================================
* Export to GDX
*==============================================================================
execute_unload 'Input_CGE/DATA_WEB-2019.gdx',
* Sets
product, p_coal, p_oil, p_oilproduct, p_gas, p_elecheat,
flow, f_elec, f_agri, f_mining, f_foodpro, f_textiles, f_woodpro, f_paperpro,
f_chemical, f_nonmet, f_ironstl, f_nonferr, f_machine, f_transeq, f_otherind,
f_construc, f_ser, f_household, f_roadrail, f_domeair, f_domewater,
f_nemining, f_nefoodpro, f_netextiles, f_newoodpro, f_nepaperpro,
f_nechemical, f_nenonmet, f_neironstl, f_nenonferr, f_nemachine,
f_netranseq, f_neotherind, f_neconstruc, f_netransport, f_neother,

* Parameters
WEB,
Coal_DIO, Coal_CO, CoalR_DIO, CoalR_CO,
Gas_DIO, Gas_CO, GasR_DIO, GasR_CO,
Oil_DIO, Oil_CO, OilR_DIO,
Oilp_DIO, Oilp_CO, OilpR_DIO, OilpR_CO,
Elec_DIO, Elec_CO, ElecR_DIO, ElecR_CO,
Waste_DIO, Waste_CO, WasteR_DIO, WasteR_CO,
Bio_DIO, Bio_CO, BioR_DIO, BioR_CO,
Charcoal_DIO, Charcoal_CO, CharcoalR_DIO, CharcoalR_CO,
Ren_DIO, Ren_CO, RenR_DIO, RenR_CO,
NCoal_DIO, NCoalR_DIO, NGas_DIO, NGasR_DIO,
NOil_DIO, NOilR_DIO, NOilp_DIO, NOilpR_DIO,
Coal_Total, Gas_Total, Oilp_Total, ELec_Total, NCoal_Total, NGas_Total, NOilp_Total,
ElecNucGWh, ElecCoalGWh, ElecGasGWh, ElecOilGWh, ElecSolarGWh, ElecWindGWh, ElecHydroGWh, ElecwasteGWh, ElecbioGWh, ElecgeoGWh, ElecOtherGWh,
Coal_Marine, Coal_Aviation, Gas_Marine, Gas_Aviation, Oilp_Marine, Oilp_Aviation, Bio_Marine, Bio_Aviation,
TES_Coal, TES_Gas, TES_Oil, TES_Oilproduct, EGIOtherGWh
;