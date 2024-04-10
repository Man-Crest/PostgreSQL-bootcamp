CREATE TABLE IF NOT EXISTS country_iso_codes(
    id serial PRIMARY KEY,
    country_name varchar(255),
    iso_code_2 varchar(2),
    iso_code_3 varchar(3),
    region varchar(200),
    sub_region varchar(200)
)


SELECT * FROM country_iso_codes;

\copy country_iso_codes(country_name,iso_code_2,iso_code_3,region,sub_region)
FROM 'countries_iso_codes.csv' DELIMITER ',' CSV HEADER;

