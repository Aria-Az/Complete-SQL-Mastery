-- Covering Indexes

EXPLAIN SELECT customer_id, state FROM customers 
ORDER BY state; -- 'Using index'

EXPLAIN SELECT * FROM customers 
ORDER BY state; -- type:ALL, 'Using filesort'

-- the index only covers customer_id, state, points
