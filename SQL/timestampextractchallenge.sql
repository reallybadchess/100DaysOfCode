-- What are the months where payments were made?
SELECT TO_CHAR(payment_date,'Month') AS pay_month
FROM payment
GROUP BY pay_month;
-- Sol'n: Feb, Mar, Apr, May

-- Another Sol'n
SELECT DISTINCT(TO_CHAR(payment_date,'Month'))
AS pay_month
FROM payment;

-----------------
-- How many payments occurred on a monday
-- My sol'n
SELECT COUNT(payment_date)
FROM payment
WHERE TO_CHAR(payment_date,'DAY') LIKE 'MONDAY%';


-- Sol'n:
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;