-- Delete data from a table
-- ##########################

SELECT *
FROM customers

/* 
To delete based on condition -
Syntax:

DELETE FROM tablename
WHERE column_name = 'val';

*/

DELETE FROM customers
WHERE customer_id = 9;

-- To delete all records
-- 'DELETE FROM table' without the WHERE clause

DELETE FROM customers

