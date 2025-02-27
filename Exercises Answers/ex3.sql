-- from the order_items table, get the items for order #6 where the the total price is greater than 30

SELECT *, (quantity * unit_price) AS total_price 
FROM order_items
WHERE order_id = 6 AND (quantity * unit_price) >= 30