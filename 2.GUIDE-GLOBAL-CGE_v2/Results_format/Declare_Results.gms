*==============================================================================
* Results Parameter Declarations (Categorized & Aligned)
*==============================================================================
PARAMETER

* --- 1. Macroeconomics & National Accounts ---
 valGDP_BP(z,time,scen)              Region z GDP at basic prices
 valGDP_BP_REAL(z,time,scen)         Region z real GDP at basic prices
 valGDP_BP_W(time,scen)              World GDP at basic prices
 valGDP_BP_W_REAL(time,scen)         World real GDP at basic prices
 valGDP_FD(z,time,scen)              Region z GDP at purchasers prices from the perspective of final demand
 valGDP_IB(z,time,scen)              Region z GDP at market prices (income-based)
 valGDP_MP(z,time,scen)              Region z GDP at market prices
 valGDP_MP_REAL(z,time,scen)         Real GDP at market prices
 valC(i,z,time,scen)                 Consumption of commodity i by households in region z
 valCG(i,z,time,scen)                Public consumption of commodity i in region z
 valCTH(z,time,scen)                 Consumption budget of households in region z
 valCTH_REAL(z,time,scen)            Real household consumption in region z
 valCMIN(i,z,time,scen)              Minimum consumption of commodity i by households in region z
 valG(z,time,scen)                   Current government expenditures on goods and services in region z
 ValG_REAL(z,time,scen)              Current real government expenditures on goods and services in region z
 valINV(i,z,time,scen)               Final demand of commodity i for investment purposes (GFCF) in region z
 valIT(z,time,scen)                  Total investment expenditures in region z
 valIT_REAL(z,time,scen)             Real gross fixed capital formation
 valCAB(z,time,scen)                 Current account balance of region z
 valCABX(z,time,scen)                Current account balance of region z in terms of the international currency
 valSG(z,time,scen)                  Government savings in region z
 valSH(z,time,scen)                  Household savings in region z
 valsh0(z,time,scen)                 Intercept (household savings)
 valsh1(z,time,scen)                 Slope (household savings)
 valSROW(z,time,scen)                Rest-of-the-world savings with respect to region z

* --- 2. Trade, Margins & Exchange Rates ---
 valEX(i,z,zj,time,scen)             Quantity of product i exported by country z to country zj
 valEXT(i,z,time,scen)               Supply of composite commodity i by region z to the export market
 valIM(i,zj,z,time,scen)             Quantity of product i imported by country z from country zj
 valIMT(i,z,time,scen)               Quantity demanded of composite imports of commodity i by region z
 valMRGN(i,z,time,scen)              Domestic production of commodity i in region z exported as international margin services
 vale(z,time,scen)                   Exchange rate (price of international currency in terms of region z local currency)

