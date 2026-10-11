CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

INSERT INTO Department VALUES (1, 'Computer');
INSERT INTO Department VALUES (2, 'IT');
INSERT INTO Department VALUES (3, 'Mechanical');

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Student VALUES (101, 'Tanvi', 1);
INSERT INTO Student VALUES (102, 'Priya', 2);
INSERT INTO Student VALUES (103, 'Rahul', 3);

SELECT * FROM Student;
