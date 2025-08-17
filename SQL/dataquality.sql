SELECT 
  SUM(CASE WHEN Year IS NULL THEN 1 ELSE 0 END) AS year_nulls,
  SUM(CASE WHEN `National Communication Sector` IS NULL THEN 1 ELSE 0 END) AS sector_nulls,
  SUM(CASE WHEN `Emissions _MtCO2e_` IS NULL THEN 1 ELSE 0 END) AS emissions_nulls,
  SUM(CASE WHEN `National Communication Subsector` IS NULL THEN 1 ELSE 0 END) AS subsector_nulls,
  SUM(CASE WHEN Source IS NULL THEN 1 ELSE 0 END) AS source_nulls
FROM `arched-gear-440814-b0.carbon_emissions.uk_ghg_emissions_raw`;

-- Check any missing data in the columns that are desired to be replaced later as NULL when needed
