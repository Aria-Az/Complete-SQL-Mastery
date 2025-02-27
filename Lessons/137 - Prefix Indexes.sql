-- Prefix Indexes

-- String Columns : CHAR - VARCHAR - TEXT - BLOB

CREATE INDEX idx_lastname ON customers (last_name(20));   -- only first 20 characters, but how to find the optimal prefix number?

SELECT 
	COUNT(DISTINCT LEFT(last_name,1)), -- we get 25 uique values
    COUNT(DISTINCT LEFT(last_name,5)),  -- we get 966 uique values   5 is the optimal number
    COUNT(DISTINCT LEFT(last_name,10))  -- we get 996 uique values
FROM customers;  