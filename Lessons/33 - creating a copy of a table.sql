-- creating a copy of a table

-- below methods doesnt create PK and AI ( Auto Incremental )
-- CREATE TABLE orders_archived AS
-- SELECT *
-- FROM orders

-- Truncate `orders_archived` table

INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01'
