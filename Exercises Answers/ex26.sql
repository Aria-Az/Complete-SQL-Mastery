-- in sql_hr datbase : find employees whose earn more than average

SELECT *
FROM employees
WHERE salary >= (SELECT AVG(salary)
                 FROM employees
 )