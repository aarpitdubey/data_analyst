-- 1. Creating a Database named "growdataskills";
CREATE DATABASE IF NOT EXISTS growdataskills;

-- 2. Show all the databases present in our 
--CONNECTION
SHOW DATABASES;

-- 3. To Use the database
USE growdataskills;

-- 4. To see in which database 
--we are working or used DATABASE
SELECT database();

-- 5. Create a table student_table
CREATE TABLE student_table(
    student_id INT,
    student_name VARCHAR(30),
    course_name VARCHAR(50)
);

-- For showing the tables inside a DATABASE
SHOW TABLES;
--      EXAMPLE: RAMAYANA DATABASE

-- Creating un-useful database `Ramayana` and,
-- un-useful table `Ramayan_is_Mythology` to drop.
CREATE DATABASE IF NOT EXISTS Ramayana;

-- Use the DATABASE `Ramayana`
USE Ramayana;

-- Showing the resulted databases!
SELECT database();

-- Creating a un-useful table `Ramayana_is_Mythology` to drop
CREATE TABLE Ramayan_is_Mythology(
    Chapter_or_kaand INT,
    Number_of_Svarg INT,
    Character_name VARCHAR(30),
    Role VARCHAR(50)
);

SHOW DATABASES;

SHOW TABLES;

-- Inserting 1st record in the TABLE
INSERT INTO ramayana.ramayan_is_mythology(
    Chapter_or_kaand, 
    Number_of_Svarg, 
    Character_name, 
    Role) 
VALUES (6, 74, 'Ram (Yodha kaand)', 'King');

-- Drop the table 'Ramayan_is_Mythology'
DROP TABLE `Ramayan_is_Mythology`;

SHOW TABLES;

DROP DATABASE`Ramayana`;