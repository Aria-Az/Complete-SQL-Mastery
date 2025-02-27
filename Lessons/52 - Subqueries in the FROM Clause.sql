-- Subqueries in the FROM Clause

SELECT *
FROM (

	SELECT client_id, name,
	(SELECT SUM(invoice_total)
		FROM invoices
		WHERE client_id = c.client_id) AS total_sales,
	(SELECT AVG(invoice_total) FROM invoices) AS average,
	(SELECT total_sales - average) AS difference
	FROM clients c

) AS sales_summary  -- we have to give it a name either we use it or not
WHERE total_sales IS NOT NULL

-- We can use subqueries in FROM clause but its better to do it for simple queries - Later on we Learn about saving a table as view
