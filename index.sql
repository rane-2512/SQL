select * from emp6;
create index demo on emp6(fname);
show indexes from emp6;
create index demo1 on emp6(fname,lname);
show indexes from emp6;

drop index demo on emp6;
show indexes from emp6;
