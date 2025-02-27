-- Third Normal Form (3NF)

-- Codd's definition states that a table is in 3NF if and only if
-- both of the following conditions hold:

-- 1- The relation R (table) is in second normal form (2NF).
-- 2- No non-prime attribute of R is transitively dependent on the primary key.

-- More simple : A column in a table should not be derived from other columns.
-- for example we dont need full_name because we can get it by combing first_name and last_name together.