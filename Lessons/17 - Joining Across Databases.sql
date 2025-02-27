-- Joining across databases
 USE sql_store;

SELECT *
FROM order_items oi
INNER JOIN sql_inventory.products p ON oi.product_id = p.product_id

--  USE sql_inventory;

-- SELECT *
-- FROM sql_store.order_items oi
-- INNER JOIN sql_inventory.products p ON oi.product_id = p.product_id
