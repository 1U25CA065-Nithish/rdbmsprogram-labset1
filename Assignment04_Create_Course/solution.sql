DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create Course table

-- Insert three records

-- Display structure
CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(30),
    Credits INT,
    DepartmentID INT
);

INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID) 
VALUES 
    (101, 'Database Management', 4, 1),
    (102, 'Data Structures', 4, 1),
    (103, 'Operating Systems', 3, 2);

DESCRIBE Course;
