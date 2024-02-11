-- ASSIGNMENT - 3
-- PATTERN MATCHING --

USE `sql_class_3_assignment`;

-- general table view
SELECT *
FROM `sql_class_3_assignment`.`employees`


/* Question 1: How can you select all employees 
whose names start with the letter 'A'? */

SELECT *
FROM employees
WHERE FirstName LIKE 'A%';

/* Question 2: How do you find all products whose names 
contain the word 'phone' regardless of case?*/

-- View table products 
SELECT *
FROM `sql_class_3_assignment`.`products`;

-- Solution
SELECT `ProductID`, `ProductName`, `Price`
FROM products
WHERE ProductName LIKE '%phone%';




11


















.