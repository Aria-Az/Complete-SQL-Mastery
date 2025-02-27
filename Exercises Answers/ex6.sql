-- get the customers whose addresses contain TRIAL or AVENUE
-- phone numbers end with 9

-- First ex
SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR address LIKE '%avenue%'

-- second ex
-- SELECT *
-- FROM customers
-- WHERE phone LIKE '%9'

-- extra 
-- SELECT *
-- FROM customers
-- WHERE phone NOT LIKE '%9'

