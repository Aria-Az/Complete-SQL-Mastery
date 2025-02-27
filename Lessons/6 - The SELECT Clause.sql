-- The SELECT Clause

USE sql_store;

SELECT customer_id, first_name, last_name, points, points + 10 AS new_points, (points + 10) * 2 AS 'Newer Points'
FROM customers
-- WHERE customer_id = 1
-- ORDER BY first_name

-- SELECT DISTINCT state
-- FROM customers