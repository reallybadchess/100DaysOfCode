-- Use Returning to get the update rows

SELECT *
FROM customers

UPDATE customers
SET
	email = 'a@b.com'
WHERE customer_id = 3
RETURNING *;
