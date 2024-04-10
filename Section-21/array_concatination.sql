SELECT 
    ARRAY[1,2,3] || ARRAY[4,5,6] AS "combined"

SELECT
    ARRAY_CAT(ARRAY['a','b','c'],ARRAY['e','f','g']) AS "combined array"   

SELECT 
    3 || ARRAY[4,5,6] AS "arr";

SELECT 
    ARRAY[4,5,6] || 7 AS "arr";

SELECT
    ARRAY_PREPEND('a',ARRAY['e','f','g']) AS "prepended array"  ; 

SELECT
    ARRAY_APPEND(ARRAY['e','f','g'],'a') AS "appended array"  ; 

-- NDIMS returns 2D,3D (dimensions)

SELECT
    ARRAY_NDIMS(ARRAY[[1],[2]]) AS arr;

SELECT
    ARRAY_DIMS(ARRAY[[1],[2]]) AS arr;


-- NOTE: LENGTH

SELECT 
    ARRAY_LENGTH(ARRAY[1,2,3,4,5,6],1);

SELECT 
    ARRAY_LENGTH(ARRAY[]::integer[],1);

SELECT 
    ARRAY_POSITION(ARRAY[1,2,3,4,5,6],5);

-- if we have to search multiple values
SELECT 
    ARRAY_POSITIONS(ARRAY[1,5,2,5,3,4,5,6],5);

SELECT 
    ARRAY_REMOVE(ARRAY[1,2,3,4],3);