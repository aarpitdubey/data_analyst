
-- CREATE DATABASE growdataskills;
-- USE growdataskills;

USE growdataskills;
SHOW TABLES;

-- AGREGATE FUNCTIONS --
-- 1. COUNT()
-- 2. MIN()
-- 3. MAX()
-- 4. AVG()

-- Create the TABLE
CREATE TABLE IF NOT EXISTS `employees` (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(50),
    last_name varchar(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    years_of_experience INT
);

-- Insert data into the table employees

INSERT INTO `employees` (`first_name`,`last_name`,`email`, `department`, `salary`, `years_of_experience`)
VALUES 
    ('Arun', 'Jain', 'arun.jain@growdataskills.com', 'HR', 60000.00, 3),
    ('Shreya', 'Richharia','shreya.richharia@growdataskills.com', 'IT', 75000.00, 5),
    ('Arpit', 'Dubey','arpit.dubey@growdataskills.com', 'IT', 80000.00, 8),
    ('Rishab','Kuchbhi','rishab.kuchbhi@growdataskills.com', 'Sales', 55000.00, 2),
    ('Mansi','Tiwari','mansi.tiwari@growdataskills.com', 'Sales', 62000.00, 4);

-- Check the values entered into the table
SELECT *
FROM `growdataskills`.`employees`;

-- 1. AVG() function --------------------------------

-- Example 1: Find the average salary for each department
SELECT `department`, AVG(`salary`)
FROM `growdataskills`.`employees`
GROUP BY `department`;

-- Example 2: Find the average salary above $65000 for each department
SELECT `department`, AVG(`salary`)
FROM `growdataskills`.`employees`
GROUP BY `department`
HAVING AVG(`salary`) > 65000.00;

-- Using Aliasing or AS 

-- Find the average salary above $65000 for each department named using Aliasing
SELECT `department`, AVG(`salary`) AS `Average_Salary`
FROM `growdataskills`.`employees`
GROUP BY `department`
HAVING `Average_Salary` > 65000.00;

-- Example 3: Find average salary above $60000 for departments with more than one employee
SELECT department, AVG(`salary`) AS `Average_Salary`
FROM `growdataskills`.`employees`
GROUP BY `department`
HAVING `Average_Salary` >= 60000.00 AND COUNT(`employee_id`) > 1;

-- Example 4: Find average salary, number of employees for departments
-- with average_salary > $60000 and more than one employee

SELECT `department`, AVG(`salary`) AS `Average_Salary`, COUNT(`employee_id`) AS `Number_Of_Employees`
FROM `growdataskills`.`employees`
GROUP BY `department`
HAVING `Average_Salary` >= 60000.00 AND `Number_Of_Employees` > 1;

-- GROUP BY on two columns ------------------------------------------------------
-- Example 5: Find average salary for each department and experience level   

SELECT `department`, `years_of_experience`, AVG(`salary`) AS `Average_Salary`
FROM `growdataskills`.`employees`
GROUP BY `department`, `years_of_experience`;


------ ORDER BY --------------------------------------------------------------------

-- Example 6: Order the result set by department with more than one employee in descending order
SELECT `department`, AVG(`salary`) AS `Average_Salary`, COUNT(`employee_id`) AS `Number_Of_Employees`
FROM `growdataskills`.`employees`
GROUP BY `department`
HAVING `Number_Of_Employees` > 1
ORDER BY `department` DESC; -- By Default Ascending Order

---- LIMIT -------

-- Example 7: Limit the result set to only the top 3 departments
SELECT *
FROM `growdataskills`.`employees`
LIMIT 3;

---- UNION -------------------------------

-- Example 8: Combine the result sets of two SELECT statements
-- by combining the rows where the department is 'IT' and 'HR'

SELECT `first_name`, `last_name`
FROM `growdataskills`.`employees`
WHERE `department` = 'HR'
UNION
SELECT `first_name`, `last_name`
FROM `growdataskills`.`employees`
WHERE `department` = 'IT';

---------- CREATING `sales` Table -------------------------------

CREATE TABLE IF NOT EXISTS `sales` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `product_id` INT,
    `quantity` INT,
    `sale_date` DATE
);

INSERT INTO `sales` (`product_id`, `quantity`, `sale_date`) VALUES
    (1, 5, '2022-01-01'),
    (1, 3, '2022-01-02'),
    (2, 7, '2022-01-01'),
    (2, 4, '2022-01-03'),
    (4, 10, '2022-01-02');

SELECT * FROM `growdataskills`.`sales`;

-- Example 1: Find the total sum of quantities and named it as `total_quantity`
SELECT SUM(`quantity`) AS `total_quantity`
FROM `growdataskills`.`sales`;

-- Example 2: Find the minimum of quantity and named it as `min_quantity`
SELECT MIN(`quantity`) AS `min_quantity`
FROM `growdataskills`.`sales`;

