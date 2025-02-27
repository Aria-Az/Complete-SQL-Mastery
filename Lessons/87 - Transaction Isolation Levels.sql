-- Transaction Isolation Levels

-- took screenshot at 00:16 ( Concurrency Problems )
-- better Isolation --> fewer concurrency --> slower performance

SHOW VARIABLES LIKE 'transaction_isolation';  -- 'transaction_isolation', 'REPEATABLE-READ'
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET GLOBAL TRANSACTION ISOLATION LEVEL SERIALIZABLE;
