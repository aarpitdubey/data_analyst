-- Adding/Insert values in student_table

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


-- SAFE UPDATE Mode : In SQL, setting SQL_SAFE_UPDATE = 0; disables the safety feature that requires a WHERE condition to be used in UPDATE and DELETE statements. 
-- It's a security measures

SET SQL_SAFE_UPDATES = 0;

-- Update any values inside the student_table

UPDATE student_table 
SET email = 'shreya201@gmail.com'
WHERE names = 'Shreya';


DELETE FROM student_table 
WHERE names = 'Prachi';