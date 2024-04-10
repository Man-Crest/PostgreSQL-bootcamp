
CREATE TABLE partition_master(
    id bigserial,
    dob date NOT NULL,
    country_code int
) PARTITION by RANGE (dob);

CREATE TABLE partition_child_2000 PARTITION OF partition_master
FOR VALUES FROM ('2000-01-01') TO ('2001-01-01')

CREATE TABLE partition_child_2001 PARTITION OF partition_master
FOR VALUES FROM ('2001-01-01') TO ('2002-01-01')

INSERT INTO partition_master (dob,country_code) VALUES 
('2000-05-05','123132'),
('2001-05-05',7575),
('2000-05-05',75),
('2001-05-05',7435),
('2000-01-01',35783),
('2001-05-05',753),
('2001-01-01',3675);


SELECT * FROM partition_master
SELECT * FROM ONLY partition_master

SELECT * FROM  ONLY partition_child_2000;
SELECT * FROM ONLY partition_child_2001;


