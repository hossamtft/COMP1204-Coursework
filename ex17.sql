SELECT CountryDetails.countriesAndTerritories,
       ROUND((SUM(cases) / popData2020) * 100, 2) AS PercentCases,
       ROUND((SUM(deaths) / popData2020) * 100, 2) AS PercentDeaths
FROM CovidCases
NATURAL JOIN CountryDetails
GROUP BY countriesAndTerritories, popData2020;