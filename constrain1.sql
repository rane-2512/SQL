ALTER TABLE Student
ADD CONSTRAINT check_age CHECK (Age >= 18);

INSERT INTO Student (RollNo, Name, Age, Email, City)
VALUES (1, 'Rahul', 20, 'rahul@gmail.com', 'Mumbai');

ALTER TABLE Student
ADD CONSTRAINT unique_email UNIQUE (Email);

INSERT INTO Student (RollNo, Name, Age, Email)
VALUES (2, 'Amit', 16, 'amit@gmail.com');
