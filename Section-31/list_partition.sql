CREATE TABLE contry_master(
    code VARCHAR(5) NOT NULL
) PARTITION BY LIST (code)

SELECT * FROM ONLY contry_master

CREATE TABLE contry_master_us 
PARTITION OF contry_master
FOR VALUES IN ('US');

CREATE TABLE contry_master_uk 
PARTITION OF contry_master
FOR VALUES IN ('UK');

CREATE TABLE contry_master_other 
PARTITION OF contry_master
FOR VALUES IN ('IN','CH','PK','IR');

CREATE TABLE contry_master_default
PARTITION OF contry_master
DEFAULT;

DROP TABLE contry_master_other;

INSERT INTO contry_master (code)
VALUES 
('US'),
('UK'),
('IR'),
('IN'),
('CH'),
('PK');


SELECT * from contry_master_default
SELECT * from contry_master;