SELECT dateRep as Date,
	SUM(deaths) OVER (ROWS UNBOUNDED PRECEDING) AS CumulativeUKDeaths,
	SUM(cases) OVER (ROWS UNBOUNDED PRECEDING) AS CumulativeUKCases
FROM CovidCases
WHERE geoId = 'UK'
ORDER BY date(dateRep);