-- DROP general syntax for dropping columns

ALTER
TABLE tableName
DROP COLUMN colName;

-- To remove dependencies
ALTER 
TABLE tableName
DROP COLUMN colName CASCADE;

--checking for existence to prevent error
ALTER
TABLE tableName
DROP COLUMN 
IF EXISTS colName;

-- dropping multiple columns
ALTER
TABLE tableName
DROP COLUMN colName1,
DROP COLUMN colName2;

----------
-- DROP example

ALTER
TABLE newInfo
DROP COLUMN people;

SELECT * 
FROM newInfo;