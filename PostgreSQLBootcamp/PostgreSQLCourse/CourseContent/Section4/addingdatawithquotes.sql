-- Insert data which contains quotes
-- ############################################
-- e.g. Hot to add the first_name as "Bill O'Sullivan" in our customers table


INSERT INTO customers (first_name)
VALUES 
-- In order for this to work, you must wrap the name with an additional set of quotes
('Bill''O Sullivan');

SELECT * FROM customers;
  