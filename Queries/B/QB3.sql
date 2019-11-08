-- Get airport location which is not more than 10 km of boundary
SELECT ap.geom
FROM airports as ap, boundary as b
WHERE (ST_Distance(ap.geom, b.geom) <= 10);