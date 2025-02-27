-- Using Triggers for Auditing
-- for Logging Changes - its good to create general audit tables

DELIMITER $$

DROP TRIGGER IF EXISTS payments_after_insert;

CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN 
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    
    INSERT INTO payments_audit
    VALUES (NEW.client_id, NEW.date, NEW.amount, 'Insert', NOW());
END $$

DELIMITER ;

INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1)

DELETE FROM payments 
WHERE payment_id = 11

