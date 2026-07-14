SELECT county_state_name
       ,population
       ,ROUND((CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)),2) AS Total_Emissions
FROM emissions.default.emissions_data
ORDER BY Total_Emissions DESC
LIMIT 10