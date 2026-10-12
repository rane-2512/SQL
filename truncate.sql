create table orders(oid int primary key,cname varchar(100),status varchar(50));
desc orders;

insert into orders values(101,'geeta','pending');
insert into orders values(102,'ram','pending');

truncate table orders;
