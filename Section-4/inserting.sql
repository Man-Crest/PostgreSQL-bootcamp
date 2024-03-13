
-- to insert data with ' we have to add an extra ' 
-- ex. insert into a 
        -- values('man''m') it will add man'm 


-- NOTE: RETURNING

INSERT into customers (id)
values ('1') RETURNING *; 
-- * return full row that is inserted

INSERT into customers (id)
values ('1') RETURNING customer_id;
-- it only return inserted row's customer_id

