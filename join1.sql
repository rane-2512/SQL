```sql
-- LEFT JOIN: Display employee names and their project names
SELECT employee.ename, project.pname
FROM employee
LEFT JOIN project
ON employee.eid = project.eid
-- Show only employees assigned to a project
WHERE project.eid IS NOT NULL;
```
