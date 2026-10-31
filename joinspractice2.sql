-- Show all employees, including those without projects
SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN employee_projects ep
    ON e.emp_id = ep.emp_id
LEFT JOIN projects p
    ON ep.project_id = p.project_id;
