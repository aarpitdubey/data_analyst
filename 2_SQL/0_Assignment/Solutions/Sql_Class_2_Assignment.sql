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

/*
Q4. Retrieve the first names and ages of all students who are older than 20.
*/

-- Retrieving the `FirstName` and `Age` of all students
-- NO CONDITION 
SELECT FirstName, Age
FROM Students

-- Retrieving the `FirstName` and `Age` of all students
-- CONDITION WHERE Age > 20
SELECT FirstName, Age
FROM Students

-- Inserting more values
INSERT INTO Students(StudentID, FirstName, LastName, Age)
VALUES (4, "Rahul", "Kumar", 12),
       (5, 'Alice', 'Smith', 25),
       (6, 'Bob', 'Johnson', 15),
       (7, 'Eva', 'Martinez',16),
       (8, 'Hariharan', 'S', 26);

-- Q5. Delete records from the same table where age < 18
DELETE FROM Students
WHERE Age < 18;

/*
Q6. Create a table named "Customers" with the following columns and constraints:
CustomerID (int) as the primary key.
FirstName (varchar) not null.
LastName (varchar) not null.
Email (varchar) unique.
Age (int) check constraint to ensure age is greater than 18.
*/

CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(60) NOT NULL,
    LastName VARCHAR(60) NOT NULL,
    Email VARCHAR(80) UNIQUE,
    Age INT CHECK (Age > 18)
);