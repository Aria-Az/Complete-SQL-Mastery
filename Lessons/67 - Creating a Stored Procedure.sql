-- Creating a Stored Procedure

DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients; -- In MYsql we have to terminate each statement using ;. it might be different in other DBSM 
END$$

DELIMITER ;

-- in sql server we dont need to change the default  delimiter 

CALL get_clients()
