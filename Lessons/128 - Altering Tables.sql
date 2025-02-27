-- Altering Tables

ALTER TABLE customers
	ADD last_name VARCHAR(50) NOT NULL AFTER first_name,   -- (use `first name` if the column name had space)
    ADD city VARCHAR(50) NOT NULL,
    MODIFY COLUMN first_name VARCHAR(55) DEFAULT '',  -- writing MODIFY COLUMN is optional
    DROP points
    ;  
