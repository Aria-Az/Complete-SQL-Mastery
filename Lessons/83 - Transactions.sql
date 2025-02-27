-- Transactions : A group of SQL statements that represent a single unit of work
-- think about a transaction of a bank
-- we want to make multiple changes to data and we want all these changes succeed together or fail together
-- as a single unit

-- ACID properties : 
-- Atomicity : the transactions are like atoms, each transaction is a single unit of work
-- Consistency : database will be Consistent
-- Isolation : if multiple transaction try to update the same data, the rows that are being effected get locked so only one transaction at a time update those rows, other transactions have to wait
-- Durability : the changes are permanent, we dont lose the changes


