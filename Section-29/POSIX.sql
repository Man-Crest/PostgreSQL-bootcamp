SELECT SUBSTRING('The movie will start at 8pm on Dec 10, 2020.' FROM '.');
SELECT SUBSTRING('The movie will start at 8pm on Dec 10, 2020.' FROM '.*');
SELECT SUBSTRING('The movie will start at 8pm on Dec 10, 2020.' FROM '\w+');
SELECT SUBSTRING('The movie will start at 8pm on Dec 10, 2020.' FROM '\w+.$');
SELECT SUBSTRING('The movie will start at 8pm on Dec 10, 2020.' FROM 'will.*');
SELECT SUBSTRING('The movie will start at 8pm on Dec 10, 2020.' FROM '\d{2}');
SELECT SUBSTRING('The movie will start at 8pm on Dec 10, 2020.' FROM '\d{4}');
SELECT SUBSTRING('The movie will start at 8pm on Dec 10, 2020.' FROM 'Dec \d{2}, \d{4}');

SELECT REGEXP_MATCHES('The movie will start at 8pm on Dec 10, 2020.', '2([A-Za-z0-9_]+)');

SELECT REGEXP_MATCHES('The movie will start at 8pm on Dec 10, 2020.', '2([A-Za-z0-9_])');

SELECT REGEXP_MATCHES('The movie will start at 8pm on Dec 10, 2020.', '2([A-Za-z0-9_])');



SELECT REGEXP_REPLACE('The movie will start at 8pm on Dec 10, 2020.','2020','2024');


SELECT REGEXP_SPLIT_TO_TABLE('a,b,c',',');

SELECT REGEXP_SPLIT_TO_ARRAY('a,b,c',',');

