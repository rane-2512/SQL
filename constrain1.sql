-- Adds a CHECK constraint to ensure age is 18 or above.
ALTER TABLE Student
ADD CONSTRAINT check_age CHECK (Age >= 18);

-- Inserts student details into the Student table.
INSERT INTO Student (RollNo, Name, Age, Email, City)
VALUES (1, 'Rahul', 20, 'rahul@gmail.com', 'Mumbai');

-- Adds a UNIQUE constraint to prevent duplicate email addresses.
ALTER TABLE Student
ADD CONSTRAINT unique_email UNIQUE (Email);

-- Attempts to insert a student with age 16; fails because of the age constraint.
INSERT INTO Student (RollNo, Name, Age, Email)
VALUES (2, 'Amit', 16, 'amit@gmail.com');
