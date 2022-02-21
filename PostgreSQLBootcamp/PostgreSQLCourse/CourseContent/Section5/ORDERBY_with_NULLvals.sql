-- ORDER BY using with NULL values
-- ################################

/*

SELECT 
	column_name
FROM tablename
ORDER BY
	sort_expression [ASC | DESC] [NULLS FIRST | NULLS LAST];
	
*/

-- 1. To demonstrate, let's create a table called demo_sorting

CREATE TABLE demo_sorting(
	num INT
);

INSERT INTO demo_sorting(num)
VALUES 
(1), (2), (3),(NULL);

SELECT *
FROM demo_sorting;

-- Sort by ASC
-- ###########################

-- 4. Get all the records from demo_sorting, and sort num on ASC values
SELECT * 
FROM demo_sorting 
ORDER BY 
	num;

-- ORDER BY with DESC uses NULLS LAST
SELECT * 
FROM demo_sorting 
ORDER BY 
	num NULLS LAST;
	
-- To place null beffore everything else

SELECT * 
FROM demo_sorting 
ORDER BY 
	num NULLS FIRST;


-- Sort by DESC
SELECT * 
FROM demo_sorting 
ORDER BY 
	num DESC;
	
-- NULLS LAST
SELECT * 
FROM demo_sorting 
ORDER BY 
	num DESC NULLS LAST;
	
-- Drop the demo table
DROP TABLE demo_sorting