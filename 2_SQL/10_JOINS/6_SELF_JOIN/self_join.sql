USE `sql_joins`;

SHOW TABLES;

-- Create table `employees`

CREATE TABLE `employees` (
  `employee_id` INT PRIMARY KEY,
  `employee_name` VARCHAR(255),
  `supervisor_id` INT
);

-- Insert sample data into `employees` table

INSERT INTO `employees` (`employee_id`, `employee_name`, `supervisor_id`)
VALUES 
    (1, 'John', NULL),
    (2, 'Jane', 1),
    (3, 'Mike', 1),
    (4, 'Sarah', 2),
    (5, 'Emily', 3);

SELECT * FROM `sql_joins`.`employees`;

SELECT `e`.`employee_name` AS `employee`, `s`.`employee_name` AS `supervisor`
FROM `sql_joins`.`employees` e LEFT JOIN `employees` `s`
ON `e`.`supervisor_id` = `s`.`employee_id`;