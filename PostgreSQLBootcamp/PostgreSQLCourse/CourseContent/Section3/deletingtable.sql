-- Create a test table in DB

CREATE TABLE roles (
	role_id SERIAL PRIMARY KEY,
	role_name VARCHAR(50) 
);


-- To delete the table

DROP TABLE roles

-- Always be cautious with the DROP statement. There is no way undo and can cause costly data loss.