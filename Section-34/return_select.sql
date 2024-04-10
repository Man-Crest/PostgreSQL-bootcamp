CREATE OR REPLACE FUNCTION get_movies_names() RETURNS SETOF movies AS $$
BEGIN
    RETURN QUERY SELECT * FROM movies;
END;
$$ LANGUAGE plpgsql;

SELECT (get_movies_names()).*;


