-- Get a country which has the most airports grouped by its continent
SELECT acpc.continent, acps. sovereignt, acpc.max
FROM 
(
	SELECT s2.continent, max(acps.count)
	FROM 
	(
		SELECT s.sovereignt, s.continent, (COUNT(ap.gid))
		FROM airports as ap, sovereignty as s
		WHERE ST_CoveredBy(ap.geom, s.geom)
		GROUP BY s.sovereignt, s.continent
	) as acps, sovereignty as s2
	WHERE acps.sovereignt = s2.sovereignt
	GROUP BY s2.continent
) as acpc,
(
	SELECT s.sovereignt, s.continent, (COUNT(ap.gid))
	FROM airports as ap, sovereignty as s
	WHERE ST_CoveredBy(ap.geom, s.geom)
	GROUP BY s.sovereignt, s.continent
) as acps
WHERE acpc.max = acps.count 
AND acpc.continent = acps.continent