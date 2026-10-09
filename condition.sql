CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 18),
    Email VARCHAR(100) UNIQUE,
    City VARCHAR(50) DEFAULT 'Pune'
);
