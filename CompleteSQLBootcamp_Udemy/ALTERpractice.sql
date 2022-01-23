-- ALTER General syntax
ALTER TABLE tableName action

-- Adding a column
ALTER
TABLE tableName 
ADD COLUMN newCol TYPE

-- Removing columns
ALTER
TABLE tableName
DROP COLUMN colName 

-- Altter constraints
ALTER
TABLE tableNAme
ALTER 
COLUMN colName
SET DEFAULT value/DROP DEFAULT/SET NOT NULL/DROP NOT NULL/ ADD CONSTRAINT constraintName

--- New table to pratice on
CREATE
TABLE information(
	info_id SERIAL PRIMARY KEY,
	title  VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
);

-- Rename the table
ALTER
TABLE information
RENAME TO newInfo;

SELECT *
FROM newInfo;

-- Rename colunm
ALTER
TABLE newInfo
RENAME COLUMN person TO people;

-- How to alter constraints
INSERT
INTO newInfo(title)
VALUES
('some new title')

-- This throws an error because there is a null value in the people column

--This is one fix to the error
INSERT
INTO newInfo(title,people)
VALUES
('some new title','Martians');

-- Or another fix
ALTER 
TABLE newInfo
ALTER
COLUMN people
DROP NOT NULL;

-- We can try adding only to a new title
INSERT
INTO newInfo(title)
VALUES
('other new title');

SELECT *
FROM newInfo;
-- and this time it allows for the null value in people

