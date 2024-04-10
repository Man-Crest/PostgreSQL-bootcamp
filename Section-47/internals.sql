-- show all schema 

SELECT * FROM information_schema.schemata;

-- show all tabels and views

SELECT * FROM information_schema.tables;

SELECT * FROM information_schema.views;

SELECT 
    CURRENT_CATALOG,
    CURRENT_DATABASE(),
    CURRENT_USER,
    CURRENT_SCHEMA,
    SESSION_USER;  


select VERSION();


SELECT has_database_privilege('movies','CREATE');
SELECT has_schema_privilege('public','CREATE');
SELECT has_table_privilege('movies','INSERT');


SELECT pid,query FROM pg_stat_activity;


