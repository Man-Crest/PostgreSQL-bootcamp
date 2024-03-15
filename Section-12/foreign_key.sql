CREATE TABLE t_product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    price VARCHAR(50)
);


CREATE TABLE t_supplier (
    supplier_id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    addr VARCHAR(50),
    FOREIGN KEY (supplier_id) REFERENCES t_product (id)
);


INSERT INTO t_product (name,price) VALUES ('a','100');

INSERT INTO t_supplier (supplier_id,name,addr) VALUES (1,'b','jhdbvj');

SELECT * FROM t_product
SELECT * FROM t_supplier


ALTER TABLE t_supplier
DROP CONSTRAINT t_supplier_pkey;