-- Example 3: Find the maximum of quantity and named it as `max_quantity`
SELECT MAX(`quantity`) AS `max_quantity`
FROM `growdataskills`.`sales`;

---- Creating Table `price` -----------
CREATE TABLE IF NOT EXISTS `price` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `product_id` INT,
    `price` DECIMAL(10, 4),
    `quantity` INT,
    `start_date` DATE,
    `end_date` DATE
);

INSERT INTO `price` (`product_id`, `price`, `quantity`, `start_date`, `end_date`) VALUES
    (1, 10.00, 5, '2022-01-01', '2022-12-31'),
    (2, 20.5034, 3, '2022-01-01', '2022-12-31'),
    (2, 15.7522, 8, '2022-01-01', '2022-12-31'),
    (3, 5.252, 8, '2022-01-01', '2022-12-31'),
    (4, 25.9999, 10, '2022-01-01', '2022-12-31');
    
SELECT * FROM `growdataskills`.`price`;

-- Example 1: Find the rounded price of the product with the precision of the two decimal place and named it `rounded_price`.
SELECT `price`, ROUND(`price`, 2) AS `rounded_price`
FROM `growdataskills`.`price`;

-- Example 2: Find the absolute_difference of the quantity of the product with the price upto two decimal place and named it `absolute_difference`.
SELECT `quantity`,`price`, ABS(`quantity` - ROUND(`price`, 2)) AS `absolute_difference`
FROM `growdataskills`.`price`;

-- Example 3: Find the square root of the quantity of the product
SELECT `quantity`, SQRT(`quantity`) AS `sqrt_of_quantity`
FROM `growdataskills`.`price`;

-- Example 4: Find the `quantity` Power raise to `id`
SELECT `quantity`, `id`, POWER(`quantity`, `id`) AS `power_result`
FROM `growdataskills`.`price`;

-- Example 5: Find the modulus of `price` with 3 
SELECT `price`, MOD(`price`, 3) AS `remainder`
FROM `growdataskills`.`price`;

---------------- FLOOR and CEIL --------------------------------

-- Example 6: Find the ceil of price 
SELECT `price`, CEIL(`price`) AS `ceil_price`
FROM `growdataskills`.`price`;

-- Example 7: Find the floor of price
SELECT `price`, FLOOR(`price`) AS `floor_price`
FROM `growdataskills`.`price`;

--------------- DATE and TIME ------------------------
CREATE TABLE IF NOT EXISTS `datetime_data` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `event_name` VARCHAR(50),
    `event_date` DATETIME
);

-- Insert Data
INSERT INTO datetime_data (`event_name`, `event_date`) VALUES
    ('Meeting', '2023-08-15 10:00:00'),
    ('Conference', '2023-08-17 15:30:00'),
    ('Birthday', '2023-08-16 07:30:00'),
    ('Holiday', '2023-08-18 00:00:00'),
    ('Public Speaking', '2023-08-19 12:00:00');

SELECT * 
FROM datetime_data;

-- Example 1: Extract the YEAR part from the `event_date`
SELECT `event_name`, `event_date`, YEAR(`event_date`) AS `event_year`
FROM `growdataskills`.`datetime_data`;

-- Example 2: Extract the MONTH part from the `event_date`
SELECT `event_name`, `event_date`, MONTH(`event_date`) AS `event_month`
FROM `growdataskills`.`datetime_data`;

-- Example 3: Extract the DAY part from the `event_date`
SELECT `event_name`, `event_date`, DAY(`event_date`) AS `event_day`
FROM `growdataskills`.`datetime_data`;

-- Example 4: Extract the HOUR part from the `event_date`
SELECT `event_name`, `event_date`, HOUR(`event_date`) AS event_hour
FROM `growdataskills`.`datetime_data`;

-- Example 5: Extract the MINUTE part from the `event_date`
SELECT `event_name`, `event_date`, MINUTE(`event_date`) AS event_minute
FROM `growdataskills`.`datetime_data`;

-- Example 6: Extract the SECOND part from the `event_date`
SELECT `event_name`, `event_date`, SECOND(`event_date`) AS event_second
FROM `growdataskills`.`datetime_data`;

-- Example 7: Find out the Day count from `event_date` to the date until the '2023-08-20'
SELECT `event_name`, `event_date`, 
        DATEDIFF('2023-08-20', `event_date`) AS `days_until_aug_20`
FROM `growdataskills`.`datetime_data`;

-- Example 8: Add moe 3 hours to the `event_date` and create a column for `updated_event_date`
SELECT `event_name`, `event_date`,
        DATE_ADD(`event_date`, INTERVAL 3 HOUR) AS `updated_event_date`
FROM `growdataskills`.`datetime_data`;

