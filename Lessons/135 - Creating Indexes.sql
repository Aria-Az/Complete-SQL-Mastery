-- Creating Indexes

EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';  -- type:ALL -> full table scan, it scans every single record (1010)

CREATE INDEX idx_state ON customers (state);

EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';  -- type:ref   rows:112   possible_keys:idx_state