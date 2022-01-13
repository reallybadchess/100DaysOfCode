-- DELETE 

--GENERAL syntax

DELETE
FROM table
WHERE row_id = 1

DELETE
FROM tableA
USING tableB
WHERE tableA.id = tableB.id

-- this deletes all rows
DELETE
FROM table

-- Some examples
INSERT INTO job(job_name)
VALUES
('Cowboy');

SELECT *
FROM job;

-- Deleting last job
DELETE 
FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id,job_name

SELECT *
FROM job;
-------

