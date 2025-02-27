-- ORDER BY

-- SELECT *
-- FROM customers
-- -- ORDER BY first_name DESC
-- ORDER BY state, first_name DESC

-- we didnt SELECT birth_date but below lines wont return an error ( it might sends an error in other RDBSM )
SELECT first_name, last_name
FROM customers
ORDER BY birth_date

-- below method is not very usefull
-- SELECT first_name, last_name, birth_date
-- FROM customers
-- ORDER BY 1, 2

