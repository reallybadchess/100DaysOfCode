-- Job Table

CREATE TABLE job(
    job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
	
)