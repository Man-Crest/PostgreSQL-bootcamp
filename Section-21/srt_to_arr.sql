
SELECT 
    STRING_TO_ARRAY('1,2,4,5,7,9',',')

-- ,'ABC' set the value to NULL
SELECT 
    STRING_TO_ARRAY('1,2,4,5,7,9,ABC',',','ABC')

-- ,'' set the value to NULL
SELECT 
    STRING_TO_ARRAY('1,2,4,5,7,,9',',','')

SELECT 
    ARRAY_TO_STRING(ARRAY[1,2,4,5,7,9],'|')

SELECT 
    ARRAY_TO_STRING(ARRAY[1,2,4,NULL,7,9],'|')

SELECT 
    ARRAY_TO_STRING(ARRAY[1,2,4,NULL,7,9],'|','empty')