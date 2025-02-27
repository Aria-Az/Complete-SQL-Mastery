-- Parameterswith default value
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))

BEGIN 
    IF state IS NULL THEN
		SET state = 'CA';
	END IF;
    
	SELECT *
    FROM clients c
    WHERE c.state = state;
END$$

DELIMITER ;

-- and if we want to return all the customer for null input value, we do this :
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))

BEGIN 
    IF state IS NULL THEN
		SELECT * FROM clients;
	ELSE
		SELECT * FROM clients c
		WHERE c.state = state;
	END IF;
    
END$$

DELIMITER ;

-- a better approach for previous example :
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))

BEGIN 
	SELECT * FROM clients c
	WHERE c.state = IFNULL(state, c.state);
END$$

DELIMITER ;




CALL get_clients_by_state(NULL) -- Returns CA
CALL get_clients_by_state() -- Returns error