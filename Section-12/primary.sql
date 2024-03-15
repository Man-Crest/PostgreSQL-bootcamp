CREATE TABLE table_items (
    name VARCHAR(20) PRIMARY KEY,
    hobby VARCHAR(50)
);

ALTER TABLE table_items
DROP CONSTRAINT table_items_pkey;


ALTER TABLE table_items
ADD PRIMARY KEY (name,hobby);

ALTER TABLE table_items
ADD CONSTRAINT cname
    PRIMARY KEY (name,hobby)



SELECT * FROM table_items;