* --- 3. Prices, Taxes & Subsidies ---
 valP(i,z,time,scen)                 Basic price of industry j production in region z
 valPC(i,z,time,scen)                Purchaser price of composite commodity i (including all taxes and margins) in region z
 valPCI(j,z,time,scen)               Intermediate consumption price index of industry j in region z
 valPCE(j,z,time,scen)               Intermediate energy consumption price index of industry j in region z
 valPD(i,z,time,scen)                Price of local product i sold on region z domestic market (including all taxes)
 valPE(i,z,zj,time,scen)             Price received for commodity i exported to region zj by region z (excluding export taxes)
 valPET(i,z,time,scen)               Border price of composite commodity i exported by region z
 valPIXCON(z,time,scen)              Consumer price index in region z
 valPIXGDP(z,time,scen)              GDP deflator in region z
 valPIXGDP_W(time,scen)              World GDP deflator
 valPIXGVT(z,time,scen)              Public expenditures price index in region z
 valPIXINV(z,time,scen)              Investment price index in region z
 valPK(z,time,scen)                  Price of new capital in region z
 valPL(i,z,time,scen)                Price of local product i (excluding all taxes on products) in region z
 valPM(i,zj,z,time,scen)             Price of commodity i imported by region z from region zj (including all taxes duties and margins)
 valPMT(i,z,time,scen)               Price of composite commodity i imported by region z (including all taxes duties and margins)
 valPP(j,z,time,scen)                Unit cost of industry j in region z including taxes directly related to capital and labor
 valPT(j,z,time,scen)                Basic price of industry j output
 valPVA(j,z,time,scen)               Price of industry j value added in region z (including taxes on production)
 valPKLE(j,z,time,scen)              Price of industry j KLE in region z
 valPWM(i,zj,z,time,scen)            World price of commodity i imported from country zj by region z (international currency)
 valPWMG(i,time,scen)                World price of margin i (international currency)
 valPWX(i,z,zj,time,scen)            World price of commodity i exported to country zj by region z (international currency)
 valPX_INDEX(z,time,scen)            Export price index                 
 valPM_INDEX(z,time,scen)            Import price index       
 valTOT(z,time,scen)                 Terms of Trade
 valTDH(z,time,scen)                 Household income taxes in region z
 valTIC(i,z,time,scen)               Government revenue from indirect taxes on commodity i in region z
 valTICT(z,time,scen)                Total government receipts of indirect taxes on commodities in region z
 valTIK(k,j,z,time,scen)             Government revenue from taxes on type k capital used by industry j in region z
 valTIKT(z,time,scen)                Total government revenue from taxes on capital in region z
 valTIM(i,zj,z,time,scen)            Government revenue from duties on commodity i imported from region zj by region z
 valTIMT(z,time,scen)                Total government revenue from import duties in region z
 valTIP(j,z,time,scen)               Government revenue from taxes on industry j production in region z
 valTIPT(z,time,scen)                Total government revenue from production taxes in region z
 valTIW(j,z,time,scen)               Government revenue from payroll taxes on type l labor in industry j of region z
 valTIWT(z,time,scen)                Total government revenue from payroll taxes in region z
 valTIX(i,z,zj,time,scen)            Government revenue from export taxes on commodity i exported by region z to region zj
 valTIXT(z,time,scen)                Total government revenue from export taxes in region z
 valTPRCTS(z,time,scen)              Total government revenue from taxes on products and imports in region z
 valTPRODN(z,time,scen)              Total government revenue from other taxes on production in region z
 valttdh0(z,time,scen)               Intercept (household income tax)
 valttdh1(z,time,scen)               Slope (household income tax)
 valttic(i,z,time,scen)              Tax rate on commodity i
 valttik(k,j,z,time,scen)            Tax rate on capital k used in industry j
 valttim(i,zj,z,time,scen)           Rate of taxes and duties on imports of commodity i from country zj
 valttip(j,z,time,scen)              Tax rate on the production of industry j
 valttiw(j,z,time,scen)              Tax rate on type l worker compensation in industry j
 valttix(i,z,zj,time,scen)           Export tax rate on exported commodity i

* --- 4. Factor Markets, Production & Income ---
 valA_VA(z,time,scen)                Multifactor productivity
 valVA(j,z,time,scen)                Value added of industry j in region z
 valKLE(j,z,time,scen)               Value added (KLE) of industry j in region z
 valXS(j,i,z,time,scen)              Total output of commodity i by industry j in region z
 valXS_I(i,z,time,scen)              Total output of commodity i in region z
 valXST(j,z,time,scen)               Total output of industry j in region z
 valCI(j,z,time,scen)                Total intermediate consumption of industry j in region z
 valDD(i,z,time,scen)                Domestic demand for commodity i produced locally in region z
 valDI(i,j,z,time,scen)              Intermediate consumption of commodity i by industry j in region z
 valDIT(i,z,time,scen)               Total intermediate demand of commodity i in region z
 valDS(j,i,z,time,scen)              Supply of industry j to the domestic market of region z
 valDS_I(i,z,time,scen)              Supply of commodity j to the domestic market of region z
 valQ(i,z,time,scen)                 Quantity demanded of composite commodity i in region z
 valIND(k,j,z,time,scen)             Volume of new type k capital investment to industry j in region z
 valDEP(z,time,scen)                 Amount of depreciation (capital consumption allowance) in region z
 valIR(z,time,scen)                  Interest rate
 valKD(k,j,z,time,scen)              Demand for type k capital by industry j in region z
 valKDC(j,z,time,scen)               Demand for composite capital by industry j in region z
 valKS(k,z,time,scen)                Supply of type k capital in region z
 valLD(j,z,time,scen)                Demand for type l labor by industry j in region z
 valLDC(j,z,time,scen)               Demand for composite labor by industry j in region z
 valLS(z,time,scen)                  Supply of type l labor in region z
 valLST(z,time,scen)                 Supply of type l labor in region z
 valphi(z,time,scen)                 Scale variable (allocation of investment to industries)
 valR(k,j,z,time,scen)               Rental rate of type k capital in industry j of region z
 valRC(j,z,time,scen)                Rental rate of industry j composite capital in region z
 valRTI(k,j,z,time,scen)             Rental rate paid by industry j for type k capital in region z including capital taxes
 valU(z,time,scen)                   User cost of capital in region z
 valW(z,time,scen)                   Wage rate of type l labor in region z
 valWC(j,z,time,scen)                Wage rate of industry j composite labor in region z
 valWTI(j,z,time,scen)               Wage rate paid by industry j for type l labor in region including payroll taxes
 valYDH(z,time,scen)                 Household disposable income in region z
 valYG(z,time,scen)                  Total government income in region z
 valYH(z,time,scen)                  Household total income in region z
 valYHK(z,time,scen)                 Household capital income in region z
 valYHL(z,time,scen)                 Household labor income in region z
 valYROW(z,time,scen)                Rest-of-the-world total income from region z
 valLEON(z,time,scen)                Excess supply on the last market in region z

