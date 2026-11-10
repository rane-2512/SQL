-- Create Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT
);

-- Create Courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- Insert student records
INSERT INTO students VALUES
(1, 'Asha', 101),
(2, 'Ravi', 102),
(3, 'Meera', 103),
(4, 'Rahul', NULL),
(5, 'Priya', 105);

-- Insert course records
INSERT INTO courses VALUES
(101, 'Python'),
(102, 'Java'),
(103, 'SQL'),
(104, 'Data Science');

-- 1. INNER JOIN: Only matching records
SELECT s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id;

-- 2. LEFT JOIN: All students and matching courses
SELECT s.name, c.course_name
FROM students s
LEFT JOIN courses c
ON s.course_id = c.course_id;

-- 3. RIGHT JOIN: All courses and matching students
SELECT s.name, c.course_name
FROM students s
RIGHT JOIN courses c
ON s.course_id = c.course_id;

-- 4. FULL OUTER JOIN: All records from both tables
SELECT s.name, c.course_name
FROM students s
LEFT JOIN courses c
ON s.course_id = c.course_id

UNION

SELECT s.name, c.course_name
FROM students s
RIGHT JOIN courses c
ON s.course_id = c.course_id;

-- 5. CROSS JOIN: All possible combinations
SELECT s.name, c.course_name
FROM students s
CROSS JOIN courses c;

-- 6. SELF JOIN: Example using employee table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee VALUES
(1, 'Asha', NULL),
(2, 'Ravi', 1),
(3, 'Meera', 1),
(4, 'Rahul', 2);

SELECT e.emp_name AS Employee,
       m.emp_name AS Manager
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id;
