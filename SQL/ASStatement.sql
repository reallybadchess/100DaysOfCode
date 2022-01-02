-- AS statement examples

SELECT amount AS rental_price
FROM payment;

---------------
SELECT SUM(amount) AS net_revenue
FROM payment
LIMIT 5;

---------------
SELECT COUNT(amount) AS num_transactions
FROM payment
LIMIT 5;
---------------
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id;
--------------
--This next one is important
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

--The mistake
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING total_spent > 100;
-- This is because an alias gets assigned at the very end of the query

-- It also doesn't work in the WHERE statement
-- This is wrong and yields a non existant column
SELECT customer_id, amount AS new_name
FROM payment
WHERE new_name > 2;