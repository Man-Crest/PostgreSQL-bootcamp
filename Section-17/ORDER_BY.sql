SELECT 
    movie_lang,
    MIN(movie_length),
    MAX(movie_length)
FROM movies
GROUP BY movie_lang


SELECT 
    age_certification,
    SUM(movie_length)
FROM movies
GROUP BY age_certification

SELECT * FROM movies_revenues

SELECT 
    COALESCE(revenues_domestic,'0') AS revenues_domestic,
    MIN(revenues_domestic),
    MAX(revenues_domestic)
FROM movies_revenues
GROUP BY revenues_domestic