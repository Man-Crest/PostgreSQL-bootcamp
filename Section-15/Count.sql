
SELECT COUNT(movie_lang) from movies

SELECT COUNT(DISTINCT(movie_lang)) from movies

SELECT SUM(revenues_domestic) from movies_revenues

SELECT MIN(revenues_domestic) from movies_revenues

SELECT MAX(revenues_domestic) from movies_revenues

SELECT LEAST ('a','b','c')

SELECT GREATEST (1,2,3)

SELECT AVG(movie_length) from movies
WHERE movie_lang = 'English'

SELECT AVG(DISTINCT(movie_length)) from movies

SELECT CURRENT_TIMESTAMP 




