-- Creates a database named companys and selects it for use.

CREATE DATABASE companys;
USE companys;

-- Creates an employee table with empid, fname, lname, and empage columns.
-- NOT NULL ensures empid cannot store NULL values.
-- Inserts employee records and displays all records from the table.

CREATE TABLE employee(
    empid INT NOT NULL,
    fname VARCHAR(10),
    lname VARCHAR(10),
    empage INT
);

DESC employee;

INSERT INTO employee(empid, fname, lname, empage) VALUES
(1, 'Ram', 'Rane', 22),
(2, NULL, 'raje', 24);

SELECT * FROM employee;


-- Creates emp1 with a UNIQUE constraint on empid.
-- UNIQUE prevents duplicate employee IDs from being inserted.

CREATE TABLE emp1(
    empid INT NOT NULL,
    fname VARCHAR(10),
    lname VARCHAR(10),
    UNIQUE(empid)
);

DESC emp1;

INSERT INTO emp1 VALUES(1, 'rani', 'kumar');
INSERT INTO emp1 VALUES(1, 'rani', 'kumar');
INSERT INTO emp1 VALUES(2, 'rani', 'kumar');

SELECT * FROM emp1;


-- Creates emp3 with a CHECK constraint requiring empage to be greater than 20.
-- Adds a salary column and a CHECK constraint requiring salary to be at least 5000.
-- Updates the salary of all existing records to 6000.

CREATE TABLE emp3(
    empid INT NOT NULL,
    fname VARCHAR(10),
    lname VARCHAR(10),
    empage INT,
    CHECK(empage > 20)
);

DESC emp3;

INSERT INTO emp3 VALUES(2, 'rani', 'kumar', 15);
INSERT INTO emp3 VALUES(2, 'rani', 'kumar', 21);
INSERT INTO emp3 VALUES(1, 'rani', 'kumar', 20);

SELECT * FROM emp3;

ALTER TABLE emp3 ADD COLUMN salart INT;
ALTER TABLE emp3 ADD CHECK(salart >= 5000);

DESC emp3;
SELECT * FROM emp3;

UPDATE emp3 SET salart = 6000;


-- Creates emp4 with empid as the PRIMARY KEY.
-- PRIMARY KEY does not allow NULL or duplicate values.
-- Adds a salary column and a CHECK constraint for age and salary.
-- Removes the named CHECK constraint and inserts a record that would
-- have violated the age and salary conditions before the constraint was removed.

CREATE TABLE emp4(
    empid INT PRIMARY KEY,
    fname VARCHAR(10),
    lname VARCHAR(10),
    empage INT
);

DESC emp4;

INSERT INTO emp4 VALUES(NULL, 'ram', 'kumar', 22);
INSERT INTO emp4 VALUES(1, 'ram', 'kumar', 22);

ALTER TABLE emp4 ADD COLUMN salary INT;

ALTER TABLE emp4
ADD CONSTRAINT chk_empage_salry
CHECK(empage > 20 AND salary >= 5000);

DESC emp4;

INSERT INTO emp4 VALUES(2, 'geeta', 'gore', 13, 4000);
INSERT INTO emp4 VALUES(2, 'geeta', 'gore', 21, 7000);

SELECT * FROM emp4;

-- Displays the SQL statement used to create the emp4 table.
SHOW CREATE TABLE emp4;

-- Removes the CHECK constraint named chk_empage_salry.
ALTER TABLE emp4 DROP CHECK chk_empage_salry;

-- Inserts a record without the removed age and salary restriction.
INSERT INTO emp4 VALUES(8, 'geeta', 'gore', 10, 4000);

SELECT * FROM emp4;


-- Creates emp5 with empid as NOT NULL.
-- Sets the default department to 'operations' when empdept is not provided.
-- Inserts an employee without specifying empdept to use the default value.

CREATE TABLE emp5(
    empid INT NOT NULL,
    fname VARCHAR(10),
    lname VARCHAR(10),
    empdept VARCHAR(10) DEFAULT 'operations'
);

DESC emp5;

INSERT INTO emp5(empid, fname, lname)
VALUES(1, 'geeta', 'gore');

SELECT * FROM emp5;
