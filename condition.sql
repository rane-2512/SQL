-- Creates a Student table with constraints.
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,       -- Ensures each student has a unique roll number
    Name VARCHAR(50) NOT NULL,    -- Name cannot be NULL
    Age INT CHECK (Age >= 18),    -- Age must be 18 or above
    Email VARCHAR(100) UNIQUE,    -- Email must be unique
    City VARCHAR(50) DEFAULT 'Pune' -- Sets Pune as the default city
);
