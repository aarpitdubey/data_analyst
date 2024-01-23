-- Q1. Create Database as SQL practice and use it for further questions.
CREATE DATABASE Sql_Class_2_Assignment;

-- Use this database
USE Sql_Class_2_Assignment;

/*
Q2. Create a table named "Students" with the following columns: 
StudentID (int), FirstName (varchar), LastName (varchar), 
and Age (int). 
Insert at least three records into the table. 
*/

CREATE TABLE Students(
    StudentID INT,
    FirstName VARCHAR(60),
    LastName VARCHAR(60),
    Age INT
);

-- Insert 3 records randomly
INSERT INTO Students(StudentID, FirstName, LastName, Age) 
VALUES (1, "Arpit", "Dubey", 25),
       (2, "Shaija", "Mishra", 23),
       (3, "Spider", "Man", 29);

/*
Q3. Update the age of the student with StudentID `1` to `21`. 
Delete the student with StudentID `3` from the "Students" table.
*/

-- UPDATE the age of the student with StudentID is equal to 1.
UPDATE Students
SET Age = 21
WHERE StudentID = 1;

-- DELETE students record WHERE StudentID is equal to 3.
DELETE FROM Students
WHERE StudentID = 3;

