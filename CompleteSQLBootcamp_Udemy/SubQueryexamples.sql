-- SubQuery

-- How can we get a llist of students who have scored better than the avg grade?
-- This involves a Sub-Querey

SELECT student, grade
FROM test_scores
WHERE grade > (SELECT AVG(grade)
			  FROM test_scores);
			  -- This will run first

----------
-- using the IN operator to check against multiple results
SELECT student, grade
FROM test_scores
WHERE student IN (SELECT student
			      FROM honor_roll);

----------
-- The EXIST operator:
		-- used to tt for existence of rows in a subquery

SELECT col_name
FROM tab_name
WHERE EXISTS( SELECT col_name
			  FROM tab_name
			  WHERE condition);
			  
			  
-----------
-- Working through some examples

SELECT title, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate)
					 FROM film);
					 
-----------
-- A more complex example using IN and JOIN
-- Grab the film titles that have been return between
-- a certain set of dates

SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory
ON inventory.inventory_id = rental.inventory_id
WHERE return_date 
BETWEEN '2005-05-29' AND '2005-05-30');

-----------
-- Example of EXIST
-- Find customers who have at least one payment > 11
SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p
 WHERE p.customer_id = c.customer_id
 AND amount > 11);


