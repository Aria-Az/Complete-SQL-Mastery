-- Order of Columns in Composite Indexes

-- order of columns :
-- put the most frequently used columns first
-- put the columns with a higher cardinality first ( its always not the best practice, check below queries )
-- Take your queries into account

EXPLAIN SELECT customer_id
FROM customers
WHERE state = 'CA' AND last_name LIKE 'A%';

SELECT 
	COUNT(DISTINCT state),  -- 48
    COUNT(DISTINCT last_name)  -- 996 -> better candidate to come first
FROM customers;

CREATE INDEX idx_lastname_state ON customers (last_name, state);  -- 40 rows
CREATE INDEX idx_state_lastname ON customers (state, last_name);  -- 7 rows  

EXPLAIN SELECT customer_id
FROM customers
USE INDEX(idx_lastname_state)   -- idx_state_lastname
WHERE state = 'NY' AND last_name LIKE 'A%';   -- 2 for 'idx_state_lastname', 40 for 'idx_lastname_state'

-- its because first we deal with equality (state = 'NY') then a range (last_name LIKE 'A%')
-- so its better to index state first then lastname

EXPLAIN SELECT customer_id
FROM customers
USE INDEX(idx_state_lastname)  
WHERE state LIKE 'A%' AND last_name LIKE 'A%';  -- 40 for 'idx_lastname_state', 51 for 'idx_state_lastname'

-- for in this particular example, idx_lastname_state is better. but in generall and realistically idx_state_lastname is more efficient.

-- DROP INDEX idx_lastname_state ON customers;



