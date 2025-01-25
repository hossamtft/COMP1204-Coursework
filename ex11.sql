CREATE TABLE CovidDates (
    dateRep TEXT PRIMARY KEY,
    day INTEGER,
    month INTEGER,
    year INTEGER
);

CREATE TABLE CountryDetails (
    geoId TEXT PRIMARY KEY,
    countriesAndTerritories TEXT,
    countryterritoryCode TEXT,
    continentExp TEXT
);

CREATE TABLE CovidCases (
    dateRep TEXT not null,
    geoId TEXT not null ,
    cases INTEGER,
    deaths INTEGER,
    popData2020 INTEGER,
    primary key (dateRep,geoId)
);

