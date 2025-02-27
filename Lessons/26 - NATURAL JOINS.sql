-- NATURAL JOIN ( easier to code and its dangerous because we let the machine to search and decid the same column - may produce unexpected results )

SELECT o.order_id, c.first_name
FROM orders o
NATURAL JOIN customers c 