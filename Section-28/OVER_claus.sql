SELECT movie_lang,
    COALESCE(age_certification, 'U'),
    avg(movie_length) OVER(PARTITION by movie_lang ORDER BY 1) AS "AVG LENGTH"
FROM movies;


SELECT avg(revenues_domestic) 



SELECT 
mv.movie_lang,
avg(revenues_domestic) OVER(PARTITION BY movie_lang) AS "per_lang_domestic_rev",
avg(revenues_international) OVER(PARTITION BY movie_lang)AS "pr_lang_international_rev"
    FROM movies_revenues AS mr
    INNER JOIN movies mv ON mv.movie_id = mr.movie_id;

