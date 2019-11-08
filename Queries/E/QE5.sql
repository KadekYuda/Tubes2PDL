-- Get length of longest Major Highway in USA
SELECT max(ST_length(r.geom)) 
FROM roads as r
WHERE r.type = 'Major Highway'
AND r.sov_a3 = 'USA';