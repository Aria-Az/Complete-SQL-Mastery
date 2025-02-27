-- find products that are more expensice than lettuce ( id = 3 )
SELECT *
FROM products
WHERE unit_price > ( SELECT unit_price
					FROM products
                    WHERE product_id = 3 )
                    
-- NOTE : First the inner query runs then the outter query 