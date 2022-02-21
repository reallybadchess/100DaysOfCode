--###################################

-- 1. Let view all records of actors
 
SELECT *
FROM actors;

-- 2. Sort all records by first name ASC, date of birth DESC

SELECT *
FROM actors
ORDER BY
	first_name ASC,
	date_of_birth DESC;
	
-- 3. Now use column number instead of colum name for sorting

SELECT
	first_name,
	last_name,
	date_of_birth
FROM actors
ORDER BY
	1 ASC,
	3 DESC
	first_name ASC,
	date_of_birth DESC;
	