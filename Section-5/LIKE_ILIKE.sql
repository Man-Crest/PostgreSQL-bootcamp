SELECT * FROM movies
WHERE movie_name LIKE '_a%'


-- ILIKE works same but it is not case sensitive

SELECT * FROM movies
WHERE movie_name ILIKE '_A%'