select empid ,sum(age) as emp_age
from emp6 group by empid
having emp_age>=10 and emp_age<=30;

select empid ,sum(salary) as emp_sal
from emp6 group by empid
having emp_sal>=5000 and emp_sal<=15000;
