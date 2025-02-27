-- get the orders that are not shipped 

SELECT *
FROM orders
WHERE shipper_id IS NULL           -- or WHERE shipped_date IS NULL



