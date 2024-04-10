CREATE FUNCTION calculate_salary1(
    IN hours_worked_param integer,
    IN hourly_rate_param integer,
    OUT total integer
) AS
$$
BEGIN
    total := hours_worked_param * hourly_rate_param;
END;
$$ LANGUAGE plpgsql;

SELECT calculate_salary1(5,12);