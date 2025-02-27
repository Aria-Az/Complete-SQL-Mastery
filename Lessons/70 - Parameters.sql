-- Parameters

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2)) -- 'VA' or 'NY' for example - also
-- we can can change the state to state_param for example if we dont use pre-fixed in line 11
BEGIN 
	SELECT *
    FROM clients c
    WHERE c.state = state;
END$$

DELIMITER ;


CALL get_clients_by_state('CA') -- if we dont supply a value we get an error