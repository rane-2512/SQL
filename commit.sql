
create table orders(oid int primary key,cname varchar(100),status varchar(50));
desc orders;

insert into orders values(101,'geeta','pending');
insert into orders values(102,'ram','pending');
select * from orders;
commit;
rollback;
select * from orders;

/*These queries demonstrate TCL commands in SQL. COMMIT permanently saves changes,
while ROLLBACK undoes uncommitted changes. Since COMMIT is executed first, ROLLBACK will not undo those inserted records.*/
