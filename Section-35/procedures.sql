create or replace procedure first_procedure (name varchar(20),id int)
language plpgsql 
as 
$$
    BEGIN
        RAISE NOTICE 'i am % and id is %',name,id;
    END

$$

call first_procedure('man',1);

