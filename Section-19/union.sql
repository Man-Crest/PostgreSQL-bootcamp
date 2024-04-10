select first_name,last_name,'director' AS "role" from directors
WHERE nationality NOT IN('German','British')
UNION
select first_name,last_name, 'actor' AS "role" FROM actors
WHERE date_of_birth NOT BETWEEN '1950-01-01' AND '1990-01-01'
ORDER BY role

select * from actors
select * from directors