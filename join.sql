```sql
-- Create a new database
CREATE DATABASE basicjoin;

-- Select the database
USE basicjoin;

-- Create the employee table
CREATE TABLE employee (
    eid INT PRIMARY KEY,
    ename VARCHAR(30)
);

-- Display the table structure
DESC employee;

-- Insert employee records
INSERT INTO employee VALUES (1, "ram");
INSERT INTO employee VALUES (2, "shyam");
INSERT INTO employee VALUES (3, "radha");
INSERT INTO employee VALUES (4, "tanvi");
INSERT INTO employee VALUES (5, "mohan");

-- Display all employees
SELECT * FROM employee;

-- Create the project table with a foreign key
CREATE TABLE project (
    pid INT PRIMARY KEY,
    pname VARCHAR(30),
    eid INT,
    FOREIGN KEY (eid) REFERENCES employee(eid)
);

-- Display the project table structure
DESC project;

-- Insert project records
INSERT INTO project VALUES
(101, "database", 1),
(102, "project b", 2),
(103, "project c", 1),
(104, "project d", 3);

-- Display all projects
SELECT * FROM project;

-- Insert more projects, including one without an assigned employee
INSERT INTO project VALUES
(105, "project e", 4),
(106, "project t", NULL);

-- Display updated project records
SELECT * FROM project;

-- INNER JOIN: Display employees and their matching projects
SELECT *
FROM employee
INNER JOIN project
ON employee.eid = project.eid;
```
