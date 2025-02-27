-- Character Sets and Collations

-- character set is a table that maps each character to a number

SHOW CHARSET     -- utf8mb3_general_ci  ( ci means CASE INSENSITIVE )

-- CHAR(10) -> 10 * 3 = 30 * 1000000 = 30M   ( maxlen 3)
-- but if we use latin1 (maxlen 1), we use 10M bytes instead of 30M

CREATE DATABASE table1   -- or ALTER
(
	first_name VARCHAR(50) CHARACTER SET latin1,
)
	CHARACTER SET latin1
