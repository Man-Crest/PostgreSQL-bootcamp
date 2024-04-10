WITH my_cte AS(
    SELECT first_name,last_name,date_of_birth FROM actors
) -- cte query
SELECT first_name FROM my_cte; -- main query