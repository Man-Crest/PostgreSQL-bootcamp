
SELECT * FROM t_tags
ORDER BY id


SELECT * FROM t_tags
ORDER BY update_at DESC;


SELECT * FROM t_tags
ORDER BY update_at ASC;

SELECT * FROM t_tags
ORDER BY 1 DESC;

SELECT id,LENGTH(tag) AS t FROM t_tags
ORDER BY t DESC;


-- ORDER BY with null values
SELECT tag from t_tags
ORDER BY tag DESC NULLS first

-- limit, offset



