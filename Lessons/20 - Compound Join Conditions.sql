-- Compound Join Conditions
 USE sql_store;

SELECT *
FROM order_items oi
JOIN order_item_notes oin ON oi.order_id = oin.order_id AND oi.product_id = oin.product_id

