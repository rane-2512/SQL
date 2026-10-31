-- Display employees with their department details
SELECT
    e.emp_name,
    d.dept_name,
    d.location
FROM employees e
INNER JOIN departments d
    ON e.dept_id = d.dept_id;
