-- CREATE a table named it as "Customers"

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE
);

-- Select the database
USE growdataskills

SHOW TABLES;

-- Insert data with NULL and NOT NULL VALUES
INSERT INTO customers (first_name, last_name, email, phone) VALUES
('John', 'Doe', 'john@example.com', '123-456-7890'),
('Alice', 'Smith', NULL, '111-222-3333'),
('David', 'Brown', 'david@gamil.com', '444-555-6666'),
('Emma', 'Johnson', 'emma@example.com', '777-888-9999'),
('Michael', 'Williams', 'michael@xmail.com', NULL),
('Sophia', 'Martinez', 'sophia@example.com', '404-505-6060'),
('Jacob', 'Davis', 'jacob@example.com', '707-808-9090'),
('Olivia', 'Garcia', 'olivia@yahoo.com', '112-131-4151'),
('Ethan', NULL, 'ethan@example.com', '161-718-1920'),
('Ava', 'Torres', 'ava@ineuron.com', '212-223-2425'),
('Noah', 'Lopez', 'noah@example.com', '262-728-2930');

-- DQL STATEMENTS
-- 1. ALL or *
SELECT * FROM customers;

-- 2. Specific COLUMNS

SELECT CONCAT_WS(' ', first_name, last_name) AS customer_name, email, phone
FROM customers; 

-- PATERN MATCHING --

-- Find first name of customers statrting with letter 'a'
SELECT * 
FROM `growdataskills`.`customers`
WHERE first_name LIKE 'a%';

-- Find last name of customers ends with letter 's'
SELECT * 
FROM `growdataskills`.`customers`
WHERE last_name LIKE '%s';

DROP TABLE `growdataskills`.`product`;
TRUNCATE `growdataskills`.`product`;

-- Creating a new table name 'product'
CREATE TABLE IF NOT EXISTS product (
    `product_name` VARCHAR(100) NOT NULL,
    `quantity(kg)` DECIMAL(10, 2)  NOT NULL,
    `price` INT NOT NULL,
    description TEXT
);
SELECT * FROM `growdataskills`.`product`;

-- Inserting some data into 'product' table
INSERT INTO `growdataskills`.`product` (`product_name`, `quantity(kg)`, `price`, description) 
VALUES 
    ('Apple', 1.5, 100, 'Red and sweet fruit'),
    ('Banana', 0.8, 150, 'Yellow and sweet fruit'),
    ('Orange', 2.0, 200, 'Orange and sour fruit'),
    ('Grape', 3.0, 180, 'Green and sour fruit'),
    ('Mango', 1.2, 120, 'Green and sweet fruit'),
    ('Pineapple', 2.5, 150, 'Green and sweet fruit'),
    ('Pear', 1.0, 100, 'Green and sweet fruit'),
    ('Cherry', 1.7, 130, 'Red and sweet fruit'),
    ('Watermelon', 3.5, 100, 'Green and sweet fruit'),
    ('Strawberry', 2.2, 120, 'Red and sweet fruit'),
    ('Blueberry', 1.8, 150, 'Red and sweet fruit'),
    ('Peach', 2.5, 100, 'Yellow and sweet fruit' ),
    ('Lemon', 1.5, 180, 'Yellow and sweet fruit'),
    ('Kiwi', 2.0, 120, 'Green and sweet fruit'),
    ('Mandarin', 1.7, 150, 'Green and sweet fruit'),
    ('Papaya', 2.5, 100, 'Green and sweet fruit'),
    ('Dragon Fruit', 3.5, 100, 'Green and sweet fruit'),
    ('Durian', 1.8, 150, 'Red and sweet fruit'),
    ('Raspberry', 2.2, 120, 'Red and sweet fruit'),
    ('Coconut', 2.5, 100, 'Yellow and sweet fruit'),
    ('Gooseberry', 1.5, 180, 'Red and sweet fruit'),
    ('Jackfruit', 2.0, 120, 'Green and sweet fruit'),
    ('Rambutan', 1.7, 150, 'Yellow and sweet fruit'),
    ('Elderberry', 2.5, 100, 'Red and sweet fruit'),
    ('Feijoa', 1.8, 150, 'Yellow and sweet fruit'),
    ('Honeydew', 2.2, 120, 'Yellow and sweet fruit'),
    ('Huckleberry', 2.5, 100, 'Yellow and sweet fruit'),
    ('Lime', 1.5, 180, 'Green and sweet fruit'),
    ('Lavender', 2.0, 120, 'White and sweet fruit'),
    ('Lemongrass', 1.7, 150, 'Green and sweet fruit'),
    ('Papayawhip', 2.5, 100, 'Green and sweet fruit'),
    ('Papaya Quince', 1.8, 150, 'Green and sweet fruit'),
    ('Pineapple Peach', 2.2, 120, 'Green and sweet fruit'),
    ('Pineapple Lemon', 2.5, 100, 'Green and sweet fruit'),
    ('Pineapple Gooseberry', 1.5, 180, 'Green and sweet fruit'),
    ('Pineapple Rambutan', 2.0, 120, 'Green and sweet fruit'),
    ('Pineapple Elderberry', 1.7, 150, 'Green and sweet fruit'),
    ('Pineapple Feijoa', 2.5, 100, 'Green and sweet fruit'),
    ('Pineapple Honeydew', 1.8, 150, 'Green and sweet fruit'),
    ('apple sauce', 1.8, 150, 'Homemade Apple sauce');

INSERT INTO `growdataskills`.`product` (`product_name`, `quantity(kg)`, `price`, description)
VALUES
    ('60kgAvocado', 60.0, 1100, 'Green and sweet fruit');

-- Find products where the product_name starts with 'app%'
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` LIKE 'app%';

-- Find products where the product_name starting with any alphabet, second letter 'a' and then any letters
SELECT * 
FROM `growdataskills`.`product`
WHERE `product_name`  LIKE '_a%';

-- REGULAR EXPRESSION

-- Find the products where the product_name containing ATLEAST 1 [1 - N] 'a' within it.
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP 'a+';

-- Find the products where the product_name containing ZERO (or) MORE [0 - N] 'a' within it.
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP 'a*';

-- Find the products where the product_name containing 'ora' irrespective of their positioning
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP 'ora?'; -- '?' contains

-- WILD CARD CHARACTERS --

-- A wildcard character is used to substitute one (or) more characters in a string.
-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to searcg for a specified pattern
-- 1. '%' - Represents zero or more characters
-- 2. '_' - Represents a single character

SELECT * FROM `growdataskills`.`product`;

-- Find the products where the product_name is either 'grapes' or 'pear'
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP 'grape|pear' -- '|' OR

-- Find the products where the product_name STARTS with either 'a' or 'b' or 'c'
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP '^[abc]' -- '^' STARTS with '[]' holds multiple values

-- Find the products where the product_name STARTS with A to Z
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP '^[A-Z]';

-- Find the products where the product_name STARTS with Numeric values from 0 to 9
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP '^[0-9]';

-- Find the products where the product_name START with a 'ki', Any character in middle repeat ATLEAST one time and ENDS with an 'i'.
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP '^ki.*i$';

-- Find the products where the product_name contains 'ap' , any single charcter in middle and 'le' at last
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP 'ap.le';

-- Find the products where the product_name contains 'ap' , any single charcter in middle and ENDS with 'le'
SELECT *
FROM `growdataskills`.`product`
WHERE `product_name` REGEXP 'ap.le$';

