-- Write a query to find customers with more than 1000 points.

EXPLAIN SELECT customer_id FROM customers WHERE points > 1000;  -- type:ALL   1010 rows

CREATE INDEX idx_points ON customers (points);

EXPLAIN SELECT customer_id FROM customers WHERE points > 1000;  -- type:range   528 rows

