select empid,count(*) as emp_count
from emp6 group by empid;

-- Groups records by empid and counts the records in each group.
-- Displays each employee ID with its total count using the alias emp_count.
