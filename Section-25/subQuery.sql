
SELECT * FROM actors
WHERE date_of_birth >
(SELECT date_of_birth FROM actors
WHERE first_name = 'Douglas');
