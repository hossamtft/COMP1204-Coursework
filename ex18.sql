SELECT CountryDetails.countriesAndTerritories AS Country,
    ROUND((SUM(deaths) / sum(cases)) * 100, 2) AS Precentage
FROM CountryDetails
JOIN CovidCases ON CountryDetails.geoId = CovidCases.geoId
GROUP BY CountryDetails.countriesAndTerritories
ORDER BY Precentage DESC
LIMIT 10;
