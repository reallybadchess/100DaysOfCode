/*
Account-Job Table. 
This table helps reference the account and 
job tables by using a foreign key
*/

CREATE TABLE account_job(
    user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
	
)