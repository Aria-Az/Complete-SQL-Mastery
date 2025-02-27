-- Triggers :
-- A block of SQL code that automatically gets executed before and after an insert,
-- update or delete statement.
-- we use Triggers for data consistency

DELIMITER $$

DROP TRIGGER IF EXISTS payments_after_inset;

CREATE TRIGGER payments_after_insert
	-- AFTER/BEFORE UPDATE/INSERT/DELETE ON payments
	AFTER INSERT ON payments -- we can modify any table except payments, because we fall into an infinite loop
    FOR EACH ROW
BEGIN 
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount  -- NEW/OLD
    WHERE invoice_id = NEW.invoice_id;
END $$

DELIMITER ;

INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1)

