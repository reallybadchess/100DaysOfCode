-- String functions and operators
-- https://www.postgresql.org/docs/current/functions-string.html

SELECT LENGTH(first_name) 
FROM customer;

----------

SELECT first_name || ' ' || last_name
AS full_name
FROM customer;

----------

SELECT upper(first_name) || ' ' || upper(last_name)
AS full_name
FROM customer;

-----------

-- creating an email
SELECT first_name || last_name || '@company.com'
FROM customer;
-- this creates aa email using the full name

-----------
-- instead lets use the first letter of first name using left()
SELECT left(first_name,1) || '.' || last_name || '@company.com'
AS custom_email
FROM customer;