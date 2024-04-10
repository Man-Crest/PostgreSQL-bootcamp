
CREATE TABLE movies2 AS (SELECT * FROM movies);

SELECT * FROM movies2;


CREATE TABLE movies3 AS (SELECT * FROM movies) WITH NO DATA;

SELECT * FROM movies3;
