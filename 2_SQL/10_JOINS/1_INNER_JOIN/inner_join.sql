-- CREATE A DATABASE for JOINS
CREATE DATABASE IF NOT EXISTS `sql_joins`;

-- USE DATABASE `sql_joins`
USE `sql_joins`;

-- CREATE TABLE `customers` and `sales`\

-- Step 1: create a table `customers`
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` INT AUTO_INCREMENT PRIMARY KEY,
  `customer_name` VARCHAR(255),
  `email` VARCHAR(255)
);

-- Step 2: create a table `sales`
CREATE TABLE IF NOT EXISTS `sales` (
  `sale_id` INT AUTO_INCREMENT PRIMARY KEY,
  `customer_id` INT,
  `sale_date` DATE,
  `total_amount` DECIMAL(10, 2),
  FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`)
);

show tables;
-- INSERT some sample data into the tables
-- Step 3: insert sample data into `customers` table
INSERT INTO `customers` (`customer_name`, `email`)
VALUES 
    ('John Doe', 'john.doe@intel.com'),
    ('Jane Smith', 'jane.smith@intel.com'),
    ('Alice Johnson', 'alice.johnson@intel.com'),
    ('Bob Brown', 'bob.brown@intel.com');

-- Step 4: insert sample data into `sales` table
INSERT INTO `sales` (`customer_id`, `sale_date`, `total_amount`)
VALUES
    (1, '2023-09-01', 150.00),
    (2, '2023-09-02', 200.00),
    (1, '2023-09-03', 75.00),
    (3, '2023-09-04', 300.00),
    (NULL, '2023-09-05', 50.00);

SELECT * FROM `sql_joins`.`customers`;
SELECT * FROM `sql_joins`.`sales`;

--- Step 5: INNER JOIN `sql_joins`
SELECT `sales`.`sale_id`, `customers`.`customer_name`, `sales`.`total_amount`
FROM `sales` INNER JOIN `customers`
ON `sales`.`customer_id` = `customers`.`customer_id`;

