-- do a cross join between shippers and products using the implicit syntax and the using the explicit syntax

-- SELECT sh.name AS shipper, p.name as product
-- FROM shippers sh, products p
-- ORDER BY shipper

SELECT sh.name AS shipper, p.name as product
FROM shippers sh
CROSS JOIN products p
ORDER BY shipper