create database companys;
use companys;
create table employee(empid int Not Null,fname varchar(10),lname varchar(10),empage int);
Desc employee;
insert into employee(empid,fname,lname,empage) values
(1,'Ram','Rane',22),(2,Null,'raje',24);
select * from employee;

create table emp1(empid int Not Null,fname varchar(10),lname varchar(10),unique(empid));
Desc emp1;
insert into emp1 values(1,'rani','kumar');
insert into emp1 values(1,'rani','kumar');
insert into emp1 values(2,'rani','kumar');
select * from emp1;

create table emp3(empid int Not Null,fname varchar(10),lname varchar(10),empage int,check(empage>20));
desc emp3;
insert into emp3 values(2,'rani','kumar',15);
insert into emp3 values(2,'rani','kumar',21);
insert into emp3 values(1,'rani','kumar',20);
select * from emp3;

alter table emp3 add column salart int;
alter table emp3 add check(salart>=5000);
desc emp3;
select * from emp3;
update emp3 set salart=6000;

create table emp4(empid int primary key,fname varchar(10),lname varchar(10),empage int);
desc emp4;
insert into emp4 values(Null,'ram','kumar',22);
insert into emp4 values(1,'ram','kumar',22);
alter table emp4 add column salary int;
alter table emp4 add constraint chk_empage_salry check(empage>20 and salary>=5000);
desc emp4;
insert into emp4 values(2,'geeta','gore',13,4000);
insert into emp4 values(2,'geeta','gore',21,7000);
select * from emp4;

/*alter table emp4 drop check salary;*/

show create table emp4;
alter table emp4 drop check chk_empage_salry;
insert into emp4 values(8,'geeta','gore',10,4000);
select * from emp4;

create table emp5(empid int not null,fname varchar(10),lname varchar(10),empdept varchar(10) default 'operations');
desc emp5;
insert into emp5(empid,fname,lname) values(1,'geeta','gore');
select * from emp5;
