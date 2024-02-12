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

/*
Question 5: How can you select all cities 
that start with 'New' followed by any characters?
*/
-- to view table
SELECT *
FROM `sql_class_3_assignment`.`phone_directory`;

-- Solution
SELECT `first_name`, `last_name`, `company_name`, `city`, `phone`
FROM `phone_directory`
WHERE `city` LIKE 'new%';

/*
Question 6: How do you find all records where the value in the
'description' column contains either 'apple' or 'orange'?
*/

-- To view the table
SELECT *
FROM `sql_class_3_assignment`.`food_inventory`;

-- Solution
SELECT *
FROM `food_inventory`
WHERE `description` LIKE '%apple%' OR `description` LIKE '%orange%';

/*
Question 7:How can you retrieve all email addresses 
that follow the pattern of "user@domain.com"?
*/

-- To view TABLE

SELECT *
FROM `sql_class_3_assignment`.`phone_directory`;

-- Solution
SELECT `email`
FROM `phone_directory`
WHERE email LIKE '%@%.com'

/*
Question 8: How do you find all records where the 'product_code' 
is exactly four characters long and consists of letters and digits?
*/

-- to view the TABLE
SELECT *
FROM `sql_class_3_assignment`.`product`;

-- Solution
SELECT *
FROM `product`
WHERE `product_code` REGEXP '^[a-zA-Z0-9]{4}$'

/*
Question 9:How can you retrieve all phone numbers 
that match the pattern '###-###-####'?
*/

-- To view the table
SELECT *
FROM `contacts`;

-- Solution
SELECT `phone_number`
FROM `contacts`
WHERE `phone_number` REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$'

/*
Question 10:How do you find all records where the 'text' 
column contains two consecutive digits?
*/

-- To view the table
SELECT *
FROM `sql_class_3_assignment`.`corpus`;

-- Solution
SELECT *
FROM `corpus`
WHERE `text` REGEXP '[0-9]{2}';

--------------------------- NULL VALUES ----------------------------------------

/*
Question 1: Find all employees whose birthdates are not 
recorded (NULL).
*/

-- To view the table
SELECT *
FROM `sql_class_3_assignment`.`employees`;

-- Solution
SELECT *
FROM `employees`
WHERE `birthdate` IS NULL;

/*
Question 2: List all orders that don't have 
a customer assigned (NULL customerID).
*/

-- To view the table customers
SELECT * 
FROM `sql_class_3_assignment`.`customers`;

-- Solution
SELECT `Order`, `OrderID`, `Country`
FROM `customers`
WHERE `CustomerID` IS NULL;















.