-- GROUP BY clause  ( pay attention to orders of clauses )

SELECT state, city, SUM(invoice_total) as total_sale
FROM invoices i
JOIN clients USING(client_id)
WHERE invoice_date >= '2019-07-01'
GROUP BY state, city
ORDER BY total_sale DESC
