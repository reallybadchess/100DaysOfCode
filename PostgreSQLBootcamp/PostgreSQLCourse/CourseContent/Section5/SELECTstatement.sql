-- SELECT all data fro a table
-- ###############################

/*
SELECT * from tablename
*/

-- 1. Get all records from movies table

SELECT * 
FROM movies;

-- 2. Get all records from actors table

SELECT *
FROM actors;

-- 3. important to note:
--    PostgreSQL evaluates the FROM clause before the SELECT clause in the SELECT statement

-- 4. Not great practice to use * in SELECT