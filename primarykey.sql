CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

-- Correct values
INSERT INTO Student VALUES (1, 'Tanvi', 18, 'Pune');
INSERT INTO Student VALUES (2, 'Priya', 19, 'Mumbai');
INSERT INTO Student VALUES (3, 'Rahul', 20, 'Nashik');

-- Error: Duplicate primary key (StudentID = 1)
INSERT INTO Student VALUES (1, 'Amit', 21, 'Delhi');

-- Error: NULL primary key
INSERT INTO Student VALUES (NULL, 'Sneha', 18, 'Pune');

select * from student;
-- display all values

