SELECT movie_id,corr(revenues_domestic,revenues_international) FROM movies_revenues
GROUP BY movie_id
ORDER BY 2 DESC NULLS LAST;