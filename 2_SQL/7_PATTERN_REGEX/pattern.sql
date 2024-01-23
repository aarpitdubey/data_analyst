-- CREATE a table named it as "Customers"

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE
);

-- Select the database
USE growdataskills


-- Insert data with NULL and NOT NULL VALUES
INSERT INTO customers (first_name, last_name, email, phone) VALUES
('John', 'Doe', 'john@example.com', '123-456-7890'),
('Alice', 'Smith', NULL, '111-222-3333'),
('David', 'Brown', 'david@example.com', '444-555-6666'),
('Emma', 'Johnson', 'emma@example.com', '777-888-9999'),
('Michael', 'Williams', 'michael@example.com', NULL),
('Sophia', 'Martinez', 'sophia@example.com', '404-505-6060'),
('Jacob', 'Davis', 'jacob@example.com', '707-808-9090'),
('Olivia', 'Garcia', 'olivia@example.com', '112-131-4151'),
('Ethan', NULL, 'ethan@example.com', '161-718-1920'),
('Ava', 'Torres', 'ava@example.com', '212-223-2425'),
('Noah', 'Lopez', 'noah@example.com', '262-728-2930');

-- DQL STATEMENTS
-- 1. ALL or *
SELECT * FROM customers;

-- 2. Specific COLUMNS

SELECT first_name || last_name AS "CUSTOMER NAME", email, phone
FROM customers; 
