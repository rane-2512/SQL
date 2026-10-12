insert into orders values(101,'geeta','pending');
insert into orders values(102,'ram','pending');
select * from orders;
rollback;
select * from orders;
