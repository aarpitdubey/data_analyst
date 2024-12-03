SHOW DATABASES;
SHOW TABLES;

-- Creating a separate Database
CREATE DATABASE IF NOT EXISTS mysql_class;

-- Using/Selecting Database
USE mysql_class;

SELECT database();

-- Create a table student_table
CREATE TABLE IF NOT EXISTS student_table(
    student_id INT,
    student_name VARCHAR(30),
    course_name VARCHAR(100),
    email VARCHAR(50)
);

-- Select student table
SELECT * FROM `mysql_class`.`student_table`;

-- Creating a new table `employee`
CREATE TABLE IF NOT EXISTS employee(
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `department`, `salary`, `age`)
VALUES
    (1, 'Donald', 'Trump', 'Marketing', 55000.00, 30),
    (2, 'Jane', 'Smith', 'Finance', 60000.00, 40),
    (3, 'Arpit', 'Dubey', 'IT', 75000.00, 29),
    (4, 'David', 'Brown', 'HR', 45000.00, 35),
    (5, 'Vivek', 'Ramaswamy', 'Admin', 95000.00, 38);


SELECT * FROM `mysql_class`.`employee`;

-- To perform SQL commands for delete, truncate and drop we have to set SQL_SAFE_UPDATES to 0
SET SQL_SAFE_UPDATES = 0; -- Now not in SAFE Mode, one time thing to do

SELECT * 
FROM `mysql_class`.`employee` 
WHERE first_name = 'David';

-- Deleting a row from the table with a Condition that the first_name of employee should be David
DELETE 
FROM `mysql_class`.`employee` 
WHERE first_name = 'David';

SELECT * FROM `mysql_class`.`employee`;

-- Deleting a table 
DELETE
FROM `mysql_class`.`employee`;

-- Truncating a table
TRUNCATE TABLE `employee`;

-- Drop the employee table
DROP TABLE `mysql_class`.`employee`;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS `employee`(
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20)
);

-- Checking if the employee table exists or not
SHOW TABLES;

-- Checking the data inside employee table
SELECT * FROM `employee`;

-- inserting data inside the employee table

INSERT INTO `employee` (first_name, middle_name, last_name, age, salary, location)
VALUES
    ('Arpit', 'Kumar', 'Dubey', 29, 80000, 'Hyderabad');

-- Checking the data inside employee table
SELECT * FROM `employee`;

-- Altering the employee table modifying the column location and putting a DEFAULT constraint for the column.
ALTER TABLE `employee`
MODIFY COLUMN `location` VARCHAR(20)
DEFAULT 'Texas';

-- adding another row without giving data for the location column.

INSERT INTO `employee` (first_name, middle_name, last_name, age, salary)
VALUES
    ('Shreya', '', 'Richharia', 28, 100000);

-- Checking the data inside employee table
SELECT * 
FROM `mysql_class`.`employee`;

-- OPERATORS IN MYSQL

-- Arithmetic Operators
SELECT 10 + 5; -- Addition
SELECT 10 - 5; -- Subtraction
SELECT 10 * 5; -- Multiplication
SELECT 10 / 5; -- Division
SELECT 10 % 5; -- Modulus
SELECT 10 & 5; -- Bitwise AND 1010 & 0101 = 0000 = 0

SELECT 10 | 5; -- Bitwise OR 1010 | 0101 = 1111 = 15

SELECT 10 ^ 5; -- Bitwise exclusive OR (or) XOR 1010 ^ 0101 = 15

-- Trancate the data from employee table
TRUNCATE TABLE `employee`;

-- Inserting data into employee table
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `department`, `salary`, `age`)
VALUES
    (1, 'Donald', 'Trump', 'Marketing', 55000.00, 30),
    (2, 'Jane', 'Smith', 'Finance', 60000.00, 40),
    (3, 'Arpit', 'Dubey', 'IT', 75000.00, 29),
    (4, 'Shreya', 'Richharia', 'HR', 100000, 28),
    (5, 'Vivek', 'Ramaswamy', 'Admin', 95000.00, 38);

SELECT *
FROM `mysql_class`.`employee`;

-- Condition on age = 28
SELECT *
FROM `mysql_class`.`employee`
WHERE age = 28;

-- Condition where department is not 'Admin'

SELECT *
FROM `mysql_class`.`employee`
WHERE department!= 'Admin';

SELECT *
FROM `mysql_class`.`employee`
WHERE department <> 'Admin';;

-- Condition where salary < 60000 and age>28
-- AND
SELECT *
FROM `mysql_class`.`employee`
WHERE salary < 60000 AND age > 28;

-- Condition where department is 'HR' or employee's age less than 30
-- OR
SELECT *
FROM `mysql_class`.`employee`
WHERE department = 'HR' OR age < 30;

-- Condition where employees who are not in HR department
-- NOT
SELECT *
FROM `mysql_class`.`employee`
WHERE NOT department = 'HR';

-- Condition where employee's age is in between 25 and 35
-- between
SELECT *
FROM `mysql_class`.`employee`
WHERE age BETWEEN 25 AND 35;

-- Condition where employee's belong to department IT, HR and Finance
-- IN
SELECT *
FROM `mysql_class`.`employee`
WHERE department IN ('IT', 'HR', 'Finance');

-- Condition where employee's not belong to department IT, HR and Finance
-- NOT IN
SELECT *
FROM `mysql_class`.`employee`
WHERE department NOT IN ('IT', 'HR', 'Finance');

-- Create a new table 'customer' table
CREATE TABLE `customer` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE
);

-- Insert data into customer table
INSERT INTO `customer` (first_name, last_name, email, phone)
VALUES
    ('John', 'Doe', 'johndoe@example.com', '1234567890'),
    ('Jane', 'Smith', 'janesmith@example.com', '9876543210'),
    ('Michael', 'Johnson', 'michaeljohnson@example.com', '0987654321'),
    ('Sarah', 'Williams', 'sarahwilliams@example.com', '2345678901'),
    ('David', 'Brown', 'davidbrown@example.com', '3456789012');

SELECT * 
FROM `customer`;

INSERT INTO `customer` (first_name, last_name, email, phone)
VALUES
    ('Arpit', 'Dubey', 'aarpitdubey@gmail.com', NULL);

SELECT *
FROM `customer`;

-- Select where column phone having not null value
SELECT *
FROM `customer`
WHERE phone IS NOT NULL
ORDER BY id ASC;
