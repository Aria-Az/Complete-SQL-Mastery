-- sort order_id = 2 by total price ( quantity * unit_price ) in descending order

SELECT *, (quantity * unit_price) AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC