-- Get name, population estimate, and GDP estimation of sovereignty with biggest population in europe
SELECT s2.sovereignt, s2.pop_est, s2.gdp_md_est
FROM 
 	(SELECT max(pop_est) as max_pop
	 FROM sovereignty as s1
 	 WHERE s1.continent = 'Europe') as max_sov, sovereignty as s2
WHERE s2.pop_est = max_sov.max_pop