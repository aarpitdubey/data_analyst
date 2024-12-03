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

SELECT * FROM ramayan_is_mythology;

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

USE growdataskills;

-- Alter to add email column in student_table
ALTER TABLE student_table ADD email VARCHAR(100);

-- Alter student_table and renaming the column name 'student_name' to 'names'
ALTER TABLE student_table 
RENAME COLUMN student_name TO names;

SELECT * FROM student_table;

-- Modify the column course_name VARCHAR(50) to column_name VARCHAR(100)
ALTER TABLE student_table
MODIFY COLUMN course_name VARCHAR(100);

-- Taking the overview about the table COMMENT
DESCRIBE student_table;

-- OR in short we can write
DESC student_table;

-- Adding values in student_table

INSERT INTO student_table(student_id, names, course_name, email)
VALUES(1, 'Arpit', 'Data Science', 'aarpitdubey@gmail.com');

INSERT INTO student_table(student_id, names, course_name, email)
VALUES(2, 'Astha', 'Information Technology', 'asthadubey@gmail.com');

INSERT INTO student_table(student_id, names, course_name, email)
VALUES(3, 'Shreya', 'Electronics and Communication', 'shreya.r@gmail.com');


INSERT INTO student_table(student_id, names, course_name, email)
VALUES(4, 'Pradhut', 'Bussiness Administration', 'pradhutmishra@gmail.com');


INSERT INTO student_table(student_id, names, course_name, email)
VALUES(5, 'Prerna', 'Master of Bussiness Administration', 'prernamishra@gmail.com');

INSERT INTO student_table(student_id, names, course_name, email)
VALUES(6, 'Prachi', 'Master of Bussiness Administration', 'prachimishra@gmail.com');

INSERT INTO student_table(student_id, names, course_name, email)
VALUES(7, 'Ekta', 'Information Technology', 'ekta06@gmail.com');


INSERT INTO student_table(student_id, names, course_name, email)
VALUES(8, 'Aneesh', 'Mechanical', 'aneeshdubey@gmail.com');

-- SELECT all the VALUES of TABLE
SELECT names, course_name 
FROM student_table

-- TRUNCATE the TABLE
TRUNCATE TABLE student_table