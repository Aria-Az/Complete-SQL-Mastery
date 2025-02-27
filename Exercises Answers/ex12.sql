-- Multiple joining
USE sql_invoicing;

SELECT p.date, p.invoice_id, p.amount, c.name, pm.name
FROM payments p
JOIN clients c ON p.client_id = c.client_id
JOIN payment_methods pm ON pm.payment_method_id = p.payment_method
