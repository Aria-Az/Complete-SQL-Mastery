-- Dropping procedures

DROP PROCEDURE IF EXISTS get_clients;

DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN 
	SELECT *
    FROM clients;
END$$

DELIMITER ;
