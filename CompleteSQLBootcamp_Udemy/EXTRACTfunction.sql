-- Examples on EXTRACT()
SELECT EXTRACT(YEAR FROM payment_date) AS my_year
FROM payment
LIMIT 5;

-------
SELECT EXTRACT(MONTH FROM payment_date) AS pay_month
FROM payment
LIMIT 5;

-------
SELECT EXTRACT(QUARTER FROM payment_date) AS pay_month
FROM payment
LIMIT 5;

