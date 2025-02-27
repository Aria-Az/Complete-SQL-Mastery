-- JSON Type

-- JSON : Lightweight format for storing and transferring data over the internet

-- JSON :
-- {
--     "key": value
-- }

UPDATE products
SET properties = '
{
   "dimensions": [1,2,3],
   "weight": 10,
   "manufacturer": {"name": "sony"}
}
'
WHERE product_id = 1;


-- another way to create JSON :
UPDATE products
SET properties = JSON_OBJECT('weight', 10, 'dimensions', JSON_ARRAY(1, 2, 3),
							'manufacturer', JSON_OBJECT('name', 'sony') )
WHERE product_id = 1;


SELECT product_id, JSON_EXTRACT(properties, '$.weight') AS weight
FROM products
WHERE product_id = 1;

-- another way :
SELECT product_id, properties -> '$.dimensions[0]'   -- column pass operator (->)
FROM products
WHERE product_id = 1;

SELECT product_id, properties -> '$.manufacturer.name' 
FROM products
WHERE product_id = 1;

SELECT product_id, properties ->> '$.manufacturer.name'  -- no more quotation
FROM products
WHERE product_id = 1;

SELECT product_id, properties ->> '$.manufacturer.name' 
FROM products
WHERE properties ->> '$.manufacturer.name' = 'sony';

-- Updating JSON :
UPDATE products
SET properties = JSON_SET(
	properties,
    '$.weight', 20,
    '$.age', 10
)
WHERE product_id = 1;


-- removing from JSON :
UPDATE products
SET properties = JSON_REMOVE(
	properties,
    '$.age'
)
WHERE product_id = 1;



