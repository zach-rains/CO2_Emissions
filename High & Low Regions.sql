-- Question: Which regions have the highest and lowest total CO2 emissions per year across all sectors?

SELECT 
    region,
    year,
    SUM(co2_emissions_metrictons) AS total_co2_emissions
FROM 
    co2_data
GROUP BY 
    region, year
ORDER BY 
    total_co2_emissions DESC;