-- Use RETRUNING to get info on returns rows
-- RETURNING returns the entire row that has been modified
-- ###########################################

-- First see the default behaviour when adding a record into a table 

INSERT INTO customers (first_name)
VALUES 
('Anna');


-- After the insert, lets returns all rows
INSERT INTO customers (first_name)
VALUES
('Jerico') RETURNING *;

-- After the insert, lets return a single column value
INSERT INTO customers (first_name)
VALUES
('Paul') RETURNING customer_id;
