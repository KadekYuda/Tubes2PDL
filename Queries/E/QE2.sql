-- Union of sovereignty in Asia
SELECT ST_Union(asia.geom)
FROM
	(
		SELECT s2.geom
		FROM sovereignty as s2
		WHERE s2.continent = 'Asia'
	) as asia;