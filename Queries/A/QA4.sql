-- Get number of airports based on their types
SELECT type, COUNT(gid)
FROM airports
GROUP BY type;