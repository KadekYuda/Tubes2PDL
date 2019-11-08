-- Get airports which intersects with a boundary
SELECT ap.geom
FROM airports as ap, boundary as b
WHERE ST_Intersects(ap.geom, b.geom)