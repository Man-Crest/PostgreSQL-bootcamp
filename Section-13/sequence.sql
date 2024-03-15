
CREATE SEQUENCE IF NOT EXISTS test_sql
INCREMENT 50
MINVALUE 100
MAXVALUE 600
START WITH 200

SELECT nextval ('test_sql')


CREATE SEQUENCE IF NOT EXISTS test_sql1 AS INT
INCREMENT 50
MINVALUE 100
MAXVALUE 600
START WITH 200

SELECT nextval ('test_sql')

ALTER SEQUENCE test_sql MAXVALUE 1000;


SELECT INITCAP('my name is man')
SELECT LOWER('My Name is MAN')


SELECT 
    INITCAP (
        CONCAT (first_name,' ',last_name)
    ) AS full_name
from directors;


SELECT LEFT('ABCD',2)
SELECT LEFT('ABCD',-1)

SELECT 
    LEFT(first_name,1) AS initial,
    COUNT(*) as total_initials
FROM directors
GROUP BY 1
ORDER BY 1;

SELECT REVERSE('string');


SELECT SPLIT_PART('A,B,C',',',2); 

SELECT SPLIT_PART('A||B||C','||',2); 


SELECT 
    SPLIT_PART(release_date::text,'-',1) AS r_year
FROM movies; 


SELECT LPAD('database',15,'*');
SELECT RPAD('database',15,'o');

SELECT POSITION('name' IN 'my name is man')

SELECT POSITION('IS' IN 'my name is man') -- case sensitive  


SELECT strpos('my name is man','man')

SELECT substring('hello' from 2 for 3);

SELECT repeat ('man ',10)

