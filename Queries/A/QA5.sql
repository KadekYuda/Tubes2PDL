-- number of highway from each identified country on roads table
SELECT s.sovereignt as country, COUNT(r.gid)
FROM roads as r JOIN sovereignty as s ON r.sov_a3 = s.sov_a3
WHERE r.sov_a3 IS NOT NULL
GROUP BY s.sovereignt;