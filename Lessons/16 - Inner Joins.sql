-- INNER JOIN (JOIN)

-- SELECT order_id, orders.customer_id, first_name, last_name
-- FROM orders
-- INNER JOIN customers ON orders.customer_id = customers.customer_id

SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
