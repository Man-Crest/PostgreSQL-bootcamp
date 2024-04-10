BEGIN ;
    UPDATE movies_revenues SET revenues_domestic = 200 WHERE movie_id = 204;

    SELECT * from movies_revenues ORDER BY 1;

ROLLBACK;

SELECT * from movies_revenues 
	ORDER BY 1;

SELECT * FROM movies_revenues;