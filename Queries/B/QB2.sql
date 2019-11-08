-- Get location of roads which intersects with a boundary
SELECT r.geom
FROM roads as r, boundary as b
WHERE ST_Intersects(r.geom, b.geom);