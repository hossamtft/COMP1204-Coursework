SELECT dateRep, cases FROM CovidCases WHERE geoId = 'UK'
ORDER BY DATE(dateRep) ASC;
