create database basicjoin;
use basicjoin;
create table employee(eid int primary key,ename varchar(30));
desc employee;
insert into employee values(1,"ram");
insert into employee values(2,"shyam");
insert into employee values(3,"radha");
insert into employee values(4,"tanvi");
insert into employee values(5,"mohan");

select * from employee;

create table project(pid int primary key,pname varchar(30),eid int,foreign key(eid) references employee(eid));
desc project;

insert into project values(101,"database",1),
(102,"project b",2),
(103,'project c',1),
(104,"project d",3);

select * from project;
insert into project values(105,"project e",4),(106,"project t",Null);
select * from project;

-- inner join

select * from employee
join project
on employee.eid=project.eid;
