-- Selecting distinct values
-- #############################

/*

SELECT DISTINCT(col_name)
FROM table_name

*/

-- 1. Get all records from movies table

SELECT *
FROM movies;

-- 2. Get movie_lang from movies table

SELECT movie_lang
FROM movies;

-- 3. Get unique languages from 

SELECT 
	DISTINCT(movie_lang)
FROM movies
ORDER BY 1 DESC;

-- 4. Get unique director id

SELECT 
	DISTINCT(director_id)
FROM movies;

-- 5. Get multi distinct values e.g. get unique movie_lang, director_id

SELECT
	DISTINCT movie_lang, director_id
FROM movies
ORDER BY 1;

-- 6. Get all unique records in the movie table

SELECT
	DISTINCT *
FROM movies
ORDER BY movie_id ASC; 