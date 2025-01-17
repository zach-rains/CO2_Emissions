# CO2_Emissions
An analysis of CO2 emissions by industry, country, year, etc.

## Tools and Technologies
- **SQL**: Querying and transforming raw data.
- **Excel**: Summarizing and visualizing results.

## Key Skills Demonstrated
- Data querying and aggregation with SQL.
- Data cleaning and preparation for analysis.
- Deriving actionable insights from raw data.
- Presentation of results in a clear, concise format.

## Repository Structure
- **SQL Files**: Located in the root directory and named descriptively.
- **Results Files**: Corresponding `.csv` files containing query outputs.
- **Cleaned Dataset**: Processed file ready for analysis.

# Data Cleaning Steps

### 1. Column Standardization
- Renamed columns to `snake_case` for consistency.

### 2. Duplicate Removal
- Removed duplicate rows to ensure data integrity.

### 3. Data Standardization
- Standardized values in categorical columns:
  - `industry_type`
  - `region`
  - `country`

### 4. Outlier Detection
- Identified potential outliers using z-scores; no significant issues were found.

### 5. Derived Metrics
- Created new fields:
  - `co2_emissions_per_capita`: CO2 emissions divided by population.
  - `energy_consumption_per_capita`: Energy consumption divided by population.
  - `renewable_energy_contribution`: Contribution of renewable energy in TWh.

### 6. Sorting
- Sorted dataset by `year`, `region`, and `country` for clarity.

### 7. Final Export
- Saved the cleaned dataset as `cleaned_co2_emissions_by_sectors.csv`.

## Analysis Reasoning


# Project
### 1. **Yearly Emissions by Region**
- **SQL Query**: [Emissions by Region and Year Query](https://github.com/zach-rains/CO2_Emissions/blob/c54e445f998e8a3ee336ffeff86fb5ffbbc14f67/Emissions%20by%20Region%20and%20Year.sql)
- **Results**: [Emissions by Region and Year Results](https://github.com/zach-rains/CO2_Emissions/blob/c54e445f998e8a3ee336ffeff86fb5ffbbc14f67/Emissions%20by%20Region%20and%20Year%20Results.csv)
- **Visualization**: ![Visualization](https://github.com/zach-rains/CO2_Emissions/blob/c54e445f998e8a3ee336ffeff86fb5ffbbc14f67/Emissions%20by%20Region%20and%20Year%20Viz.png)
- **Description**: This query was designed to analyze the emissions data by region and year to identify trends in emissions over time. Overall, not much has changed year over year, regions will often have a good year or two with lower emissions and then return to higher emissions the very next year.

### 2. **Renewable Energy Percentage**
- **SQL Query**: [Renewable Energy as a Percentage of Total Production Query](https://github.com/zach-rains/CO2_Emissions/blob/54fb4de3bd9ace6e889ec2420a6b63683f689489/Renewable%20Energy%20Percentage.sql)
- **Results**: [Renewable Energy as a Percentage of Total Production Results](https://github.com/zach-rains/CO2_Emissions/blob/54fb4de3bd9ace6e889ec2420a6b63683f689489/Renewable%20Energy%20Percentage%20Results.csv)
- **Visualization 1**: ![Renewable Energy by Region](https://github.com/zach-rains/CO2_Emissions/blob/54fb4de3bd9ace6e889ec2420a6b63683f689489/Renewable%20Energy%20Percentage%20Viz.png)
- **Visualization 2**: ![Global Renewable Energy](https://github.com/zach-rains/CO2_Emissions/blob/2813fe84d952791b51f1a5ac3345f3bfc0121d50/Global%20Renewable%20Energy%20Share.png)
- **Description**: This query was designed to take a look at the change in renewable energy production over time by region. It's evident from this data that most regions have been getting between 45-55% of their energy production from renewable resources since the year 2000.

### 3. **Emissions by Sector and Region**
- **SQL Query**: [Total Emissions by Sector and Region](https://github.com/zach-rains/CO2_Emissions/blob/d30ccbc88623f948907d69239e7de0f32c406ce5/Total%20Emissions%20by%20Sector%20and%20Region.sql)
- **Results**: [Total Emissions by Sector and Region Results](https://github.com/zach-rains/CO2_Emissions/blob/d30ccbc88623f948907d69239e7de0f32c406ce5/Total%20Emissions%20by%20Sector%20and%20Region%20Results.csv)
- **Visualization**: ![Total Emissions by Sector and Region(https://github.com/zach-rains/CO2_Emissions/blob/d30ccbc88623f948907d69239e7de0f32c406ce5/Total%20Emissions%20by%20Sector%20and%20Region%20Results.png)
- **Description**: This query takes a look at the total emissions since the year 2000 by region and then further breaks it down by region for comparison's sake. A couple things stand out immediately: the largest emitter by sector is industry, and second is automobiles.
