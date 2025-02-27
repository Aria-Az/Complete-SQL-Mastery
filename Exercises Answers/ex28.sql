-- find customrs who have ordered lettuce ( id = 3) 
-- select customer_id, first_name, last_name 

-- MY solution :
SELECT customer_id, first_name, last_name  
FROM customers
WHERE customer_id IN (
				SELECT customer_id
				FROM orders o
                LEFT JOIN order_items oi USING (order_id)
                WHERE product_id = 3
                ) 
                
-- MOSH first solution with subquery :
-- SELECT customer_id, first_name, last_name    
-- FROM customers
-- WHERE customer_id IN (
-- 				SELECT o.customer_id
-- 				FROM order_items oi 
--                 JOIN orders o USING (order_id)
--                 WHERE product_id = 3
--                 ) 

-- MOSH second solution with JOINS : ( this is more readable )
-- SELECT DISTINCT customer_id, first_name, last_name
-- FROM customers c 
-- JOIN orders o USING (customer_id)
-- JOIN order_items USING (order_id)
-- WHERE oi.product_id = 3
                
