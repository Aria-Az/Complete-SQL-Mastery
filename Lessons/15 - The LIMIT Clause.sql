-- LIMIT

-- SELECT *
-- FROM customers
-- LIMIT 3

-- page 1: 1 - 3
-- page 2: 4 - 6
-- page 3: 7 - 9

SELECT *
FROM customers
-- LIMIT 6, 3     -- skip the first 6 rows then pick 3 records ( 6 is the offset )  
LIMIT 3 OFFSET 6  -- or we can use the OFFSET
