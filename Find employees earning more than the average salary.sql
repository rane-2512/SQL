SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
-- to find emp who are earning more than average salary
