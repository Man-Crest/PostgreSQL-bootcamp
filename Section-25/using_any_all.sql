SELECT * FROM actors
WHERE date_of_birth = ANY
(SELECT date_of_birth FROM actors
WHERE gender = 'M');

