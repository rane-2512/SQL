
create table orders(oid int primary key,cname varchar(100),status varchar(50));
desc orders;


-- insert few orders
insert into orders values(103,'radha','pending');
insert into orders values(104,'shanti','pending');
savepoint sp1; -- saved as savepoint
select * from orders;

-- update some record
update orders set status='shipped' where oid=103;
savepoint sp2; -- saved as savepoint
rollback to savepoint sp1; -- rollback to sp1
select * from orders;


-- delete operation
delete from orders where oid=102;
savepoint sp3;
select * from orders;
rollback to savepoint sp1;
select * from orders;
rollback; -- final rollback to last commit
select * from orders;
