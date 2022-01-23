-- UPDATE

-- General syntax

UPDATE table
SET column1 = value1
	column2 = value2,...
WHERE
	condition;
	
---------- 
-- few differrent way to update the last_login

UPDATE account
SET last_login = CURRENT_TIMESTAMP;

----------
UPDATE account
SET last_login = create_on;

----------
-- UPDATE 'join'
UPDATE account_job
SET hire_date = account.create_on
FROM account
WHERE account_job.user_id = account.user_id;

-----------
UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email,last_login,create_on;