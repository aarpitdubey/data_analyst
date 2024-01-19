-- DQL ADD
-- SELECT STATEMENT

SELECT student_id, names, course_name, email
FROM student_table;

SELECT course_name, email
FROM student_table;

SELECT *
FROM student_table;

-- SAFE UPDATE Mode : In SQL, setting SQL_SAFE_UPDATE = 0; disables the safety feature that requires a WHERE condition to be used in UPDATE and DELETE statements. 
-- It's a security measures

SET SQL_SAFE_UPDATES = 0;

-- Update any values inside the student_table

UPDATE student_table 
SET email = 'shreya201@gmail.com'
WHERE names = 'Shreya';