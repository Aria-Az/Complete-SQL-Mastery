CREATE DEFINER=`root`@`localhost` PROCEDURE `get_invoices_by_client`(client_id INT)
BEGIN 
	SELECT *
    FROM invoices i
    WHERE i.client_id = client_id;
END