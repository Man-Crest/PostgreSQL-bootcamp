BEGIN ;
    UPDATE movies_revenues SET revenues_domestic = 100 WHERE movie_id = 204;

    SELECT * from movies_revenues ORDER BY 1;

    SAVEPOINT first_update;
    
    UPDATE movies_revenues SET revenues_domestic = 300 WHERE movie_id = 204;

    SELECT * from movies_revenues ORDER BY 1;

ROLLBACK to first_update;

SELECT * from movies_revenues 
	ORDER BY 1;

SELECT * FROM movies_revenues;


