-- Concurrency and Locking

-- concurrency : when multiple users want to access the same data at same time

-- open two sessions
USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = points + 10
WHERE customer_id = 1;
COMMIT;

