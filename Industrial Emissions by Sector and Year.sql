-- Question: What are the historical trends in emissions for key sectors (e.g., industrial and transport)?

SELECT
	year,
	industry_type,
    ROUND(SUM(industrial_co2_emissions_metrictons),2) AS total_industrial_emissions
FROM 
    co2_data
GROUP BY 
	year, industry_type
ORDER BY 
    year, industry_type;