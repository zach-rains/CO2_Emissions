# CO2_Emissions
An analysis of CO2 emissions by industry, country, year, etc.

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
