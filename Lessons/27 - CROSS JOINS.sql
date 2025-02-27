-- CROSS JOIN ( combine every records from 1st table with every records from 2nd table - no ned for condition) 

SELECT c.first_name AS customer, p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY customer

-- we can also use the implicit method

-- SELECT c.first_name AS customer, p.name AS product
-- FROM customers c, products p
-- ORDER BY customer