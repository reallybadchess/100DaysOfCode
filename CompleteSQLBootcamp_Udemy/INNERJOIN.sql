--Syntax
SELECT *
FROM TableA
INNER JOIN TableB
ON TableA.col_match = TableB.col_match
-- Inner join: everything in A and B. 

--------------------------
SELECT *
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
LIMIT 5;

--------------------------
-- If we want just one customer_id column we need to specify which table to get it from
SELECT payment_id, payment.customer_id, first_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;