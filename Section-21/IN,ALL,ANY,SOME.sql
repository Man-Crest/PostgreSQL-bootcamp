

SELECT 
    25 IN (1,2,3,25,56);

SELECT 
    25 NOT IN (1,2,3,25,56);

SELECT 
    25 = ALL(ARRAY[25,25,25,25,25,25]) AS "result" ;

SELECT 
    25 = ANY(ARRAY[1,3,4,5,7,9,25,58]) AS "result" ;




