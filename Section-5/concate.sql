SELECT 
CONCAT (first_name ,' ',last_name) AS "full_name"
FROM actors

SELECT 
CONCAT_WS(' | ',first_name,last_name) AS "full_name"
FROM actors




