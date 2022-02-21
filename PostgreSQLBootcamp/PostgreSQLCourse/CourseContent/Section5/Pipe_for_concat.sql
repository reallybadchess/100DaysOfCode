-- Assigning column alias to an expression
-- ######################3

-- 1. get first_name, last_name from actors table

SELECT 
	first_name, last_name
FROM actors;

-- 2. Can we combine these columns to make "Full Name"?
-- Yes!! Using a pipe! ----> ||

SELECT 
	first_name || last_name 
FROM actors;

-- Now with a space between them
SELECT 
	first_name || ' ' || last_name AS "Full Name"
FROM actors;

-- 3. Can I use an expression to get an output w/o using table column?

SELECT 2 * 10;
SELECT 2 / 10;
SELECT 10 / 2;

-- Yes it is possible.
