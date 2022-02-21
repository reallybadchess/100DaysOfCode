-- Use ORDER BY to sort rows by expressions
-- #####################################

-- 1. Let's get all records from actors table

SELECT *
FROM actors;

-- 2. Let's calculate the length of the actor name with the LENGTH() function

SELECT
	first_name,
	LENGTH(first_name) AS len
FROM actors
ORDER BY
	len DESC;


-- 3. Let's sort rows by length of the actor name in DESC order.