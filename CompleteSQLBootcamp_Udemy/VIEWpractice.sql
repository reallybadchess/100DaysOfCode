/*
Creating a VIEW:
- a DB object that is of a stored query
-can be accessed as a virual table in postgreSQL
-Notice that a view does not store data physicall, it simply store the query.

~It transforms a consistently used complex query into something you can simply call.

*/

-- Imagine a aproject wherer we constantly need to call the customer name and address.

SELECT first_name, last_name, address
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

--It may be useful to create a view of this query

CREATE VIEW customer_info AS
SELECT first_name, last_name, address
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

-- Now instead of having to rewrite the entire query:

SELECT *
FROM customer_info;

-----

-- If altering view is necessary, we can use CREATE OR REPLACE

CREATE OR REPLACE customer_info AS
SELECT first_name, last_name, address, district
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

-- And now

SELECT * 
FROM customer_info;

-- Change the name?

ALTER
VIEW customer_info
RENAME to c_info;

-- If we want to delete or drop the view we use DROP 

DROP
VIEW IF EXISTS c_info;
