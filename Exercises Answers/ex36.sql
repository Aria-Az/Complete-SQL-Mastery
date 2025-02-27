-- creat a view to see balance for each client
-- clients_balance ( view name )
-- client_id, name, balance

CREATE VIEW clients_balance AS
SELECT c.client_id, name, SUM(invoice_total - payment_total) AS balance
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY c.client_id