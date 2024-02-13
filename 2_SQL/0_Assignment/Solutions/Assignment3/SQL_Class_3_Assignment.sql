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

--------------------------------------- NULL VALUES ----------------------------------------

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

------------------------------------ FUNCTIONS -------------------------------------

/* Consider a table named Sales with the following columns:

    SaleID (integer): The unique identifier for each sale.

    Product (string): The name of the product sold.

    Quantity (integer): The quantity of the product sold.

    Price (decimal): The price per unit of the product. */

/*
Question 1: Find the total quantity sold for each product.
*/
-- To view the table
SELECT *
FROM `sql_class_3_assignment`.`sales`;

-- Solution
SELECT `Product`, SUM(Quantity) AS `Total Quantity Sold`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `Product`;

/*
Question 2: Calculate the total revenue generated from each product
(Total Revenue = Quantity * Price).
*/
-- Solution
SELECT `Product`, `Price`, SUM(Quantity) AS 'Total Quantity Sold', SUM(Quantity * Price) AS `Total Revenue`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `Product`, `Price`;

/*
Question 3: Determine the average price of each product.
*/
-- Solution
SELECT  `Product`, AVG(`Price`) AS 'Average Price'
FROM `sql_class_3_assignment`.`sales`
GROUP BY `Product`;

--Question 4: Find the product with the highest total revenue
-- (Quantity * Price)
--Solution
SELECT `Product`, `Price`, SUM(`Quantity` * `Price`) AS `Total Quantity Sold`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `Product`, `Price`
ORDER BY `Total Quantity Sold` DESC
LIMIT 1;

/*
Question 5: Calculate the total quantity sold across all products.
*/
-- Solution
SELECT SUM(Quantity) AS OverAllQuantitySold
FROM `sql_class_3_assignment`.`sales`;

/*
Question 6: Determine the average price of all products.
*/
-- Solution
SELECT AVG(`Price`) AS `OverALLAveragePrice`
FROM `SQL_class_3_assignment`.`sales`;

/*
Question 1: Determine the square root of the price for each product.
*/

-- To view the table
SELECT *
FROM `sql_class_3_assignment`.`products`;

-- Solution
SELECT `ProductName`, `Price`, SQRT(`Price`) AS `Square Root`
FROM `sql_class_3_assignment`.`products`
GROUP BY `ProductName`, `Price`;

/*
Question 2: Find the ceiling 
(smallest integer greater than or equal to) of the prices.
*/

--Solution
SELECT `ProductName`, `Price`, CEIL(`Price`) AS `CeiledPrice`
FROM `sql_class_3_assignment`.`products`

/*
Question 3: Calculate the floor 
(largest integer less than or equal to) of the prices.
*/

-- Solution
SELECT `ProductName`, `Price`, FLOOR(`Price`) AS `FlooredPrice`
FROM `sql_class_3_assignment`.`products`;


/*

    Consider a table named Orders with the following columns:
    OrderID (integer): The unique identifier for each order.
    OrderDate (datetime): The date and time when the order was placed.
    DeliveryDate (datetime): The date and time when the order was delivered.
    
*/

-- Question 1: Find the difference in days between the order date and delivery date for each order.
-- To view the table orders
SELECT * 
FROM `sql_class_3_assignment`.`orders`;

-- Solution
SELECT `OrderDate`, `DeliveryDate`, DATEDIFF(`DeliveryDate`, `OrderDate`) AS DelayInDeliveryInDays, TIMEDIFF(`DeliveryDate`, `OrderDate`) AS DelayInHours
FROM `sql_class_3_assignment`.`orders`;

-- Question 2: Calculate the total delivery time in hours for all orders.

-- Solution
SELECT SUM(TIMESTAMPDIFF(HOUR, `OrderDate`, `DeliveryDate`)) AS TotalDeliveryTimeInHours
FROM `sql_class_3_assignment`.`orders`;

-- Question 3: Determine the day of the week when each order was placed.

-- Solution
SELECT `OrderID`, `ProductName`, DAYOFWEEK(`OrderDate`) AS DayOfWeek
FROM `sql_class_3_assignment`.`orders`;

-- Question 4: Find the orders that were placed on a Saturday (DayOfWeek = 7).

-- Solution
SELECT `OrderID`, `ProductName`, `OrderDate`
FROM `sql_class_3_assignment`.`orders`
WHERE DAYOFWEEK(`OrderDate`) = 7;

