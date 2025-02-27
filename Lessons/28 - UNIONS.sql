-- UNIONS ( for combining rows ) - we have to use equal number of columns while SELECTING

SELECT order_id, order_date, 'ACTIVE' AS status
FROM orders 
WHERE order_date >= '2019-01-01'
UNION
SELECT order_id, order_date, 'ARCHIVED' AS status
FROM orders 
WHERE order_date < '2019-01-01';

-- SELECT first_name      -- the first column will determine the name of column
-- FROM  customers
-- UNION
-- SELECT name
-- FROM  shippers