CREATE DEFINER=`root`@`localhost` PROCEDURE `make_payment`(invoice_id INT, payment_amount DECIMAL(9,2), payment_date DATE)
BEGIN
    IF payment_amount <= 0 THEN
      SIGNAL SQLSTATE '22003' SET MESSAGE_TEXT = 'Invalid payment amount'; -- its like throwing an exception, search sqlstaet errors on google
	END IF;
	UPDATE invoices i
    SET i.payment_total = payment_amount,
    i.payment_date = payment_date
    WHERE i.invoice_id = invoice_id;
END