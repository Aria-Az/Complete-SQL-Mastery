-- Write a stored prcedure called get_payments with two parameters
-- client_id => INT  -- 4 byte
-- payment_method_id => TINYINT -- 1 byte : can store 0 to 255

DROP PROCEDURE IF EXISTS get_payments;

DELIMITER $$

CREATE PROCEDURE get_payments(client_id INT, payment_method_id TINYINT) -- these are parameters
BEGIN
	SELECT * FROM payments p
    WHERE p.client_id = IFNULL(client_id, p.client_id) AND
    p.payment_method = IFNULL(payment_method_id, p.payment_method);
    
END$$

DELIMITER ;


CALL get_payments(NULL, NULL) -- -- these are arguments
CALL get_payments(5, 2)
CALL get_payments(5, 3)
CALL get_payments(NULL, 2)