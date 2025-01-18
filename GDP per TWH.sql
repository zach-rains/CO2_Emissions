-- Question: Which countries have the highest GDP-to-energy-efficiency ratios?

SELECT 
    country,
    SUM(gdp_billion_usd) / SUM(energy_consumption_twh) AS gdp_per_twh
FROM 
    co2_data
GROUP BY 
    country
ORDER BY 
    gdp_per_twh DESC;