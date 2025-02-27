-- the ROLLUP Operator ( it sonly available in MYSql )
-- SELECT client_id, SUM(invoice_total) AS total_sales
-- FROM invoices i
-- GROUP BY client_id WITH ROLLUP

SELECT state, city, SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients USING (client_id)
GROUP BY state, city WITH ROLLUP
