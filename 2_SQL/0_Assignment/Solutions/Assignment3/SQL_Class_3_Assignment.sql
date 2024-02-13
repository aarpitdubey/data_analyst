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

-- Question 3: Determine the day of the week when each order was placed.
-- Question 4: Find the orders that were placed on a Saturday (DayOfWeek = 7).
-- Question 5: Calculate the average delivery time in days for all orders.
-- Question 6: Find the orders that were delivered on the same day they were placed.


*/



