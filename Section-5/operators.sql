SELECT * FROM movies
WHERE 
    movie_lang = 'English'
    AND director_id = 2;

SELECT * FROM movies
WHERE 
    movie_lang = 'English'
    OR movie_lang = 'Chinese'
ORDER BY movie_lang;


SELECT * FROM movies
WHERE 
    (movie_lang = 'English'
    OR movie_lang = 'Chinese')
    AND age_certification = '12'
ORDER BY 1;



