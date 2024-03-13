SELECT * FROM movies
LIMIT 10


SELECT * FROM movies
ORDER BY movie_length DESC
LIMIT 10


SELECT * FROM directors
WHERE 
    nationality = 'American'
ORDER BY date_of_birth ASC
LIMIT 5 OFFSET 4;


SELECT * FROM movies
FETCH FIRST 5 ROW only 

SELECT * FROM movies
ORDER BY movie_length DESC
FETCH FIRST 5 ROW only;

SELECT * FROM directors
ORDER BY date_of_birth ASC
FETCH FIRST 5 ROW only;