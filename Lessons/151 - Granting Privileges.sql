-- Granting Privileges

-- 1: web/desktop application ( only read and write data, nothing more ) 
CREATE USER moon_app IDENTIFIED BY '1234';  -- this is an example, always use strong passwords

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON sql_store.*   -- * means all table,  sql_store.customers
TO moon_app;  -- moon_app@...

-- now connect as moon_app :
USE sql_blog;
SELECT * FROM customers;  -- Access denied

-- 2: admin 
-- you can search mysql privileges on google - ALL is the highest privilege
GRANT ALL
ON *.*  -- all tables in all databases
TO john;