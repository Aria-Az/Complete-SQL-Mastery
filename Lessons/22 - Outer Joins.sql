-- In below inner join we can see all the customers ( the customers that didnt order wont show up )
-- to solve this problem we use outter join

-- SELECT c.customer_id, c.first_name, o.order_id
-- FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id

-- LEFT JOIN ( all the records from the left table are returned whether the condition is true or not )
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id

-- RIGHT JOIN ( all the records from the right table are returned whether the condition is true or not )
-- SELECT c.customer_id, c.first_name, o.order_id
-- FROM orders o
-- RIGHT JOIN customers c ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id