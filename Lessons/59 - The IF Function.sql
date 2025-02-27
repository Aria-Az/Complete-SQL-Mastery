-- The IF Function

-- we did this before by UNION but now we want to use IF to write less code

IF(expression, first, second) -- if true it returns first value else it returns second value

SELECT order_id, order_date,
IF(YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') AS category
FROM orders
