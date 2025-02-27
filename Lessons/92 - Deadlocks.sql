-- Deadlocks  ( when both tarnsaction keep waiting for each other and never release their lock )

USE sql_store;
START TRANSACTION;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
UPDATE orders SET status = 1 WHERE order_id = 1; -- Error Code: 1213. Deadlock found when trying to get lock; try restarting transaction
COMMIT;

-- to reduce deadlocks : 1. we can follow the same orders for updating multiple records
-- 2. keep Transactions small and short in duration

-- type below queries in another session :

USE sql_store;
START TRANSACTION;
UPDATE orders SET status = 1 WHERE order_id = 1;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
COMMIT;


