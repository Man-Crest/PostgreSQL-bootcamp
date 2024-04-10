
CREATE TABLE IF NOT EXISTS array_test(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    phone text ARRAY
    -- phone text[]
)

select phone [1] FROM array_test;

INSERT INTO array_test (name,phone)
VALUES ('msfedgean','{"5232678941"}');

INSERT INTO array_test (name,phone)
VALUES ('msfedgean', ARRAY['7845122','45512121']);