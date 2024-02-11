-- ASSIGNMENT - 3
-- PATTERN MATCHING --

USE `sql_class_3_assignment`;

-- general table view
SELECT *
FROM `sql_class_3_assignment`.`employees`


-- Question 1: How can you select all employees whose names start with the letter 'A'?
SELECT *
FROM employees
WHERE FirstName LIKE 'A%';






















.