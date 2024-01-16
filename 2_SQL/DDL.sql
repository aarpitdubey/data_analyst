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

