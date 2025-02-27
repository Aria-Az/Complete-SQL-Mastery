-- deleting rows

-- DELETE FROM invoices -- DELETE WHOLE RECORDS

DELETE FROM invoices -- DELETE WHOLE RECORDS
WHERE clinent_id = 
				(SELECT *
				FROM clients
				WHERE name = 'Myworks')