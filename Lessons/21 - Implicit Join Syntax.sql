-- SELECT *
-- FROM orders o
-- JOIN customers c ON c.customer_id = o.customer_id

-- implicit join syntax : ( suggest not to use )
SELECT *
FROM orders o, customers c
WHERE c.customer_id = o.customer_id  -- if we accidently forget to use WHERE then we will get cross join

