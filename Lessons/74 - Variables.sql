-- variables

-- User or session variables
SET @invoices_count = 0 -- it used for procedure's output variables

-- Local variable ( they dont stay in memories for entire user's session )

-- use create stord procedures button :
-- 		CREATE PROCEDURE get_risk_factor ()
-- 		BEGIN
-- 			DECLARE risk_factor DECIMAL(9,2) DEFAULT 0;
-- 			DECLARE invoices_total DECIMAL(9,2);
-- 			DECLARE invoices_count INT;
-- 			
-- 			SELECT COUNT(*), SUM(invoice_total)
-- 			INTO invoices_count, invoices_total
-- 			FROM invoices;
-- 			
-- 			SET risk_factor = invoices_total / invoices_count * 5;
-- 			-- risk_factor = invoices_total / invoices_count * 5
-- 			SELECT risk_factor;
-- 		END

-- The Local DECLARE are only meaningful in our stored procedure so after END, they go out of memory