DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;
-- Create Marksheet table

-- Insert sample records

-- Display students with Marks > 80

-- Sort by Marks DESC
CREATE TABLE Marksheet (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(30),
    Marks INT
);

INSERT INTO Marksheet (StudentID, StudentName, Marks) 
VALUES 
    (101, 'Arun', 85),
    (102, 'Divya', 75),
    (103, 'Karthik', 92),
    (104, 'Priya', 88),
    (105, 'Rahul', 60);

SELECT * 
FROM Marksheet 
WHERE Marks > 80 
ORDER BY Marks DESC;
