select first_name,last_name from directors
INTERSECT
select first_name,last_name FROM actors

-- gives same values
