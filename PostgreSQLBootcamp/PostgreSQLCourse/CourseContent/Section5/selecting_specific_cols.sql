-- Selecting specific columns/fields from a table
-- #############################################

-- Use explicit colm naes in SELECT statement

/*
SELECT col1, col2
FROM tablename
*/

-- 1. Get the first_name from actors table.

SELECT first_name
FROM actors

-- 2. Get first_name, last_name from actors table.

SELECT first_name, last_name
FROM actors

-- 3. Get movie_name, movie_lang, from movies table

SELECT movie_name, movie_lang
FROM movies

-- 4. Using explicit cols is a good practice and produce less load on server.
