-- Get all roads in CAN with its type
SELECT r.type, r.geom
FROM roads as r
WHERE r.sov_a3 = 'CAN'