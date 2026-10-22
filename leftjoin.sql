select e.eid,e.ename,p.pname from employee e
left join project p
on e.eid=p.eid;

/* matching data from noth table
all data from left table*/
