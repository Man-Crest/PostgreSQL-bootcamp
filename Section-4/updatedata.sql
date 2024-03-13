UPDATE customers
SET name = 'man'
WHERE id = '1';


UPDATE customers
SET 
name = 'man',
age = '22'
WHERE id = '1'
RETURNING *;