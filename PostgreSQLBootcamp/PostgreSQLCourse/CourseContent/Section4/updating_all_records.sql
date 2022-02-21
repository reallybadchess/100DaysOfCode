-- UPDATE all records in a table
-- UPDATE with no WHERE clause
-- When defining no where clause all rows in that column will be changed!

UPDATE customers
SET
	is_enable = 'Y'
RETURNING *;