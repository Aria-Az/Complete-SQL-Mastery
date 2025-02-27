-- Composite Indexes   ( we can index multiple columns)

USE sql_store;
SHOW INDEXES IN customers;

EXPLAIN SELECT customer_id   -- it will pick maximum one index no mater how many indexes we have
FROM customers
WHERE state='CA' AND points > 1000;  -- the second part (points > 1000) requires a table scan

CREATE INDEX idx_state_points ON customers (state, points);   -- composite index (order matters)
-- first it was 112 rows but after idx_state_points its 58 rows    its better to use composite indexes
-- how many columns should we include in composite indexes -> maximum 16, but 4 to 6 performs good and its enough most of the time

DROP INDEX idx_state ON customers;
DROP INDEX idx_points ON customers;