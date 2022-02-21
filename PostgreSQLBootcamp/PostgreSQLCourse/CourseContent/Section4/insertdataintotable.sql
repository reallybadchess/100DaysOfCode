-- Insert date into a table
-- ##############################################

-- 1. Create a test table called 'customers' with CREATE TABLE 
-- customer_id, first_name, last_name, email, age

CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(150),
	age INT
);

-- 2. Let's view the table data

SELECT *
FROM customers

-- 3. Insert date into the table

-- Syntax
/*
INSERT INTO tablename (col1, col2, ...)
VALUES
*/

INSERT INTO customers(first_name, last_name, email, age)
VALUES
('Adnan','Waheed', 'a@b.com', '40')

-- 4. Let's view the data

SELECT *
FROM customers

