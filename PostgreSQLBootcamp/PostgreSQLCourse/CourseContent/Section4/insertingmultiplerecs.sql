-- Insert multiple records into a table
-- ####################################

-- We separate data with ',' to add multiple insert records into a table

/* 
INSERT INTO tablename (col1, col2, ...)
VALUES
('val1', 'val2', ...),
('val1', 'val2', ...),
('val1', 'val2', ...);
*/

INSERT INTO customers (first_name,last_name)
VALUES
('Jimmy','Johnson'),
('Michael','Jordan'),
('Linda', 'Avery');

-- View data

SELECT * 
FROM customers
