-- Question: What are the dominant CO2-emitting sectors by region and year?

SELECT 
    region,
    ROUND(SUM(automobile_co2_emissions_metrictons),2) AS automobile_emissions,
    ROUND(SUM(industrial_co2_emissions_metrictons),2) AS industrial_emissions,
    ROUND(SUM(agriculture_co2_emissions_metrictons),2) AS agriculture_emissions,
    ROUND(SUM(domestic_co2_emissions_metrictons),2) AS domestic_emissions,
	ROUND(SUM(automobile_co2_emissions_metrictons + industrial_co2_emissions_metrictons + agriculture_co2_emissions_metrictons + domestic_co2_emissions_metrictons),2) AS total_emissions

FROM 
    co2_data
GROUP BY 
    region
ORDER BY 
    total_emissions DESC;