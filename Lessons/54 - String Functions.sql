-- String Functions

SELECT LENGTH('sky')  -- 3
SELECT UPPER('sky') -- SKY
SELECT LOWER('SKY') -- sky

SELECT LTRIM ('    Sky')  -- Sky - SHORT FOR LEFT TRIM

SELECT RTRIM ('Sky      ')  -- Sky - SHORT FOR RIGHT TRIM

SELECT TRIM ('    Sky      ')  -- Sky

SELECT LEFT('Kindergarten', 4) -- Kind
SELECT RIGHT('Kindergarten', 6) -- garten
SELECT SUBSTRING('Kindergarten', 3, 5) -- the fisrt argument is the start position and the second argument is the length argument - nderg
SELECT SUBSTRING('Kindergarten', 3) -- ndergarten

SELECT LOCATE('N', 'Kindergarten')   -- 3 , the searching is not case-sensetive
SELECT LOCATE('q', 'Kindergarten') -- 0
SELECT LOCATE('garten', 'Kindergarten') -- 7

SELECT REPLACE('Kindergarten', 'garten', 'garden') -- Kindergarden

SELECT CONCAT('first', 'last') -- firstlast

USE sql_store;

SELECT CONCAT( first_name, '  ' , last_name) AS full_name
FROM customers

-- search Mysql string functions on google to see all string functions
