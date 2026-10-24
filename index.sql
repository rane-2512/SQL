select * from emp6;
create index demo on emp6(fname);
show indexes from emp6;
create index demo1 on emp6(fname,lname);
show indexes from emp6;

drop index demo on emp6;
show indexes from emp6;

-- Displays all records from emp6 and creates a single-column index on fname.
-- Creates a composite index on fname and lname, displays indexes, then drops the demo index and displays the remaining indexes.
