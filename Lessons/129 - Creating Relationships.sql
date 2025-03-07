-- Creating Relationships

CREATE DATABASE IF NOT EXISTS sql_store2;
USE sql_store2;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;   -- first drop orders then customers because customers is a part of a relationship, orders depends on customers

CREATE TABLE IF NOT EXISTS customers
(

	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    points INT NOT NULL DEFAULT 0,
    email VARCHAR(50) NOT NULL UNIQUE);


CREATE TABLE orders 
(
	order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    FOREIGN KEY fk_orders_customers (customer_id)
		REFERENCES customers (customer_id)
        ON UPDATE CASCADE     -- SET NULL , NO ACTION
        ON DELETE NO ACTION  
);
