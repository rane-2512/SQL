select employee.ename,project.pname from employee 
left join project 
on employee.eid=project.eid
where project.eid is not null;
