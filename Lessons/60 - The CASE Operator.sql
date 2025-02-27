-- The CASE Operator 

-- SELECT order_id,
IF( YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') AS category
-- FROM orders


SELECT
	order_id,
	CASE 
		WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
		WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last year'
		WHEN YEAR(order_date) < YEAR(NOW()) - 1 THEN 'Archived'
		ELSE 'Future'
	END AS category
FROM orders
