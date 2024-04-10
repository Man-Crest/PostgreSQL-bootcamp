CREATE OR REPLACE FUNCTION log_last_name_changes()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
	IF NEW.last_name <> OLD.last_name THEN
		 INSERT INTO actors(actor_id,last_name)
		 VALUES(OLD.actor_id,OLD.last_name);
	END IF;

	RETURN NEW;
END;
$$

CREATE TRIGGER last_name_changes
  BEFORE UPDATE
  ON actors
  FOR EACH ROW
  EXECUTE PROCEDURE log_last_name_changes();

INSERT INTO actors (first_name, last_name)
VALUES ('John', 'Doe');

SELECT * FROM actors;