-- Get pairs of airports which is less than 10 km from each other
SELECT DISTINCT a1.geom, a2.geom
FROM airports as a1, airports as a2
WHERE ST_Distance(a1.geom, a2.geom) < 10
AND NOT ST_EQUALS(a1.geom, a2.geom)