-- Output Parameters

DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_client;

DELIMITER $$

CREATE PROCEDURE get_unpaid_invoices_for_client(client_id INT,
OUT invoices_count INT,
OUT invoices_total DECIMAL (9,2)) 
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
	FROM invoices i
	WHERE i.client_id = client_id AND payment_total = 0;
END$$

DELIMITER ;


-- CALL get_unpaid_invoices_for_client(2)
-- CALL get_unpaid_invoices_for_client(3)

for seeing results click on get_unpaid_invoices_for_client and set client_id 1 and dont enter
any value for others

-- MOSH noted that its better to avoid Output Parameters unless its really needed




