SELECT county_state_name,
       population,
       ROUND(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) / CAST(population AS DOUBLE),2 )AS Emission_per_Person
FROM emissions.default.emissions_data
ORDER BY Emission_per_Person DESC