
create table clonetable as select * from customer;
desc clonetable;
select * from clonetable;
drop table clonetable;

/*These queries demonstrate how to clone a table using CREATE TABLE AS SELECT, view its structure and data, and delete it using DROP TABLE.*/
