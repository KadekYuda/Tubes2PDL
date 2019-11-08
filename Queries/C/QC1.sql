-- Get name and location of airports located in Japan
SELECT ap.name_en, ap.geom
FROM airports as ap, sovereignty as s
WHERE s.sovereignt = 'Japan'
AND ST_Intersects(ap.geom, s.geom);