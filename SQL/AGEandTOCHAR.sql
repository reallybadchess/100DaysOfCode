-- Examples on AGE() and TO_CHAR

SELECT AGE(payment_date)
FROM payment;

-----
SELECT TO_CHAR(payment_date,'MONTH-YYYY')
FROM payment;

SELECT TO_CHAR(last_update,'MONTH-YYYY')
from actor;

SELECT TO_CHAR(payment_date,'MM/dd/YYYY') 
FROM payment;