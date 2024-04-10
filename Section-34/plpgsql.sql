CREATE OR REPLACE FUNCTION sum_plpgsql(p1 int, p2 int) RETURNS int AS
$$
    BEGIN
        RETURN($1 + $2);
    END
$$ LANGUAGE plpgsql;

select sum_plpgsql(1,5);

DO
$$
    DECLARE
        mynum INT := 10;
        myName varchar(50) := 'man';
        role varchar(20) := 'golang intern';
        start_date date := '2023-12-18';
        end_date date := '2024-06-18';
    BEGIN
        RAISE NOTICE 'my name is % , my role is % , i started on % and will complete on % .',
        myName,
        role,
        start_date,
        end_date;
    END;
$$