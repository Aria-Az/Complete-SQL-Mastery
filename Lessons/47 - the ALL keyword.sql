-- select invoices larger than all invoices client 3

-- firts method
-- SELECT *
-- FROM invoices 
-- WHERE invoice_total > (
-- 					SELECT MAX(invoice_total)
-- 					FROM invoices
-- 					WHERE client_id = 3 )

-- method with ALL ( both methods are good ):
SELECT *
FROM invoices 
WHERE invoice_total > ALL (
					SELECT invoice_total
					FROM invoices
					WHERE client_id = 3 )
