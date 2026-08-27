DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create Employee table

-- Insert records

-- COUNT()

-- MAX()

-- MIN()

-- AVG()
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Department, Salary)
VALUES 
    (1, 'Alice', 'Smith', 'HR', 60000.00),
    (2, 'Bob', 'Johnson', 'IT', 85000.00),
    (3, 'Charlie', 'Brown', 'IT', 90000.00),
    (4, 'Diana', 'Prince', 'Marketing', 75000.00),
    (5, 'Evan', 'Wright', 'Sales', 65000.00);

SELECT COUNT(Salary) AS TotalSalaries 
FROM Employee;

SELECT MAX(Salary) AS HighestSalary 
FROM Employee;

SELECT MIN(Salary) AS LowestSalary 
FROM Employee;

SELECT AVG(Salary) AS AverageSalary 
FROM Employee;
