-- Get all airports name and location which located 10 units from any Malaysian border outside Malaysia
SELECT DISTINCT ap.name, ap.geom
FROM airports as ap, boundary as b, 
(
	SELECT s.geom
	FROM sovereignty as s
	WHERE s.sovereignt = 'Malaysia'
) as malaysia
WHERE (b.adm0_left = 'Malaysia' OR b.adm0_right = 'Malaysia')
AND ST_Distance(ap.geom, b.geom) <= 10
AND NOT ST_CoveredBy(ap.geom, malaysia.geom)