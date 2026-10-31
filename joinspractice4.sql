-- Show all projects, even if no employee is assigned
SELECT
    p.project_name,
    e.emp_name
FROM employees e
RIGHT JOIN employee_projects ep
    ON e.emp_id = ep.emp_id
RIGHT JOIN projects p
    ON ep.project_id = p.project_id;
