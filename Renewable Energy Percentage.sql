-- Question: What percentage of total energy consumption comes from renewable sources by region and year?

SELECT 
    region,
    year,
    ROUND(SUM(renewable_energy_percentage * energy_consumption_twh / 100),2) AS renewable_energy_twh,
    ROUND(SUM(energy_consumption_twh),2) AS total_energy_twh,
    ROUND((SUM(renewable_energy_percentage * energy_consumption_twh / 100) / SUM(energy_consumption_twh)),2) * 100 AS renewable_energy_percentage
FROM 
    co2_data
GROUP BY 
    region, year
ORDER BY 
    year, region;