-- Question 5: Calculate the average delivery time in days for all orders.

-- Solution
SELECT AVG(DATEDIFF(`DeliveryDate`, `OrderDate`)) AS AverageDeliveryTimeInDays
FROM `sql_class_3_assignment`.`orders`;

-- Question 6: Find the orders that were delivered on the same day they were placed.

--Solution
SELECT `OrderID`, `ProductName`, `OrderDate`, DATEDIFF(`DeliveryDate`, `OrderDate`) AS `DeliveryDelayInDays`
FROM `sql_class_3_assignment`.`orders`
WHERE DATEDIFF(`DeliveryDate`, `OrderDate`) = 0;


---------------------------------------------------- GROUP BY, HAVING, ORDER BY ----------------------------------------------------------

/*
Question 1: Consider a table named Orders with the following columns:
OrderID (integer): The unique identifier for each order.
CustomerID (integer): The unique identifier for each customer.
TotalAmount (decimal): The total amount of the order.
Write an SQL query to find the customer IDs of customers who have placed orders with
a total amount greater than $1,000.
*/

-- To view the table
SELECT *
FROM `sql_class_3_assignment`.`orders`;

-- Solution
SELECT `CustomerID`, `CustomerName`, `TotalAmount`
FROM `sql_class_3_assignment`.`orders`
GROUP BY `CustomerID`, `CustomerName`, `TotalAmount`
HAVING SUM(`TotalAmount`) > 1000;


/*
Question 2:Consider a table named Sales with the following columns:
ProductID (integer): The unique identifier for each product.
SaleDate (date): The date of the sale.
QuantitySold (integer): The quantity of the product sold on that date.
Write an SQL query to find the product IDs of products that have been sold in quantities
greater than 100 on at least three different sale dates.
*/

-- To view table
SELECT * 
FROM `sql_class_3_assignment`.`sales`;

-- Solution: sold in quantities > 100 (sum(QuantitySold)>100) and 
-- atleast three different sale date (count(DISTINCT SaleDate)>=3) 
SELECT `ProductID`, `ProductName`, `Category`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `ProductID`, `ProductName`, `Category`
HAVING SUM(`QuantitySold`) > 100 AND COUNT(DISTINCT `SaleDate`) >= 3;

/*
Question 3:Consider a table named Employees with the following columns:
EmployeeID (integer): The unique identifier for each employee.
Department (string): The department in which the employee works.
Salary (decimal): The salary of the employee.
Write an SQL query to find the average salary of employees in each department, but
only for departments where the average salary is greater than $60,000.
*/

-- To view table
SELECT *
FROM `sql_class_3_assignment`.`employee_s`;

-- Solution
SELECT `Department`, AVG(Salary) AS `Average Salary`
FROM `sql_class_3_assignment`.`employee_s`
GROUP BY `Department`
HAVING AVG(Salary) > 60000;

/*
Question 4:Consider a table named Students with the following columns:
StudentID (integer): The unique identifier for each student.
Course (string): The course name.
Score (integer): The score obtained by the student in the course.
Write an SQL query to find the course names in which the average score of all students
is greater than or equal to 80.
*/

-- To view table
SELECT *
FROM `sql_class_3_assignment`.`student_s`;

-- Solution
SELECT `Course`, AVG(Score) AS `Average Score`
FROM `sql_class_3_assignment`.`student_s`
GROUP BY `Course`
HAVING AVG(`Score`) >= 80;

/*
Question 5: Consider a table named Employees with the following columns:
EmployeeID (integer): The unique identifier for each employee.
Department (string): The department in which the employee works.
Salary (decimal): The salary of the employee.
Write an SQL query to find the department with the highest average salary.
*/

-- To view TABLE
SELECT *
FROM `sql_class_3_assignment`.`employee_s`;

-- Solution
SELECT `Department` 
FROM `sql_class_3_assignment`.`employee_s`
GROUP BY `Department`
ORDER BY AVG(`Salary`) DESC
LIMIT 1;

/*
Question 6: Consider a table named Sales with the following columns:
ProductID (integer): The unique identifier for each product.
SaleDate (date): The date of the sale.
QuantitySold (integer): The quantity of the product sold on that date.
Write an SQL query to find the product with the highest total quantity sold.
*/

-- To view table
SELECT *
FROM `sql_class_3_assignment`.`sales`;

