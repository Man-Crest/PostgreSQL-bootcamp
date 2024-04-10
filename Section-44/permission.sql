GRANT CONNECT ON DATABASE movies TO "Man_user";

REVOKE ALL ON SCHEMA public from public;

CREATE TABLE IF NOT EXISTS test_permission(
    id serial 
)

GRANT CREATE ON SCHEMA public TO temp;
GRANT ALL ON SCHEMA public TO temp;


GRANT DELETE ON temp_check1 TO temp;

REVOKE CREATE ON SCHEMA public from temp;

GRANT CONNECT ON DATABASE movies TO temp;
REVOKE CONNECT ON DATABASE movies FROM temp;

GRANT INSERT ON TABLE test_permission TO temp;
REVOKE INSERT ON TABLE test_permission FROM temp;


INSERT INTO test_permission 
values (2);

-- column permissions
REVOKE SELECT ON ALL TABLES IN SCHEMA public FROM temp;
GRANT SELECT ON TABLE movies TO temp;

-- GRANT SELECT (movie_id,movie_length,movie_name) ON movies TO temp;
REVOKE SELECT (movie_id,movie_length,movie_name) ON movies FROM temp;