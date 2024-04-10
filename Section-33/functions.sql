CREATE OR REPLACE FUNCTION movies_my_add_func(int,int)
RETURNS int AS
'
    SELECT $1 + $2 ;
'LANGUAGE SQL

CREATE OR REPLACE FUNCTION movies_my_add_func2(int,int)
RETURNS int AS
$$
    SELECT $1 + $2 ;
$$ LANGUAGE SQL

SELECT movies_my_add_func2(1,5);

CREATE OR REPLACE FUNCTION movies_my_add_func2(int,int)
RETURNS int AS
$body$
    SELECT $1 + $2 ;
$body$ LANGUAGE SQL;

SELECT movies_my_add_func2(1,5);


CREATE OR REPLACE FUNCTION movies_print_func()
RETURNS int AS
$$
    SELECT count(*) from movies;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION movies_print_func2()
RETURNS movies AS
$$
    SELECT * from movies;
$$ LANGUAGE SQL;

SELECT (movies_print_func2()).*;
-- SELECT (movies_print_func2()).field_name;

CREATE OR REPLACE FUNCTION movies_print_func3()
RETURNS SETOF movies AS
$$
    SELECT * from movies;
$$ LANGUAGE SQL;

SELECT (movies_print_func3()).*;


CREATE OR REPLACE FUNCTION movies_print_func4()
RETURNS TABLE(
    movie_id INT,
    movie_length INT
) AS
$$
    SELECT movie_id,movie_length from movies;
$$ LANGUAGE SQL;


SELECT (movies_print_func4()).*;

SELECT * FROM movies_print_func4();



CREATE OR REPLACE FUNCTION movies_my_add_func_with_default_val(x int DEFAULT 1,y int DEFAULT 2)
RETURNS int AS
$body$
    SELECT x + y ;
$body$ LANGUAGE SQL;

SELECT movies_my_add_func_with_default_val(1,5);