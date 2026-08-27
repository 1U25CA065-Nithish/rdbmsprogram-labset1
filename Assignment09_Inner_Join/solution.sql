DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;


-- Create Department

-- Create Student

-- Insert sample records

-- INNER JOIN query
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
    (101, 'Computer Science'),
    (102, 'Mechanical Engineering'),
    (103, 'Business Administration');

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
    (1, 'Aarav Sharma', 101),
    (2, 'Priya Patel', 101),
    (3, 'Rahul Verma', 102),
    (4, 'Sneha Rao', 103),
    (5, 'Karthik Nair', 102);

SELECT 
    Student.StudentName AS 'Student Name', 
    Department.DepartmentName AS 'Department Name'
FROM 
    Student
INNER JOIN 
    Department ON Student.DepartmentID = Department.DepartmentID
ORDER BY 
    Student.StudentID;
