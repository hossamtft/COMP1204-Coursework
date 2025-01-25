SELECT CountryDetails.countriesAndTerritories AS Country,
       CovidCases.dateRep AS Date,
       CovidCases.cases AS TotalCases,
       CovidCases.deaths AS TotalDeaths
FROM CountryDetails
JOIN CovidCases ON CountryDetails.geoId = CovidCases.geoId
ORDER BY Date(Date) ASC;
