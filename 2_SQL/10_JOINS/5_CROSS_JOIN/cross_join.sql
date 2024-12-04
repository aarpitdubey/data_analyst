USE `sql_joins`;

SHOW TABLES;

---- Create Table `colors` and `sizes`

CREATE TABLE `colors` (
    `color_id` INT PRIMARY KEY,
    `color_name` VARCHAR(255) 
);

CREATE TABLE `sizes` (
    `size_id` INT PRIMARY KEY,
    `size_name` VARCHAR(255)
);

---- Insert sample data into `colors` and `sizes`

INSERT INTO `colors` (`color_id`, `color_name`) 
VALUES
    (1, 'Red'),
    (2, 'Blue'),
    (3, 'Green');


INSERT INTO `sizes` (`size_id`, `size_name`) 
VALUES
    (1, 'Small'),
    (2, 'Medium'),
    (3, 'Large');

SELECT * FROM `sql_joins`.`colors`;
SELECT * FROM `sql_joins`.`sizes`;


--- CROSS JOIN
SELECT c.color_name, s.size_name
FROM colors c
CROSS JOIN sizes s;

