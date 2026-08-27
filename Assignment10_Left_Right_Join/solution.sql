DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Create Course

-- Create Enrollment

-- Insert sample records

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

INSERT INTO Course (CourseID, CourseName) VALUES
    (101, 'Operating Systems'),
    (102, 'Computer Networks'),
    (103, 'Database Management');

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    CourseID INT
);

INSERT INTO Enrollment (EnrollmentID, StudentName, CourseID) VALUES
    (1, 'Vikram', 101),
    (2, 'Ananya', 101),
    (3, 'Surya', 102),
    (4, 'Meera', NULL);

SELECT 
    Enrollment.StudentName, 
    Course.CourseName
FROM 
    Enrollment
LEFT JOIN 
    Course ON Enrollment.CourseID = Course.CourseID;
SELECT 
    Enrollment.StudentName, 
    Course.CourseName
FROM 
    Enrollment
RIGHT JOIN 
    Course ON Enrollment.CourseID = Course.CourseID;
