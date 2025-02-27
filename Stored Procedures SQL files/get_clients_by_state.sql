CREATE DEFINER=`root`@`localhost` PROCEDURE `get_clients_by_state`(state CHAR(2))
BEGIN 
	SELECT * FROM clients c
	WHERE c.state = IFNULL(state, c.state);
END