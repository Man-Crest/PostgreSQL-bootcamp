DO
$$
    DECLARE
        start_time time := NOW();
    BEGIN

        RAISE NOTICE 'starting at %',
        start_time;

        PERFORM pg_sleep(2);

        RAISE NOTICE 'next time : %',start_time;
    END
$$


DO
$$
    DECLARE
    user_count INT;
	BEGIN
    SELECT COUNT(*) INTO user_count FROM movies;
	
	RAISE NOTICE '%' ,user_count;
	END;
$$

