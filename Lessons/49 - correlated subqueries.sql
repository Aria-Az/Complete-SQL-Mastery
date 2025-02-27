-- select employees whose salary is above the average in their office

-- pseudo code solution : 
-- for each employee
-- calculate the avg salary for employee.office
-- retun the employee if salary > avg

-- NOTE :  correlated subquery gets executed for each row in the main query (so they can be slow ), in contrast from un-correlated subqueries
SELECT *
FROM employees e
WHERE salary > (
			SELECT AVG(salary)
			FROM employees
            WHERE office_id = e.office_id)