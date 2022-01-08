-- Learning about primary and foreign keys
SELECT * 
FROM payment
LIMIT 5;
-- In this case, the table loads and you can see the primary key identifier labeling the payment_id as (PK)

----------
/* 
How can we see if rows are foreign keys?

1. Investigate in the browser in pgAdmin by databases > your_database > schemas > tables > pick_table > constraints.

2. the constraints drop ddown gives you the columns and their designation

3. In pgAdmin main window you can select dependencies and then view what tables the columns are referencing.

*/