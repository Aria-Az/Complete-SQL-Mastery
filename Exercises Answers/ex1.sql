-- return all prodects 
-- name, unit_price, unit_price * 1.1 called new_price

SELECT name, unit_price, (unit_price * 1.1) AS new_price
FROM products