-- Second Normal Form (2NF)

-- From wikipedia -> Second normal form (2NF), in database normalization, is a normal form. A relation is in
-- the second normal form if it fulfills the following two requirements:

-- 1- It is in first normal form.
-- 2- It does not have any non-prime attribute that is functionally dependent
-- on any proper subset of any candidate key of the relation (i.e. it lacks partial dependencies).
-- A non-prime attribute of a relation is an attribute that is not a part of any candidate key of the relation.

-- More simple :
-- Every table should describe one entity, and every column in that table should 
-- describe that entity.

-- example : dont use customer_name in orders table (took screenshot at -> 3:32)
-- also instructor doesn't belong to courses table -> makes instructors table