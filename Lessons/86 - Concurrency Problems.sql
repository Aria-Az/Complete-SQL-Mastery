-- Concurrency Problems

-- Lost Updates ( took screenshot at 1:16 - solution is Locking )
-- Dirty Reads ( took screenshot at 3:20 - solution is Isolation ( READ COMMITTED ))
-- Non-repeating Reads ( took screenshot at 4:32 & 5:01 - 
	-- solution is Isolation ( REPEATABLE READ )
-- Phantom Reads ( took screenshot at 6:37 & 6:44 - solution is repeating transaction A or
	--  if its realy crucial, solution is Isolation ( SERIALIZABLE ) - this level of Isolation
    -- makes system slow