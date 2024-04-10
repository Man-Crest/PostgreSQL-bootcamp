SELECT movie_lang,
    COALESCE(age_certification,'U'),
    SUM(movie_length) AS "LENGTH",
    GROUPING(movie_lang) AS "language grouping",
    GROUPING(age_certification) AS "age grouping"
FROM movies
GROUP BY ROLLUP(movie_lang,age_certification);

SELECT * FROM movies


SELECT movie_lang,
    AVG(movie_length) AS "LENGTH"
FROM movies
GROUP BY ROLLUP(movie_lang)
ORDER BY "LENGTH";

SELECT movie_lang,
    COALESCE(age_certification, '25'),
    SUM(movie_length) AS "LENGTH",
    GROUPING(movie_lang) AS "language grouping",
    GROUPING(age_certification) AS "age grouping"
FROM movies
GROUP BY CUBE(movie_lang, age_certification);

