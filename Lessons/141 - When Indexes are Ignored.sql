-- When Indexes are Ignored

EXPLAIN SELECT customer_id from customers
WHERE state = 'CA' OR points > 1000;   -- 1010 rows but the scan is index scan
-- we have to optimize th equery

CREATE INDEX idx_points ON customers (points);
EXPLAIN 
	SELECT customer_id from customers
	WHERE state = 'CA' 
    UNION
    SELECT customer_id from customers
    WHERE points > 1000;
    
-- '112' + '528' = '640' rows

EXPLAIN SELECT customer_id from customers
WHERE points + 10 > 2010;  -- 1010 rows ( its because we used (points + 10) expression )
-- to solve above problem ( isolate column ) :
EXPLAIN SELECT customer_id from customers
WHERE points > 2000;  -- 3 rows
