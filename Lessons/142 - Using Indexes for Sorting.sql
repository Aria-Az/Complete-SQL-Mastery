-- Using Indexes for Sorting

SHOW INDEXES IN customers;

EXPLAIN SELECT customer_id FROM customers ORDER BY state; -- Using 'idx_state_points' index
EXPLAIN SELECT customer_id FROM customers ORDER BY first_name;  -- type:ALL - 'Using filesort' -> filesort is an expensive operation
SHOW STATUS LIKE 'last_query_cost'; -- for line 6 is '1112.749000', for line 5 is '102.749000'

-- so its good to design indexes for both filtering and sorting data, but its complex

EXPLAIN SELECT customer_id FROM customers ORDER BY state, points; -- cost = '102.749000'
EXPLAIN SELECT customer_id FROM customers ORDER BY state, points DESC; -- cost = '1112.749000', 'Using Index; Using filesort'
EXPLAIN SELECT customer_id FROM customers ORDER BY state DESC, points DESC; -- cost = '102.749000' , 'Backward index scan; Using index'

-- if we have index like : (a,b), below 3 lines is how we can sort:
-- a
-- a, b
-- a DESC, b DESC

-- a, c, b  -> full table scan


EXPLAIN SELECT customer_id FROM customers USE INDEX (idx_state_points) ORDER BY points;  -- cost = '1112.749000', 'Using index; Using filesort'
EXPLAIN SELECT customer_id FROM customers USE INDEX (idx_state_points) WHERE state = 'CA' ORDER BY points; -- cost ='11.959234', 'Using where; Using index' 