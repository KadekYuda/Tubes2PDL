-- Get biggest sovereignt based on the continent
SELECT s.continent, s.sovereignt, s.geom
FROM 
	( 
		SELECT s2.continent, max(ST_Area(s2.geom)) as max
	  	FROM sovereignty as s2
	  	GROUP BY s2.continent
	) as max_area, sovereignty as s
WHERE max_area.max = ST_Area(s.geom)