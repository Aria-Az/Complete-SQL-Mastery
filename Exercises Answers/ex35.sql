-- we did this ex before but with UNION, now we can simplify it by using CASE

SELECT CONCAT(first_name, '  ', last_name) AS customer, points,
 CASE 
   WHEN points > 3000 THEN 'Gold' 
   WHEN points >= 2000 THEN 'Silver'
   ELSE 'Bronze'
 END AS category
FROM customers
