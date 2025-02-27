-- Altering or Dropping Views

-- DROP VIEW sales_by_client -- method 1

-- method 2 :
CREATE OR REPLACE VIEW clients_balance AS
SELECT c.client_id, name, SUM(invoice_total - payment_total) AS balance
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY c.client_id



-- CREATE VIEW clients_balance AS
-- SELECT c.client_id, name, SUM(invoice_total - payment_total) AS balance
-- FROM clients c
-- JOIN invoices i USING (client_id)
-- GROUP BY c.client_id