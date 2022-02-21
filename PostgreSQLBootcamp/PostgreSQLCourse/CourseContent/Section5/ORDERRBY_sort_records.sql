-- Using ORDER BY to sort records
-- ##############################

-- When you query data from a table, the SELECT statement returns rows in an unspecified order.
-- To sort the rows of the resut set, we use the ORDER BY clause in the SELECT statement.

/*

SELECT 
	column_list
FROM tablename
ORDER BY 
	sort_expression (ASC | DESC)
	
-- sort-expresesion can be a single column or an expression
*/

-- 1. Sort based on a single column 
-- Sort all move records by their release date in ascending order


SELECT *
FROM movies
ORDER BY
	release_date ASC;
	
	
-- 2. Sort all movies recordsd by release date in descending order

SELECT *
FROM movies
ORDER BY
	release_date DESC;
	
-- 3. Sort based on multiple columns
-- 	  Sort all movies records by release date in DESC, and movie_name in ASC

SELECT *
FROM movies
ORDER BY 
	movie_name ASC,
	release_date ASC;
	
	
	