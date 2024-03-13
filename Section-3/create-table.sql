create database movies 


create table actors (
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    gender CHAR(1),
    date_of_birth DATE,
    add_date DATE,
    update_date DATE
);



create table directors(
    director_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    date_of_birth DATE,
    nationality VARCHAR(20),
    add_date DATE,
    update_date DATE
);

SELECT * FROM directors

DROP TABLE directors

create table movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50) NOT NULL,
    movie_length INT,
    movie_lang VARCHAR(20),
    age_certification VARCHAR(10),
    release_date DATE
    director_id REFERENCES directors (director_id)
);

SELECT * FROM movies

CREATE TABLE movies_references (
    revenue_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies (movie_id),
    revenues_domestic NUMERIC (10,2),
    revenues_international NUMERIC (10,2)
);

SELECT * FROM movies_references

CREATE TABLE movies_actors (
    movie_id INT REFERENCES movies (movie_id),
    actor_id INT REFERENCES actors (actor_id),
    PRIMARY KEY (movie_id,actor_id)   
)

SELECT * FROM movies_actors