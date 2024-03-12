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
    dob DATE,
    nationality VARCHAR(20),
    add_date DATE,
    update_date DATE
);