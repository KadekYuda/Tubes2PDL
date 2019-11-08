-- Airports which is 1km from roads
SELECT DISTINCT ap.geom
FROM airports as ap, roads as r
WHERE ST_Distance(ap.geom, r.geom) < 1