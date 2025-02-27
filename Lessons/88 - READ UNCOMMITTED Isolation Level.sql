-- READ UNCOMMITTED Isolation Level

USE sql_store;

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT points
FROM customers
WHERE customer_id = 1;  -- SHOWS 20 

-- type below queries in another session :
USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = 20
WHERE customer_id = 1;
COMMIT; 
