select fname,count(empid) from emp6
group by fname 
having count(empid)>=1
order by count(empid) desc;
select * from emp6;

-- Groups employees by first name and counts employees in each group.
-- Displays groups with at least one employee, sorted by count in descending order.
