CREATE TABLE master(
    id serial ,
    name varchar(50),
    parent integer
);

CREATE table child_table() INHERITS (master);

SELECT * from master;
SELECT * from child_table;

INSERT INTO master (name,parent)
VALUES ('a',1)

INSERT INTO child_table (name,parent)
VALUES ('b',2)

SELECT * from ONLY master;
SELECT * from ONLY child_table;

UPDATE child_table 
SET name = 'c' 
WHERE parent = 2;

DROP TABLE master; -- can't delete master table because other tables are dependent on this table

DROP TABLE CASCADE master; -- this will drop all the child tables also

