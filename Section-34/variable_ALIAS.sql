CREATE FUNCTION calculate_salary(
    emp_id_param INT,
    hours_worked_param INT,
    hourly_rate_param NUMERIC
) RETURNS NUMERIC AS $$
DECLARE
    emp_id ALIAS FOR $1;
    hours_worked ALIAS FOR $2;
    hourly_rate ALIAS FOR $3;
    total_salary NUMERIC;
BEGIN
    total_salary := hours_worked * hourly_rate;
    RETURN total_salary;
END;
$$ LANGUAGE plpgsql;

SELECT calculate_salary(1,5,12);

