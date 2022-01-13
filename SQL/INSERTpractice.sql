-- How to insert into a table

INSERT INTO account(username,password,email,create_on)
VALUES
('Jose','password','jose@mail.com',CURRENT_TIMESTAMP)

-------
-- Inserting into the job table
INSERT INTO job(job_name)
VALUES
('Astronaut')

INSERT INTO job(job_name)
VALUES
('PRESIDENT')

-------
-- inserting into the account_job table. We can use the primary key frfom the other tables to fill the data.
INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(10,10,CURRENT_TIMESTAMP)

