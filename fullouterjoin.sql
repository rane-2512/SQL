select * from employee
left join project
on employee.eid=project.eid
Union
select * from employee
right join project
on employee.eid=project.eid;
