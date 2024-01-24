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

/*
Q7. You have a table named "Orders" with columns: 
OrderID (int), CustomerID (int), OrderDate (date), and 
TotalAmount (decimal). Create a foreign key constraint on the
"CustomerID" column referencing the "Customers" table.
*/

CREATE TABLE Orders(
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    CONSTRAINT FK_CustomerID
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

/*
Q8. Create a table named "Employees" with columns:
EmployeeID (int) as the primary key.
FirstName (varchar) not null.
LastName (varchar) not null.
Salary (decimal) check constraint to ensure salary is between 20000 and 100000.
*/

CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(80) NOT NULL,
    LastName VARCHAR(80) NOT NULL,
    Salary DECIMAL(10,2) CHECK (Salary BETWEEN 20000 and 100000)
);

/*
Q9. Create a table named "Books" with columns:
BookID (int) as the primary key.
Title (varchar) not null.
ISBN (varchar) unique.
*/

CREATE TABLE Books(
    BookID INT PRIMARY KEY,
    Title VARCHAR(80) NOT NULL,
    ISBN VARCHAR(80) UNIQUE
);


/*
Q10. Consider a table named "Employees" with columns: EmployeeID, FirstName,
LastName, and Age. Write an SQL query to retrieve the first name and last name of
employees who are older than 30
*/

-- Adding Age column to pre-exist Employees TABLE
ALTER TABLE Employees
ADD Age INT;

-- Inserting some random values to Employees TABLE
INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary, Age) 
VALUES 
(1, 'Shivcharan', 'Das', 45000.00, 32),
(2, 'Krish', 'Naik', 60000.00, 35),
(3, 'Rohit', 'Kapoor', 75000.00, 42),
(4, 'Ekta', 'Dubey', 95000.00, 36),
(5, 'Shailja', 'Mishra', 80000.00, 23),
(6, 'Hariharan', 'S', 65000.00, 25),
(7, 'Aman', 'Gupta', 90000.00, 45),
(8, 'Arpit', 'Dubey', 90800.00, 26),
(9, 'Shreya', 'Richharia', 42000.00, 27),
(10, 'Sudhanshu', 'Kumar', 30000.00, 40);

-- SQL query to retrieve the first name 
-- and last name of employees who are older than 30

SELECT FirstName, LastName
FROM Employees
WHERE Age > 30

/*
Q11. Using the same "Employees" table, write an SQL query to retrieve the first name, last
name, and age of employees whose age is between 20 and 30
*/

SELECT FirstName, LastName, Age
FROM Employees
WHERE Age BETWEEN 20 and 30;