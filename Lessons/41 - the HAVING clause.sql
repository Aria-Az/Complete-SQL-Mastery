-- The HAVING clause

SELECT client_id, SUM(invoice_total) AS total_sale, COUNT(*) AS number_of_invoices
FROM invoices 
-- WHERE total_sale > 500 -- we can not use this line because at this point we didnt calculate the total_sale yet
GROUP BY client_id
HAVING total_sale > 500 AND number_of_invoices > 5

-- we use WHERE clause before grouping the data 
-- and we use HAVING clause after grouping the data
-- note : the HAVING columns must be included in SELECT part, BUT when using WHERE we can use any column whether we its in SELECT part or not