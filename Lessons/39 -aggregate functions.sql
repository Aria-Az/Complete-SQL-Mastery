-- agregate functions
-- MAX()
-- MIN()
-- AVG()
-- SUM()
-- COUNT()

SELECT MAX(invoice_total) AS highest, MIN(invoice_total) AS lowest, AVG(invoice_total) AS average, SUM(invoice_total * 1.1) AS total, 
-- 	   COUNT(invoice_total) AS number_of_invoices,
-- 	   COUNT(payment_date) AS count_of_payments,
--        COUNT(*) AS total_records,
       COUNT(DISTINCT client_id) AS total_records    -- the distinc doesnt count duplicates
FROM invoices
WHERE invoice_date > '2019-07-01'

-- SELECT MAX(payment_date) AS highest -- returns latest date
-- FROM invoices
