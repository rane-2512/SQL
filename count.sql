select fname,count(empid) from emp6
group by fname 
having count(empid)>=1
order by count(empid) desc;
select * from emp6;
