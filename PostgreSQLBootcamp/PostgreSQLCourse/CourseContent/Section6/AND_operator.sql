-- Using WHERE
-- #####################

-- WHERE allows for specific conditions to queries
-- Can limit the results that only satisfy the conditions
-- Filter rows on data by running condidtions
-- We use the WHERE clause in conjunction with operators (Comparison, Logical, Arithmatic)

/*

SELECT
	column_list
FROM table_name
WHERE
	conditions

*/

-- WHERE with operators (AND | OR)

-- First a single condition

-- 1. Get all English language movies
-- Filter by rows based on a Text value

SELECT *
FROM movies;

SELECT * 
FROM movies
WHERE
	movie_lang = 'English';
	
-- 2. Get all Japanese language movies
SELECT * 
FROM movies
WHERE
	movie_lang = 'Japanese';
	
-- 3. Use mutiple conditions, get all english language movies AND age certificate = 18

SELECT *
FROM movies
WHERE
	movie_lang = 'English' AND
	age_certificate = '18';
