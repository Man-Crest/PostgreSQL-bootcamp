CREATE MATERIALIZED VIEW IF NOT EXISTS mv_movies AS
SELECT *
FROM movies WITH DATA;

SELECT *
FROM mv_movies;

REFRESH MATERIALIZED VIEW mv_movies;

SELECT *
FROM movies;
INSERT INTO movies (
        movie_name,
        movie_length,
        movie_lang,
        age_certification,
        release_date,
        director_id
    )
VALUES ('adbf', 225, 'English', 19, '2024-2-25', 20);
CREATE MATERIALIZED VIEW IF NOT EXISTS mv_movies_nodata AS
SELECT *
FROM movies WITH NO DATA;
SELECT *
FROM mv_movies_nodata;
REFRESH MATERIALIZED VIEW mv_movies_nodata;
-- NOTE: WE can not update or delete or insert data into materialized view ,
--       for that we have to insert into main table then refresh mv. 
REFRESH MATERIALIZED VIEW CONCURRENTLY mv_movies;
CREATE UNIQUE INDEX idx_u_mv_movies_movie_id on mv_movies (movie_id);

CREATE TABLE IF NOT EXISTS page_clicks(
    id SERIAL,
    page varchar(100),
    click_time timestamp,
    user_id bigint
)


INSERT INTO page_clicks(page, click_time, user_id)
SELECT (
        CASE
            (RANDOM() * 2)::INT
            when 0 THEN 'google.com'
            when 1 THEN 'amazon.com'
            when 2 THEN 'flipkart.com'
        END
    ) AS page,
    NOW() as click_time,
    (
        FLOOR(random() * (111111111 - 1000000 + 1) + 1000000)
    )::INT as user_id
FROM GENERATE_SERIES(1, 10000) seq;


SELECT *
FROM page_clicks; 