select e.ename,p.pname from project as p
inner join employee e
on e.eid=p.eid;
