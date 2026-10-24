select empid ,sum(age) as emp_age
from emp6 group by empid
having emp_age>=10 and emp_age<=30;

select empid ,sum(salary) as emp_sal
from emp6 group by empid
having emp_sal>=5000 and emp_sal<=15000;

-- Groups records by empid and calculates the total age for each employee.
-- Displays employees whose total age is between 10 and 30.

-- Groups records by empid and calculates the total salary for each employee.
-- Displays employees whose total salary is between 5000 and 15000.
