UPDATE orders
SET comments = ' Golden Customer'
WHERE customer_id IN
				(SELECT customer_id
                FROM customers
                WHERE points >= 3000)