CREATE TABLE audit_log (
    event_time TIMESTAMP,
    table_name TEXT,
    operation TEXT,
    affected_row_id INT
);

CREATE OR REPLACE FUNCTION log_changes_trigger()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO audit_log(event_time, table_name, operation, affected_row_id)
        VALUES (CURRENT_TIMESTAMP, TG_TABLE_NAME, 'INSERT', NEW.id);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO audit_log(event_time, table_name, operation, affected_row_id)
        VALUES (CURRENT_TIMESTAMP, TG_TABLE_NAME, 'UPDATE', NEW.id);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO audit_log(event_time, table_name, operation, affected_row_id)
        VALUES (CURRENT_TIMESTAMP, TG_TABLE_NAME, 'DELETE', OLD.id);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER audit_trigger
AFTER INSERT OR UPDATE OR DELETE ON data_trigger_check
FOR EACH ROW
EXECUTE FUNCTION log_changes_trigger();

DROP TRIGGER audit_trigger ON audit_log;

SELECT * FROM audit_log;


CREATE TABLE IF NOT EXISTS data_trigger_check(
    id serial,
    name varchar(20),
    age int
)

-- Inserting a new row
INSERT INTO data_trigger_check (id, name, age)
VALUES (1, 'John', 30);

SELECT * FROM data_trigger_check;
-- Updating an existing row
UPDATE data_trigger_check
SET age = 35
WHERE id = 1;

-- Deleting a row
DELETE FROM data_trigger_check
WHERE id = 3;

