-- CAST function
-- General SQL syntax

SELECT 
CAST('5' AS INTEGER) AS new_int

--PostgreSQL CAST operator

SELECT '5'::INTEGER AS new_int2


-----
 SELECT *
 FROM rental
 
 -- How many digits are within the inventory id?
 
 -- we can cast inventory_id as a varchar then we can use char_length() to count the total 
 
 SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR))
 FROM rental;
 
 