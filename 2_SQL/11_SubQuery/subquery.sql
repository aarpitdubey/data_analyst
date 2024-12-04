
SHOW DATABASES;

-- Create new database
CREATE DATABASE `subquerydb`;

USE `subquerydb`;

-- Create tables
CREATE TABLE `employees` (
    `employee_id` INT AUTO_INCREMENT PRIMARY KEY,
    `employee_name` VARCHAR(255),
    `department` VARCHAR(255),
    `salary` DECIMAL(10, 2)
);

TRUNCATE `employees`;

-- Insert sample data
INSERT INTO `employees` (`employee_name`, `department`, `salary`) 
VALUES
    ('John Doe', 'HR', 50000.00),
    ('Jane Smith', 'Engineering', 60000.00),
    ('Michael Johnson', 'Finance', 55000.00),
    ('Emily Davis', 'HR', 48000.00),
    ('Sarah Brown', 'Engineering', 52000.00),
    ('Michael Wilson', 'Finance', 48000.00);

SELECT * FROM `subquerydb`.`employees`;


SELECT AVG(`salary`) AS `Average Salary`
FROM `subquerydb`.`employees`;

-- Retrieve all employees whose salary is higher than the average salary

SELECT *
FROM `subquerydb`.`employees`
WHERE `salary` > (SELECT AVG(`salary`) FROM `subquerydb`.`employees`)

-- Find all employees who works in department with more than one employee
 SELECT `employee_name` AS `Employee Name`, `department` AS `Department`
 FROM `subquerydb`.`employees`
 WHERE `department` IN (SELECT `department` FROM `subquerydb`.`employees` GROUP BY `department` HAVING COUNT(*) > 1);

