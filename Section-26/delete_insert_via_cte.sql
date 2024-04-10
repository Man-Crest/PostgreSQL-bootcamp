CREATE TABLE articles  (
    id SERIAL,
    name VARCHAR(50),
    length INT
)

CREATE TABLE deleted_articles  (
    id SERIAL,
    name VARCHAR(50),
    length INT
)

INSERT into articles (name,length) 
VALUES 
('a',50),
('b',20),
('c',70),
('d',510);


SELECT * FROM articles;
SELECT * FROM deleted_articles;


WITH cte_delete_articles AS (
    delete from articles
    RETURNING *
)
INSERT INTO deleted_articles
SELECT * FROM cte_delete_articles;

