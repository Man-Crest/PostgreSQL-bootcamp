SELECT * FROM crosstab
(
    '
        SELECT 
            name,
            subject,
            score
        FROM scores;
    '
) AS ct (
    name VARCHAR,
    English NUMERIC,
    History NUMERIC,
    Math NUMERIC,
    Music NUMERIC,
)