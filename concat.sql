-- Combines first name and last name with a space.
select concat(cname,' ',lname) from customer;

-- Combines first name and last name and displays the result as fullname.
select concat(cname,' ',lname) as fullname from customer;
