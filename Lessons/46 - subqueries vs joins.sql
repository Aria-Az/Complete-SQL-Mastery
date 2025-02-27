-- subqueries VS JOINs - the below query will return the same result from previous example
-- which approach is better : the one that runs faster and is more readable, we dont compare execution speed right now but
-- for the readability in this case, the subquery is better to understand.

-- find clients without invoices

SELECT *
FROM clients
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL

-- ex27 query :
-- find clients without invoices

-- USE sql_invoicing;

-- SELECT *
-- FROM clients
-- WHERE client_id NOT IN ( SELECT DISTINCT client_id
--                       FROM invoices)