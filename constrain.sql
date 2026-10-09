create table emp6(empid int primary key,fname varchar(10),lname varchar(10),age int,salary int);
alter table emp6 add constraint chk_const check(age>20 and salary>=5000);
desc emp6;
