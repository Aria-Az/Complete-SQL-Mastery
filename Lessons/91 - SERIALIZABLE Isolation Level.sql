-- SERIALIZABLE Isolation Level

USE sql_store;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE; -- no more phantom reads
START TRANSACTION;
SELECT * FROM customers
WHERE state = 'VA';  -- waits for COMMIT in another session ( = slower performance )
COMMIT; 

-- type below queries in another session :

USE sql_store;

START TRANSACTION;
UPDATE customers
SET state = 'VA'
WHERE customer_id = 3;
COMMIT; 