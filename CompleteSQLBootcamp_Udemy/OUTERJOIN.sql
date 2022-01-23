-- OUTER JOIN Practice

-- This joins data together from both tables
SELECT * 
FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;

-------------
-- This joins all rows only unique to one or the other table
SELECT * 
FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null 
OR payment.payment_id IS null;
-- this basically tells us there are no distinct customer_ids