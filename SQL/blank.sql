SELECT 
  SUM(CASE WHEN `National Communication Sector` = '(blank)' THEN 1 ELSE 0 END) AS sector_blanks,
  SUM(CASE WHEN `National Communication Subsector` = '(blank)' THEN 1 ELSE 0 END) AS subsector_blanks,
  SUM(CASE WHEN Source = '(blank)' THEN 1 ELSE 0 END) AS source_blanks,
  SUM(CASE WHEN GHG = '(blank)' THEN 1 ELSE 0 END) AS ghg_blanks,
  SUM(CASE WHEN `GHG Grouped` = '(blank)' THEN 1 ELSE 0 END) AS ghg_grouped_blanks,
  SUM(CASE WHEN `Fuel Group` = '(blank)' THEN 1 ELSE 0 END) AS fuel_group_blanks

FROM 
  `arched-gear-440814-b0.carbon_emissions.uk_ghg_emissions_raw`;

-- Double check the number of '(blank) in these columns this is to see the number of missing data