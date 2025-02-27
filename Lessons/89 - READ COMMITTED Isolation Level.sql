-- READ COMMITTED Isolation Level

USE sql_store;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;  --  no more dirty-reads
START TRANSACTION;
SELECT points FROM customers
WHERE customer_id = 1; -- shows 20 before COMMIT, 30 after COMMTTED

SELECT points FROM customers
WHERE customer_id = 1; -- shows 30 after COMMIT in another session, so we have non-repeatable reads problem
COMMIT;

-- type below queries in another session :
USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = 30
WHERE customer_id = 1;
COMMIT; 