declare cur_all_movies1 refcursor;

-- 2nd method to declare 
DECLARE cur_all_movies2 CURSOR FOR
SELECT movie_name,
    movie_length
from movies;

--3rd method 
DECLARE cur_all_movies3 CURSOR (custom_year integer) FOR
SELECT movie_name,
    movie_length
from movies
WHERE Extract(
        'YEAR'
        FROM release_date
    ) =  custom_year;

open cur_all_movies3(custom_year:=2020)


DO
$$
    DECLARE
        output_text text DEFAULT '';
        rec_movies record;

        cur_all_movies4 CURSOR 
        FOR
            SELECT * FROM movies;
    BEGIN
        OPEN cur_all_movies4;

        LOOP
            FETCH cur_all_movies4 INTO rec_movies;
            EXIT WHEN NOT FOUND;
            output_text := output_text || ',' || rec_movies.movie_name;
        END LOOP;

        RAISE NOTICE 'All movies names %',output_text;
    END
$$



