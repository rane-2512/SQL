-- Creates the emp6 table with employee details.
CREATE TABLE emp6 (
    empid INT PRIMARY KEY,
    fname VARCHAR(10),
    lname VARCHAR(10),
    age INT,
    salary INT
);

-- Adds a CHECK constraint: age must be above 20 and salary at least 5000.
ALTER TABLE emp6
ADD CONSTRAINT chk_const CHECK(age > 20 AND salary >= 5000);

-- Displays the structure of the emp6 table.
DESC emp6;
