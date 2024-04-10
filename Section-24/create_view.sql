CREATE OR REPLACE VIEW v_movies_join AS 
SELECT mv.movie_id,mv.movie_name,mv.director_id,d.first_name,d.nationality from movies AS mv
INNER JOIN directors as d ON d.director_id = mv.director_id;


SELECT * FROM v_movies_join;

ALTER view v_movies_join RENAME TO v_movies_director_join;

SELECT * FROM v_movies_director_join;

DROP VIEW v_movies ;

CREATE OR REPLACE VIEW v_movies_quick AS
SELECT * from movies; 

SELECT * FROM v_movies_quick;

SELECT * FROM movies;


-- NOTE: WITH CHECK OPTION

CREATE OR REPLACE VIEW v_movies_quick AS
SELECT * FROM movies
WHERE movie_lang = 'English'
WITH CHECK OPTION;

INSERT  INTO v_movies_quick (movie_name,movie_length,movie_lang,age_certification,release_date,director_id)
VALUES ('man',225,'Chinese',18,'2024-2-25',20);


-- NOTE: WITH LOCAL CHECK OPTION

CREATE OR REPLACE VIEW v_movies_age_above_18 AS
SELECT * FROM v_movies_quick
WHERE age_certification > '18'
WITH LOCAL CHECK OPTION;

INSERT  INTO v_movies_age_above_18 (movie_name,movie_length,movie_lang,age_certification,release_date,director_id)
VALUES ('man',225,'English',19,'2024-2-25',20);

SELECT * FROM v_movies_age_above_18;

SELECT * FROM movies;

-- to see all mv 

select * from pg_matviews;

