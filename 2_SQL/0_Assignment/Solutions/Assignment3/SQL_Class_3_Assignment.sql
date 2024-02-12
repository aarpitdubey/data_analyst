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

/*
    Question 3: How can you retrieve all email addresses from a table 
    that end with '.com'?
*/

-- To solve this firstly we have view our employee table

SELECT *
FROM `sql_class_3_assignment`.`employee`;

-- Retriving all email addresses from employee table 
--that ends with '.com'

SELECT `email`
FROM employee
WHERE email LIKE '%.com';

/*
Question 4: How do you find all phone numbers
that start with the area code '555'?
*/

-- Let's view the table amazon firstly,

SELECT *
FROM `sql_class_3_assignment`.`amazon`;

-- Half Solution 

SELECT `Phone Number`
FROM amazon
WHERE  `Phone Number` LIKE '555%';

-- Full Solution
SELECT `Phone Number`
FROM amazon
WHERE `Phone Number` LIKE '555%' OR `Phone Number` LIKE '(555)%';









11


















.