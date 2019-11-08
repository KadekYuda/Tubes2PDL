-- Get all countries and its border which adjacent to Germany, sorted by the name of neighbouring country
(SELECT adm0_right as neighbour, geom
FROM boundary
WHERE adm0_left = 'Germany')
UNION
(SELECT adm0_left as neighbour, geom
FROM boundary
WHERE adm0_right = 'Germany')
ORDER BY neighbour