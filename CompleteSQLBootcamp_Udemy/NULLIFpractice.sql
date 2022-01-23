/*
NULLIF function:
takes only two inputs NULLIF(arg1, arg2) and returns NULL if both are equal,
otherwise it returns the first argument passed. i.e. arg1
*/


CREATE TABLE depts(
	first_name VARCHAR(50),
	deparrtment VARCHAR(50)
)

-----

INSERT 
INTO depts (first_name, deparrtment)
VALUES
('Vinton','A'),
('Lauren', 'A'),
('Claire','B')

-----
SELECT * 
FROM depts;

-- How to calc the ratio between male and female memnbers

SELECT(
SUM(CASE WHEN deparrtment = 'A' THEN 1 ELSE 0 END)/
SUM(CASE WHEN deparrtment = 'B' THEN 1 ELSE 0 END)
) AS deptRatio
FROM depts;

-- What happens if there are no more people in department B?

DELETE 
FROM depts
WHERE deparrtment ='B';

----- 
--What happens if we run the ratio code? We get an error because we are dividing by zero.
SELECT(
SUM(CASE WHEN deparrtment = 'A' THEN 1 ELSE 0 END)/
SUM(CASE WHEN deparrtment = 'B' THEN 1 ELSE 0 END)
) AS deptRatio
FROM depts;

-- The fix using NULLIF

SELECT(
SUM(CASE WHEN deparrtment = 'A' THEN 1 ELSE 0 END)/
	NULLIF(SUM(CASE WHEN deparrtment = 'B' THEN 1 ELSE 0 END), 0)
) AS deptRatio
FROM depts;

-- This returns a null essentially telling us that there is something equal to zero
