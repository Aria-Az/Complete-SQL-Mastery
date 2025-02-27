CREATE DEFINER=`root`@`localhost` PROCEDURE `get_clients`()
BEGIN
	SELECT * FROM clients; -- In MYsql we have to terminate each statement using ;. it might be different in other DBSM 
END