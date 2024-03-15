CREATE TYPE temp_type AS (city VARCHAR(20), country VARCHAR(20))
CREATE TABLE
    temp_type_table (id SERIAL primary key, address temp_type)
INSERT INTO
    temp_type_table (address)
VALUES
    (ROW ('dkgfbd', 'jsdfb'))
select
    *
from
    temp_type_table

SELECT
    (address).country
FROM
    temp_type_table;

SELECT
    (temp_type_table.address).city
FROM
    temp_type_table;

ALTER TYPE temp_type
RENAME TO my_address;

ALTER TYPE my_address OWNER TO postgres;

ALTER TYPE my_address ADD ATTRIBUTE street_address VARCHAR(150) CREATE TYPE verb_enum AS enum ('run', 'walk', 'eat')
CREATE TABLE
    enum_temp_table (id SERIAL, work verb_enum)

INSERT INTO
    enum_temp_table (work)
VALUES
    ('walk')
    
select
    *
from
    enum_temp_table