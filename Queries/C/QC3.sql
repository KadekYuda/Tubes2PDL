-- Find all sovereignt and its location adjacent to Brazil
SELECT s2.sovereignt, s2.geom
FROM sovereignty as s1, sovereignty as s2 
WHERE ST_Touches(s1.geom, s2.geom)
AND s1.sovereignt = 'Brazil'