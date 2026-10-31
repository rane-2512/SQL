
USE advanced_joins;

-- Create the departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Create the employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    manager_id INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Create the projects table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    budget DECIMAL(12,2)
);

-- Create a table to connect employees with projects
CREATE TABLE employee_projects (
    emp_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

-- Insert department records
INSERT INTO departments VALUES
(1, 'IT', 'Pune'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Delhi'),
(4, 'Marketing', 'Nashik');

-- Insert employee records
INSERT INTO employees VALUES
(101, 'Amit', 60000, NULL, 1),
(102, 'Priya', 45000, 101, 1),
(103, 'Rahul', 50000, 101, 2),
(104, 'Sneha', 70000, NULL, 3),
(105, 'Neha', 40000, 103, 2);

-- Insert project records
INSERT INTO projects VALUES
(201, 'Website Development', 200000),
(202, 'Mobile Application', 150000),
(203, 'Payroll System', 100000),
(204, 'Data Analytics', 250000);

-- Assign employees to projects
INSERT INTO employee_projects VALUES
(101, 201, 120),
(101, 202, 80),
(102, 201, 100),
(103, 203, 90),
(104, 204, 150);
