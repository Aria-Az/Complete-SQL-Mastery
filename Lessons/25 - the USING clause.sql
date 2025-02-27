-- the USING clause ( only works when the column names are exactly the same across the tables )
SELECT o.order_id, c.first_name, sh.name AS shipper
FROM customers c
JOIN orders o USING (customer_id)   -- JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN shippers sh USING (shipper_id) 	-- JOIN shippers sh ON sh.shipper_id = o.shipper_id

-- SELECT * 
-- FROM order_items oi 
-- JOIN order_item_notes oin USING (order_id, product_id)  -- JOIN order_item_notes oin ON oi.order_id = oin.order_id AND oi.product_id = oin.product_id