-- Get all boundary type from Italy
SELECT DISTINCT adm0_left, adm0_right, geom
FROM boundary as b
WHERE adm0_left = 'Italy'
OR adm0_right = 'Italy';