* --- 5. Energy Demand & Supply ---
 valCE(j,z,time,scen)                Total intermediate(energy) consumption of industry j in region z
 valDE(i,j,z,time,scen)              Intermediate consumption(energy) of commodity i by industry j in region z
 valAEEI(z,time,scen)                Autonomous Energy Efficiency Improvement
 valEE(product,j,z,time,scen)        Industry's energy consumption by regions 
 valNE(product,j,z,time,scen)        Non-energy consumption by energy products 
 valEH(product,z,time,scen)          Household energy consumption by energy products
 valTFC_product(product,time,z,scen) Total final consumption by product and region
 valTFC(time,z,scen)                 Total final energy consumption by regions
 valTES_coal(z,time,scen)            Total Energy Supply: coal
 valTES_gas(z,time,scen)             Total Energy Supply: gas
 valTES_oil(z,time,scen)             Total Energy Supply: oil
 valTES(z,time,scen)                 Total Energy Supply
 valMarinebunker(product,z,time,scen) Marine bunker energy consumption
 valAviationbunker(product,z,time,scen) Aviation bunker energy consumption

* --- 6. Emissions & Climate Policy (CO2, CH4, N2O, F-gases) ---
 valCO2FACTOR(ene,j,z,time,scen)     CO2 FACTOR
 valCTAX(z,time,scen)                Carbon Tax Rate
 valTCTAX(z,time,scen)               Total Carbon Tax Revenue
 valPERMIT_TOTAL(z,time,scen)        Total emission permits
 valEndo_CO2IND(ene,j,z,time,scen)   Endogenous CO2 emissions by industry
 valEndo_CO2HH(ene,z,time,scen)      Endogenous CO2 emissions by households
 valEndo_TotalCO2(z,time,scen)       Endogenous Total CO2 (Million tCO2eq)
 valEndo_GlobalTotalCO2(time,scen)   Endogenous Global Total CO2
 valCO2I(product,j,z,time,scen)      Industry CO2 emissions by products
 valCO2NE(product,j,z,time,scen)     Industry non-energy consumption CO2 emissions by products
 valCO2H(product,z,time,scen)        Household CO2 emission by products  
 valCO2I2(j,z,time,scen)             Industry CO2 emissions by regions
 valCO2NE2(j,z,time,scen)            Non-energy consumption CO2 emission by industries and regions
 valCO2I3(j,z,time,scen)             Industry CO2 emissions by regions (Variant 3)
 valTCO2I(z,time,scen)               Total industrial CO2 emission by regions
 valTCO2NE(z,time,scen)              Total CO2 emission from non-energy consumption by regions
 valTCO2H(z,time,scen)               Household CO2 emission by regions
 valTCO2(z,time,scen)                Total CO2 emission by regions
 valCO2I2_FUELCOMB(j,z,time,scen)    Fuel combustion CO2 emissions by industry and region
 valTCO2H_FUELCOMB(z,time,scen)      Total Household fuel combustion CO2 emissions
 valTCO2I_FUELCOMB(z,time,scen)      Total Industrial fuel combustion CO2 emissions
 valTCO2NE_FUELCOMB(z,time,scen)     Total non-energy fuel combustion CO2 emissions
 valTCO2_FUELCOMB(z,time,scen)       Total fuel combustion CO2 emissions
 valEndo_CO2(ene,j,z,time,scen)      Endogenous CO2 by energy type (ktCO2)
 valCO2_Marine(product,z,time,scen)  Marine bunker CO2 emissions
 valTCO2_Marine(z,time,scen)         Total Marine bunker CO2 emissions
 valCO2_Aviation(product,z,time,scen) Aviation bunker CO2 emissions
 valTCO2_Aviation(z,time,scen)       Total Aviation bunker CO2 emissions
 valCH4I(product,j,z,time,scen)      Industry CH4 emissions by regions and products (CO2eq)
 valCh4NE(product,j,z,time,scen)     Industry non-energy consumption CH4 emissions by products (CO2eq)
 valCH4I2(j,z,time,scen)             Industry CH4 emissions by regions (CO2eq)
 valCH4NE2(j,z,time,scen)            Non-energy consumption CH4 emission by industries and regions (CO2eq)
 valCH4I3(j,z,time,scen)             Industry CH4 emissions by regions (Variant 3) (CO2eq) 
 valTCH4I(z,time,scen)               Total industrial CH4 emission by regions (CO2eq)
 valTCH4NE(z,time,scen)              Total CH4 emission from non-energy consumption by regions (CO2eq)
 valCH4H(product,z,time,scen)        Household CH4 emission by regions (CO2eq)
 valTCH4H(z,time,scen)               Total Household CH4 emission by regions (CO2eq)
 valTCH4(z,time,scen)                Total CH4 emission by regions (CO2eq) 
 valCH4_Marine(product,z,time,scen)  Marine bunker CH4 emissions 
 valTCH4_Marine(z,time,scen)         Total Marine bunker CH4 emissions
 valCH4_Aviation(product,z,time,scen) Aviation bunker CH4 emissions 
 valTCH4_Aviation(z,time,scen)       Total Aviation bunker CH4 emissions
 valN2OI(product,j,z,time,scen)      Industry N2O emissions by regions and products (CO2eq)
 valN2ONE(product,j,z,time,scen)     Industry non-energy consumption N2O emissions by products (CO2eq)
 valN2OI2(j,z,time,scen)             Industry N2O emissions by regions (CO2eq)
 valN2ONE2(j,z,time,scen)            Non-energy consumption N2O emission by industries and regions (CO2eq)
 valN2OI3(j,z,time,scen)             Industry N2O emissions by regions (Variant 3) (CO2eq) 
 valTN2OI(z,time,scen)               Total industrial N2O emission by regions (CO2eq)
 valTN2ONE(z,time,scen)              Total N2O emission from non-energy consumption by regions (CO2eq)
 valN2OH(product,z,time,scen)        Household N2O emission by regions (CO2eq)
 valTN2OH(z,time,scen)               Total Household N2O emission by regions (CO2eq)
 valTN2O(z,time,scen)                Total N2O emission by regions (CO2eq) 
 valN2O_Marine(product,z,time,scen)  Marine bunker N2O emissions
 valTN2O_Marine(z,time,scen)         Total Marine bunker N2O emissions
 valN2O_Aviation(product,z,time,scen) Aviation bunker N2O emissions
 valTN2O_Aviation(z,time,scen)       Total Aviation bunker N2O emissions
 valGlobal_CO2(time,scen)            Globally total CO2 emission
 valGlobal_CH4(time,scen)            Globally total CH4 emission (CO2eq) 
 valGlobal_N2O(time,scen)            Globally total N2O emission (CO2eq)
 valGlobal_Fgases(time,scen)         Globally total Fgases emission (CO2eq)

* --- 7. Tech Specific Factors & DAC (Direct Air Capture) ---
 valQDAC(z,time,scen)                Direct Air Capture (DAC) deployment quantity
 valDAC_growth_rate(z,time,scen)     DAC technology growth rate
 valDAC_elec(z,time,scen)            DAC electricity consumption
 valswitchDAC(z,time,scen)           DAC operational switch flag
 valVAT(BS,Z_GRN,time,scen)          Value-added TSF composite Quantity 
 valPVAT(BS,Z_GRN,time,scen)         Value-added TSF composite price
 valPTSF(BS,Z_GRN,time,scen)         TSF Price
 valTSFD(BS,Z_GRN,time,scen)         Technology Specific Factor Demand
 valTSFS(BS,Z_GRN,time,scen)         Technology Specific Factor Supply

* --- 8. Power Sector (Currently Commented Out) ---
* valPOWER(power,i,z,time,scen)      Economic Output by power plants
* valElecGen(power,z,time,scen)      Electricity generation by power plants

* --- IAMC Format ---
  IAMC(model_IAMC, scen, z, variable_IAMC, Unit_IAMC, time) Integrated Assessment Modeling Consortium (IAMC)  Format 