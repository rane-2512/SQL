-- Join the employees table to itself to find managers
SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.emp_id;
