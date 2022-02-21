/*
UPDATE tablename
SET columnname = 'new val'
WHERE columnname = 'val';
*/

SELECT * 
FROM customers;

-- Update a single column

UPDATE customers
SET email = 'a2@b.com'
WHERE customer_id = 1;

-- Update multiple columns

UPDATE customers
SET 
	email = 'a4@b.com',
	age = 30
WHERE customer_id = 1;

SELECT * 
FROM customers;