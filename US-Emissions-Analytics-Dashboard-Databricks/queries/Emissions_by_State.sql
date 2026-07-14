SELECT state_abbr as State,
       ROUND(SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)),2) AS Total_Emissions
FROM emissions.default.emissions_data
Group by state_abbr
ORDER BY Total_Emissions DESC
LIMIT 10