-- Solution
SELECT`ProductName`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `ProductName`
 ORDER BY SUM(`QuantitySold`) DESC
LIMIT 1;

/*
Question 7: Consider a table named Students with the following columns:
StudentID (integer): The unique identifier for each student.
Course (string): The course name.
Score (integer): The score obtained by the student in the course.
Write an SQL query to find the top three students with the highest average score across
all courses.
*/

/*
Question 8:Consider a table named Orders with the following columns:
OrderID (integer): The unique identifier for each order.
CustomerID (integer): The unique identifier for each customer.
OrderDate (date): The date of the order.
TotalAmount (decimal): The total amount of the order.
Write an SQL query to find the total amount of orders placed by each customer, ordered
in descending order of total amount.
*/

/*
Question 9: Consider a table named Books with the following columns:
BookID (integer): The unique identifier for each book.
Author (string): The author of the book.
PublicationYear (integer): The year the book was published.
Write an SQL query to find the number of books published by each author in
descending order of the count.
*/

/*
Question 10: Consider a table named Orders with the following columns:
OrderID (integer): The unique identifier for each order.
CustomerID (integer): The unique identifier for each customer.
OrderDate (date): The date of the order.
TotalAmount (decimal): The total amount of the order.
Write an SQL query to find the customer IDs of customers who have placed orders with
a total amount greater than $1,000 and have placed at least two orders.
*/

/*
Question 11: Consider a table named Products with the following columns:
ProductID (integer): The unique identifier for each product.
Category (string): The category of the product.
Price (decimal): The price of the product.
Write an SQL query to find the average price of products in each category, ordered by
category name in ascending order.
*/

/*
Question 12: Consider a table named Employees with the following columns:
EmployeeID (integer): The unique identifier for each employee.
Department (string): The department in which the employee works.
Salary (decimal): The salary of the employee.
Write an SQL query to find the department(s) with the lowest average salary.
*/

/*
Question 13: Consider a table named Orders with the following columns:
OrderID (integer): The unique identifier for each order.
CustomerID (integer): The unique identifier for each customer.
OrderDate (date): The date of the order.
TotalAmount (decimal): The total amount of the order.
Write an SQL query to find the customer IDs of customers who have placed orders with
a total amount greater than $500 in the year 2023, ordered by customer ID in ascending
order.
*/

/*
Question 14: Consider a table named Students with the following columns:
StudentID (integer): The unique identifier for each student.
Course (string): The course name.
Score (integer): The score obtained by the student in the course.
Write an SQL query to find the course names in which the highest score achieved by
any student is greater than or equal to 90, ordered by course name in ascending order.
*/

/*
Question 15: Consider a table named Orders with the following columns:
OrderID (integer): The unique identifier for each order.
CustomerID (integer): The unique identifier for each customer.
OrderDate (date): The date of the order.
TotalAmount (decimal): The total amount of the order.
Write an SQL query to find the customer IDs of customers who have placed orders with
a total amount greater than $500 in the year 2023 and have placed at least two orders
in that year.
*/

/*
Question 16: Consider a table named Students with the following columns:
StudentID (integer): The unique identifier for each student.
Course (string): The course name.
Score (integer): The score obtained by the student in the course.
Write an SQL query to find the course names where the average score of students who
scored less than 70 in at least one course is greater than or equal to 80.
*/

/*
Question 17:Consider a table named Employees with the following columns:
EmployeeID (integer): The unique identifier for each employee.
Department (string): The department in which the employee works.
Salary (decimal): The salary of the employee.
Write an SQL query to find the departments where the highest salary is greater than
$80,000 and the total number of employees in that department is at least 5.
*/

/*
Question 18: Consider a table named Products with the following columns:
ProductID (integer): The unique identifier for each product.
Category (string): The category of the product.
Price (decimal): The price of the product.
Write an SQL query to find the categories where the average price of products is
greater than or equal to $50, and the maximum price within that category is greater than
$100.
*/

/*
Question 19: Consider a table named Orders with the following columns:
OrderID (integer): The unique identifier for each order.
CustomerID (integer): The unique identifier for each customer.
OrderDate (date): The date of the order.
TotalAmount (decimal): The total amount of the order.
Write an SQL query to find the customer IDs of customers who have placed orders with
a total amount greater than $1,000 in any single order and have placed orders on at
least three different dates.
*/