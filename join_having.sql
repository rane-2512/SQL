-- Find employees whose total project hours exceed 100
SELECT
    e.emp_name,
    SUM(ep.hours_worked) AS total_hours
FROM employees e
INNER JOIN employee_projects ep
    ON e.emp_id = ep.emp_id
GROUP BY e.emp_id, e.emp_name
HAVING SUM(ep.hours_worked) > 100;
