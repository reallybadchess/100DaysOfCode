-- Adding alias to a column name
-- ###########################33

-- Often the technical language of the database will differ from the common language of a business

-- 1. Lets get all the records from the actors table, and review it from non-tech reader POV.

SELECT *
FROM actors;

-- 2. Make an alias for the first_name as firstName of actors

/*
SELECT column AS alias_name
FROM tablename
*/

SELECT first_name AS firstName
FROM actors

-- The alias name returns in all lower case letters. How to make sure it returns just as we want it?

SELECT first_name AS "firstName"
FROM actors;

-- 3. Column aliases that contain spaces, we use quotes
--    Make an alias for first_name as 'First Name' of actors table.

SELECT first_name AS "First Name"
FROM actors;

-- 4. Make alias for movie_name as 'Movie Name' and movie_lang as 'Language' from movies table

SELECT 
	movie_name AS "Movie Name", 
	movie_lang AS "Language",
	COUNT(*)
FROM movies;

-- 5. The AS keyword is optional!

SELECT 
	movie_name "Movie Name", 
	movie_lang Language",
	COUNT(*)
FROM movies;

-- 6. Can single quotes be used?

SELECT 
	first_name AS 'First Name'
FROM actors;

-- This throws an error. It is not possible to used single quotes.

-- Column aliases can be used to derived columns.
-- Using aliase is always helpful to makle your query more presentable and readable
