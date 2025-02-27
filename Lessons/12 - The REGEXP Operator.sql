-- REGEXP

SELECT *
FROM customers
-- WHERE last_name REGEXP 'field'
-- WHERE last_name REGEXP 'field$'
-- WHERE last_name REGEXP 'field$|mac|ey$'
-- WHERE last_name REGEXP '[abcd]e'
WHERE last_name REGEXP '[a-h]e'

-- ^ start of  a string ( must start with that string )
-- $ end of a string ( must end with that string )
-- | Logical or
-- [a-h] range of characters

