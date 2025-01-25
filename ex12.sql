INSERT INTO CovidDates (dateRep, day, month, year)
SELECT DISTINCT dateRep, day, month, year FROM dataset;

INSERT INTO CountryDetails (geoId, countriesAndTerritories, countryterritoryCode, continentExp)
SELECT DISTINCT geoId, countriesAndTerritories, countriesAndTerritories, continentExp FROM dataset;

INSERT INTO CovidCases (dateRep, geoId, cases, deaths, popData2020)
SELECT DISTINCT dateRep, geoId, cases, deaths, popData2020 FROM dataset;
