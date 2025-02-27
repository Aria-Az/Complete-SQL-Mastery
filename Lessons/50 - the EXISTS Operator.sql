-- select clients that have an invoice
-- method 1 (un-correlated subquery) - this method could be slow:
-- SELECT *
-- FROM clients
-- WHERE client_id IN (
-- 					SELECT DISTINCT client_id              -- result from subquery is like (1,2,3,5), if the numbers ar a lot then the execution speed will be slow
--                     FROM invoices
-- )

-- method 2 (join and group by) :
-- SELECT *
-- FROM clients
-- JOIN invoices USING (client_id)
-- GROUP BY client_id

-- method 3 - correlated subquery:
SELECT *
FROM clients c
WHERE EXISTS (
				SELECT client_id 
				FROM invoices
                WHERE client_id = c.client_id
)

