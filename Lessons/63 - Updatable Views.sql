-- WE can update the views they DONT have below clauses :
-- DISTINC
-- Aggregate Functions ( MIN,MAX,SUM)
-- GROPY BY / HAVING
-- UNION 

CREATE OR REPLACE VIEW invoices_with_balance AS
SELECT invoice_id, number, client_id, invoice_total, payment_total,
(invoice_total - payment_total) AS balance, invoice_date, due_date, payment_date
FROM invoices
WHERE (invoice_total - payment_total) > 0    --  we cant use balance, the sql will say there is no balance column


-- the above table is updatable


DELETE FROM invoices_with_balance
WHERE invoice_id = 1

UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2