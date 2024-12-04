-- Creating new Database
CREATE DATABASE IF NOT EXISTS `sql_class_4`;
-- Using `sql_class_4` Database
USE `sql_class_4`;

-- Creating new `products` Table.
CREATE TABLE `products` (
    `product_id` INT AUTO_INCREMENT PRIMARY KEY,
    `product_name` VARCHAR(255),
    `price` DECIMAL(10, 2),
    `quantity_in_stock` INT
);

-- Inserting the data into the table `products`
INSERT INTO `products` (`product_name`, `price`, `quantity_in_stock`)
VALUES
    ('Product A', 25.99, 50),
    ('Product B', 75.50, 30),
    ('Product C', 120.00, 10),
    ('Product D', 10.49, 100),
    ('Product E', 200.00, 5),
    ('Product F', 60.75, 20);

SELECT * FROM `sql_class_4`.`products`;

SELECT *,
    CASE
        WHEN `price` <= 50 THEN  "Low"
        WHEN `price` <= 100 THEN "Medium"
        ELSE "High"
    END AS `price_category`
FROM `sql_class_4`.`products`;

-- Creating new table `employees`
CREATE TABLE `employees` (
    `employee_id` INT AUTO_INCREMENT PRIMARY KEY,
    `employee_name` VARCHAR(255),
    `salary` DECIMAL(10,2),
    `years_of_service` INT
);

-- Inserting the data into the table `employees`
INSERT INTO `employees` (`employee_name`, `salary`, `years_of_service`)
VALUES
    ('John Doe', 60000.00, 3),
    ('Jane Smith', 75000.00, 7),
    ('Michael Johnson', 85000.00, 12),
    ('Sarah Johnson', 100000.00, 18);

SELECT * FROM `sql_class_4`.`employees`;

-- Example 1: Calculate the bonus given to the employees. The condition where the employees get bonus are:
    -- 1. Years of Service < 5, these employees gets 0 BONUS
    -- 2. Years of Service >= 5 and Years of Service < 10, these employees get 500 BONUS
    -- 3. Years of Service >= 10, and less than 20, these employees gets 1000 BONUS

SELECT *,
    CASE
        WHEN `years_of_service` < 5 THEN CONCAT(CAST(0 AS CHAR), " ", "BONUS")
        WHEN `years_of_service` >= 5 AND `years_of_service` < 10 THEN CONCAT(CAST(500 AS CHAR), " ", "BONUS")
        ELSE CONCAT(CAST(1000 AS CHAR), " ", "BONUS")
    END AS `bonus`
FROM `sql_class_4`.`employees`;

----------- CREATE New Table `orders` --------------------------------------------------------------------------

USE sql_class_4;
TRUNCATE TABLE `orders`

CREATE TABLE `orders` (
    `order_id` INT AUTO_INCREMENT PRIMARY KEY,
    `order_date` DATE,
    `total_amount` DECIMAL(10, 2),
    `shipping_method` VARCHAR(255)
);

-- Inserting the data into the table `orders`
INSERT INTO `orders` (`order_date`, `total_amount`, `shipping_method`)
VALUES
    ('2023-09-01', 150.00, 'Standard'),
    ('2023-09-10', 200.00, 'Express'),
    ('2023-09-15', 75.00, 'Standard'),
    ('2023-09-20', 400.00, 'Express'),
    ('2023-09-25', 50.00, 'Economy');

SELECT * FROM `sql_class_4`.`orders`;

-- Example 2: Calculate the shipping cost based on the shipping_method
SELECT *,
    CASE `shipping_method`
        WHEN 'Standard' THEN `total_amount` * 0.1
        WHEN 'Express'  THEN `total_amount` * 0.2
        ELSE `total_amount` * 0.05
    END AS `shipping_cost`
FROM `sql_class_4`.`orders`;

---------------------------------------------------------------------------