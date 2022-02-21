-- ORDER BY with alias column name
-- ################################


-- 1. Get first name, last name from actors table

SELECT 
	first_name,
	last_name
FROM actors

-- 2. Make an alias for last name as surname

SELECT 
	first_name,
	last_name surname
FROM actors

-- 3. Sort rows by last name

SELECT 
	first_name,
	last_name AS surname
FROM actors
ORDER BY 
	last_name;
	
-- Default is ASC!

-- 4. Sort rows by last name descending

SELECT 
	first_name,
	last_name
FROM actors
ORDER BY
	last_name DESC;
	
-- 5. Now use the alias surname in the ORDER BY clause

SELECT 
	first_name,
	last_name AS surname
FROM actors
ORDER BY
	surname DESC;