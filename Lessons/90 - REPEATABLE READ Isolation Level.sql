-- REPEATABLE READ Isolation Level

USE sql_store;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ; -- DEFAULT Isolation Level
START TRANSACTION;
SELECT points FROM customers
WHERE customer_id = 1; -- shows 30 before COMMIT

SELECT points FROM customers
WHERE customer_id = 1; -- still shows 30 after COMMT in another session
COMMIT;

USE sql_store;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ; -- DEFAULT Isolation Level
START TRANSACTION;
SELECT * FROM customers
WHERE state = 'VA'; -- we only see customer #2 even after transaction in another session
COMMIT; -- we see customer #1 after COMMIT in this session


-- type below queries in another session :
USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = 40
WHERE customer_id = 1;
COMMIT; 

USE sql_store;

START TRANSACTION;
UPDATE customers
SET state = 'VA'
WHERE customer_id = 1;
COMMIT; 