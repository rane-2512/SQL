select e.eid,e.ename,p.pname from employee e
right join project p
on e.eid=p.eid;
