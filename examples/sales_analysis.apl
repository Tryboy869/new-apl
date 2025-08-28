⍝ Sales Analysis - Made with New APL
⍝ Comprehensive revenue analysis and forecasting
⍝ Demonstrates APL's power for business intelligence

⍝ Sample sales data (12 months)
SALES ← 125000 132000 145000 138000 156000 162000 178000 185000 192000 205000 218000 235000

⍝ Basic statistics using APL primitives
TOTAL ← +/SALES                    ⍝ Sum all sales
AVERAGE ← TOTAL÷⍴SALES             ⍝ Average monthly sales  
MAXIMUM ← ⌈/SALES                  ⍝ Best month
MINIMUM ← ⌊/SALES                  ⍝ Worst month
RANGE ← MAXIMUM - MINIMUM          ⍝ Variation range

⍝ Growth analysis
MONTHLY_CHANGE ← 1↓SALES - ¯1↓SALES           ⍝ Month-over-month change
GROWTH_RATE ← 100 × (+/MONTHLY_CHANGE) ÷ +/¯1↓SALES  ⍝ Overall growth rate
VOLATILE ← (⌈/MONTHLY_CHANGE) - ⌊/MONTHLY_CHANGE     ⍝ Volatility measure

⍝ Trend calculation (linear regression simplified)
MONTHS ← ⍳⍴SALES                   ⍝ Month numbers 1-12
TREND_SLOPE ← (+/MONTHS×SALES) - (⍴SALES)×(+/MONTHS)×(+/SALES)÷⍴SALES
TREND_SLOPE ← TREND_SLOPE ÷ (+/MONTHS×MONTHS) - (⍴SALES)×((+/MONTHS)÷⍴SALES)*2

⍝ Forecasting next 3 months
FORECAST_BASE ← ¯1↑SALES           ⍝ Last month as base
FORECAST_1 ← FORECAST_BASE + TREND_SLOPE
FORECAST_2 ← FORECAST_BASE + 2×TREND_SLOPE  
FORECAST_3 ← FORECAST_BASE + 3×TREND_SLOPE

⍝ Quarterly analysis
Q1 ← +/3↑SALES                     ⍝ Q1 total
Q2 ← +/3↑3↓SALES                   ⍝ Q2 total
Q3 ← +/3↑6↓SALES                   ⍝ Q3 total  
Q4 ← +/3↑9↓SALES                   ⍝ Q4 total
QUARTERS ← Q1 Q2 Q3 Q4
BEST_QUARTER ← QUARTERS⍳⌈/QUARTERS

⍝ Performance metrics
YOY_GROWTH ← 100 × (¯3↑SALES) ÷ 3↑SALES        ⍝ Year-over-year last quarter
ACCELERATION ← (+/3↑¯3↓MONTHLY_CHANGE) - (+/3↑MONTHLY_CHANGE)  ⍝ Growth acceleration

⍝ Results output
'=== SALES ANALYSIS REPORT ==='
''
'📊 BASIC STATISTICS:'
'Total Revenue: $' , ⍕TOTAL
'Average Monthly: $' , ⍕⌊AVERAGE
'Best Month: $' , ⍕MAXIMUM
'Worst Month: $' , ⍕MINIMUM
'Range: $' , ⍕RANGE
''
'📈 GROWTH ANALYSIS:'
'Overall Growth Rate: ' , (⍕⌊GROWTH_RATE) , '%'
'Trend Slope: $' , ⍕⌊TREND_SLOPE , ' per month'
'Volatility: $' , ⍕VOLATILE
''
'🔮 FORECASTING (Next 3 Months):'
'Month 13: $' , ⍕⌊FORECAST_1
'Month 14: $' , ⍕⌊FORECAST_2  
'Month 15: $' , ⍕⌊FORECAST_3
''
'📅 QUARTERLY PERFORMANCE:'
'Q1: $' , ⍕Q1 , ' | Q2: $' , ⍕Q2 , ' | Q3: $' , ⍕Q3 , ' | Q4: $' , ⍕Q4
'Best Quarter: Q' , ⍕BEST_QUARTER
''
'⚡ PERFORMANCE METRICS:'
'YoY Growth (Q4): ' , (⍕⌊YOY_GROWTH) , '%'
'Growth Acceleration: $' , ⍕⌊ACCELERATION
''
'🏆 Analysis completed in milliseconds'
'💡 Powered by APL array processing'
''