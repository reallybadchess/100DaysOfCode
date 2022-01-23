-- Some mathematical funtion examples

SELECT *
FROM film
LIMIT 5;
 
-- rental rate vs replacement cost
SELECT ROUND(rental_rate/replacement_cost, 4)*100 
AS percentage_cost
FROM film;

-- deposit for replacemenet cost
SELECT 0.1 * replacement_cost
AS deposit
FROM film;