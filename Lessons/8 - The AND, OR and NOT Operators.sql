SELECT *
FROM customers
-- WHERE birth_date >= '1990-01-01' OR (points > 1000 AND state = 'VA')
WHERE NOT (birth_date >= '1990-01-01' OR (points > 1000 AND state = 'VA'))

-- Firt AND then OR