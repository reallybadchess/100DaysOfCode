-- There is information on these films but none in inventory
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory.film_id
IS null;

-- RIGHT JOIN
-- essentially the same thing as a LEFT JOIN except the tables are switched
SELECT film.film_id, title, inventory_id, store_id
FROM film
RIGHT JOIN inventory 
ON film.film_id = inventory.film_id
WHERE inventory.film_id
IS null;

--These joins give us the rows and columns found in the first table or the second table but not any rows that are 
-- unique to the opposite table

-- In TableA or B but not unique to B