select * from employee
left join project
on employee.eid=project.eid
Union
select * from employee
right join project
on employee.eid=project.eid;

-- Combines the results of LEFT JOIN and RIGHT JOIN using UNION.
-- Displays all employees and projects, including matching and non-matching records from both tables.
