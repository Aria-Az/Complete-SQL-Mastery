-- Functions

-- Function are like stored procedures but the difference is : the functions only can return a single value

-- right click on functions and select create function
-- CREATE FUNCTION get_risk_factor_for_client (client_id INT)
-- RETURNS INTEGER
-- -- DETERMINISTIC -- we have to set the attribute of a function, DETERMINISTIC means it always return same output for same input
-- READS SQL DATA  -- it means Using SELECT for reading data
-- -- MODIFIES SQL DATA    -- it means we can update data

-- BEGIN
-- 	DECLARE risk_factor DECIMAL(9,2) DEFAULT 0;
-- 	DECLARE invoices_total DECIMAL(9,2);
-- 	DECLARE invoices_count INT;
-- 				
-- 	SELECT COUNT(*), SUM(invoice_total)
-- 	INTO invoices_count, invoices_total
-- 	FROM invoices i
--     WHERE i.client_id = client_id;
--     
-- 	SET risk_factor = invoices_total / invoices_count * 5;
-- 	RETURN risk_factor;
-- END

SELECT client_id, name, get_risk_factor_for_client(client_id) AS risk_factor
FROM clients

-- DROP FUNCTION IF EXISTS get_risk_factor_for_client -- for dropping function

