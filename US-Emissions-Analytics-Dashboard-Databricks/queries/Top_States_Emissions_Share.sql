with state_emissions AS (
  SELECT
    state_abbr,
    SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS Total_Emissions
  FROM
    emissions.default.emissions_data
  group by
    state_abbr
),
ranked AS (
  SELECT
    se.state_abbr as State,
    se.Total_Emissions,
    sum(se.Total_Emissions) over () AS Grand_Total_Emissions
  FROM
    state_emissions as se
),
top_10 AS (
  SELECT
    r.State,
    r.Total_Emissions,
    r.grand_total_emissions as Grand_Total_Emissions,
    ROUND(r.Total_Emissions / r.Grand_Total_Emissions, 2) * 100 as Perc_Share_of_Total_Emissions
  FROM
    ranked as r
  ORDER BY
    r.Total_Emissions desc
  LIMIT 10
)
SELECT
  *
FROM
  top_10
UNION ALL
SELECT
  'Total (Top 10)' as State,
  SUM(Total_Emissions) as Total_Emissions,
  MAX(Grand_Total_Emissions) as Grand_Total_Emissions,
  SUM(Perc_Share_of_Total_Emissions) as Perc_Share_of_Total_Emissions
FROM
  top_10