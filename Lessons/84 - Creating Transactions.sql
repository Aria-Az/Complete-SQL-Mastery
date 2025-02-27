-- Creating Transactions

-- run create-datebases to restore data

-- if in between the executions we get disconnected, the rows will get back to their last Values

USE sql_store;

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-01', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 1);

COMMIT;

-- ROLBACK;   -- this will rollback the transaction and undo all the changes



SHOW VARIABLES LIKE 'autocommit%'  -- when we execute a single statement, MYSQL puts that statement into a transaction


