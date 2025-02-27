-- outer joins between multiple tables

-- Its best to use only LEFT JOIN for joining between multiple tables

SELECT c.customer_id, c.first_name, o.order_id, sh.name AS shipper
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN shippers sh ON sh.shipper_id = o.shipper_id
