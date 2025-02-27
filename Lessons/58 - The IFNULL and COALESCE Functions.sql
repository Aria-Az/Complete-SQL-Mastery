-- The IFNULL and COALESCE Functions

USE sql_store;

SELECT order_id, IFNULL(shipper_id, 'Not assigned') AS shipper -- if shipper_id is null, the function will return Not assigned
FROM orders

SELECT order_id, COALESCE(shipper_id, comments, 'Not assigned') AS shipper -- it returns the first non NULL value
FROM orders
