-- JOIN Challenge task

-- What are the emails of the customers who live in California?
-- My solution
SELECT email, address.district
FROM customer
LEFT JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California';

-- Actual Sol'n
SELECT email, district
FROM address
INNER JOIN customer
ON address.address_id = customer.address_id
WHERE district = 'California';

----------------------------
-- Get a list of all the movies "Nick Wahlberg" has been in.

SELECT title, first_name, last_name 
FROM film_actor
INNER JOIN film
ON film_actor.film_id = film.film_id
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
WHERE first_name = 'Nick'
AND last_name = 'Wahlberg';

-- Sheeeeeesh, it took me a good while to realize I could use multiple join statements in a row
----------------------------
--Same question but using LEFT JOIN

SELECT title, first_name, last_name
FROM film_actor
LEFT JOIN film
ON film.film_id = film_actor.film_id
LEFT JOIN actor
ON actor.actor_id = film_actor.actor_id
WHERE first_name = 'Nick'
AND last_name = 'Wahlberg';
