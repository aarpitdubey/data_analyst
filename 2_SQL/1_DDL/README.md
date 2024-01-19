# DDL commands:

1. Command to create a database:

```SQL
CREATE DATABASE <database_name>;

-- Let's create a database named it as 'growdataskills'
CREATE DATABASE growdataskills;
```

![Alt text](./img/create_database_command.png)

2.  Show all the available databases

```SQL
-- Before Show databases we have to select the database we are working upon.
-- So, for this we have to use 'USE' command.
USE growdataskills;

-- Show databases
SHOW DATABASES;
```

![USE and SHOW Databases](./img/Use_Show_databases.png)

3. To use the database

```SQl
USE <database name>;

-- Example
USE growdataskills;
```
![USE and SHOW Databases](./img/Use_Show_databases.png)

4. To see which database is in used or which database has been currently selected

```SQl
SELECT database();
```
![select database()](./img/select_database().png)

5. To create a new table with in the database let a table named `student_table` let's create it.

```SQl
CREATE TABLE student_table(
    student_id INT,
    student_name VARCHAR(30),
    course_name VARCHAR(50)
);
```

![Creating student_table](./img/create_student_table.png)

6. To show all the available tables inside a database 

```SQL
SHOW TABLES;
```

![Shows all tables availables](./img/Show_tables.png)

7. Let's create a un-useful database to drop.

```SQL

CREATE DATABASE IF NOT EXISTS Ramayana;

USE Ramayana;

SHOW database();
```

- database created successfully
![create database ramayana](./img/create_ramayana_database.png)

- use database ramayana
![use ramayana database](./img/use_ramayana_database.png)

- Checking the database is selected or not?
![checking the selected database is ramayana or not](./img/show_database()_ramayana.png)

8. Let's create a un-useful table to drop.

```SQL
CREATE TABLE Ramayan_is_Mythology(
    Chapter_or_kaand INT,
    Number_of_Svarg INT,
    Character_name VARCHAR(30),
    Role VARCHAR(50)
);
```
![create a table ramayan_is_Mythology](./img/create_table_ramayana_is_mythology.png)

- Show the database and table
![shown all databases](./img/showing_databases_ramayana.png)

- Show the tables available in this database
![Shown all tables in this database](./img/show_table_ramayan_is_mythology.png)

9. Let's insert some values into the table

```SQl

INSERT INTO ramayana.ramayan_is_mythology(
    Chapter_or_kaand, 
    Number_of_Svarg, 
    Character_name, 
    Role) 
VALUES (6, 74, 'Ram (Yodha kaand)', 'King');
```

![](./img/Inserted_1st_record_in_table_ramayan_is_mythology.png)

10. Drop the table `Ramayan_is_Mythology` because Ramayana is not a mythology it's our itihas (History).

```SQL

DROP TABLE `Ramayan_is_Mythology`;

SHOW TABLES;

```

![](./img/drop_table_ramayan.png)


To Add another column to the table we use Alter.
```SQL

ALTER TABLE student_table ADD email VARCHAR(100);

```


![Alt text](./img/Alter_and_add_email_column.png)
- Successfully added email column!


![Alt text](./img/email_col_added.png)

Renaming the student_name column to names column

![Alt text](./img/Alter_renaming_col_name.png)

Alter and Modify the column course_name VARCHAR(50) to course_name VARCHAR(100)

```SQl
ALTER TABLE student_table
MODIFY COLUMN course_name VARCHAR(100);
```

![Alt text](./img/Alter_and_modify.png)


- Describe or find out the overview of the table 'student_table'

![](./img/Desc_or_Describe.png)

let's inserted multiple values into the 'student_table' table.

```sql
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
```

![Alt text](./img/Inserted_values_student_table.png)

Truncate deletes all the values of the table 'student_table' but doesn't affect the structure of the table.

![Alt text](./img/Truncate_student_table.png)


<center><b>DDL Queries Done</b></center>