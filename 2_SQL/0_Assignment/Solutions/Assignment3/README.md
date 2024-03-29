# ASSIGNMENT - 3

## Patter Matching

### Question 1: How can you select all employees whose names start with the letter 'A'?

**Solution :** Here, we have to `SELECT` all the employees whose `FirstName` starts with the letter 'A' means we have to match the initial letter 'A' using the `WHERE` and `LIKE` we can find all the employees.

**Query :**
```SQL
SELECT *
FROM employees
WHERE FirstName LIKE 'A%';
```

**Execution :**

![Select all employees where firstName is starting with the letter 'A'](./img/3_solution_1.png)

### Question 2: How do you find all products whose names contain the word 'phone' regardless of case?

Let's first look at the product table 

**Query :**
```SQL
-- Query to view the list of products
SELECT *
FROM `sql_class_3_assignment`.`products`;
```
**Execution :**

![](./img/4_viewing_the_products_table.png)

Now, We have to find only those products whose name contain 'phone'

**Query :**

```SQL
SELECT `ProductID`, `ProductName`, `Price`
FROM products
WHERE ProductName LIKE '%phone%';
```

**Execution :**

![Products whose name contain 'phone'](./img/5_solution_2.png)

### Question 3: How can you retrieve all email addresses from a table that end with '.com'?

firstly, let's look at the employee table 

**Query :**
```SQL
SELECT *
FROM `sql_class_3_assignment`.`employee`;
```
**Execution :**

![](./img/6_viewing_the_employee_table.png)

Here, we can see there are email addresses which contains '.com'

**Query :**

```SQL
SELECT `email`
FROM employee
WHERE email LIKE '%.com';
```
**Execution :**

![](./img/7_solution_3.png)

### Question 4: How do you find all phone numbers that start with the area code '555'?

**Query :**

```SQL
SELECT *
FROM `sql_class_3_assignment`.`amazon`;
```

**Execution :**

![](./img/8_Viewing_amazon_customer_data.png)

To find out all the phone numbers that start with the area code '555' are

**Query :**

```SQL
SELECT `Phone Number`
FROM amazon
WHERE  `Phone Number` LIKE '555%';
```
**Execution :**

![](./img/9_half_solution_4.png)

Here, the query working well, but have you noticed we didn't get those phone numbers whose are code were written inside the parenthesis. like `(555)`

**Query :**

```SQL
SELECT `Phone Number`
FROM amazon
WHERE `Phone Number` LIKE '555%' OR `Phone Number` LIKE '(555)%';
```
**Execution :**

![](./img/10_full_solution_4.png)

### Question 5: How can you select all cities that start with 'New' followed by any characters?

**Query :**

```SQL
SELECT *
FROM `sql_class_3_assignment`.`phone_directory`;
```
**Execution :**

![](./img/11_viewing_the_phone_directory_table.png)

Now, let's filter all those cities at start with 'New' 

**Query :**

```SQL
SELECT `first_name`, `last_name`, `company_name`, `city`, `phone`
FROM `phone_directory`
WHERE `city` LIKE 'new%';
```
**Execution :**

![](./img/12_solution_5.png)

### Question 6: How do you find all records where the value in the 'description' column contains either 'apple' or 'orange'?

Firstly, view the table

**Query :**
```SQL
SELECT *
FROM `sql_class_3_assignment`.`food_inventory`;
```
**Execution :**

![](./img/13_viewing_food_inventory_table.png)

Records where the value in the 'description' column contains either 'apple' or 'orange'

**Query :**

```SQL
SELECT *
FROM `food_inventory`
WHERE `description` LIKE '%apple%' OR `description` LIKE '%orange%';
```
**Execution :**

![](./img/14_solution_6.png)

### Question 7:How can you retrieve all email addresses that follow the pattern of "user@domain.com"?

Let's take the `phone_directory` table and view it first.

**Query :**

```SQL
SELECT *
FROM `sql_class_3_assignment`.`phone_directory`;
```
**Execution :**

![](./img/15_view_of_phone_directory_table.png)

**Query :**

```SQL
SELECT `email`
FROM `phone_directory`
WHERE email LIKE '%@%.com'
```

**Execution :**

![](./img/16_solution_7.png)

### Question 8: How do you find all records where the 'product_code' is exactly four characters long and consists of letters and digits?

Let's look the `product` table

**Query :**

```SQL
SELECT *
FROM `sql_class_3_assignment`.`product`;
```
**Execution :**

![](./img/17_view_product_table.png)

lets solve the problem using REGEXP 

**Query :**

```SQL
SELECT *
FROM `product`
WHERE `product_code` REGEXP '^[a-zA-Z0-9]{4}$'
```
**Execution :**

![](./img/18_solution_8.png)
### Question 9: How can you retrieve all phone numbers that match the pattern '###-###-####'?

**Query :**

```SQL
SELECT *
FROM `sql_class_3_assignment`.`contacts`;
```
**Execution :**

![](./img/19_view_contact_table.png)

lets solve the problem using REGEXP

**Query :**

```SQL
SELECT `Phone_number`
FROM `contacts`
WHERE `Phone_number` REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$';
```
**Execution :**

![](./img/20_solution_9.png)

### Question 10: How do you find all records where the 'text' column contains two consecutive digits?

Let's first view the table `corpus`

**Query :**

```SQL
SELECT *
FROM `sql_class_3_assignment`.`corpus`;
```
**Execution :**

![](./img/21_viewing_text_data_table.png)

Now let's solve the Question here

**Query :**

```SQL
SELECT *
FROM `corpus`
WHERE `text` REGEXP '[0-9]{2}';
```
**Execution :**

![](./img/22_solution_10.png)

## NULL VALUES:

### Question 1: Find all employees whose birthdates are not recorded (NULL).

let's see the table

**Query :**

```SQL
SELECT *
FROM `sql_class_3_assignment`.`employees`;
```
**Execution :**

![](./img/23_viewing_employess_table.png)

let's solve this problem

**Query :**

```SQL
SELECT *
FROM `employees`
WHERE `birthdate` IS NULL;
```

**Execution :**

![](./img/24_solution_nullvalues_1.png)

### Question 2: List all orders that don't have a customer assigned (NULL customerID).

let's see the table

**Query :**

```SQL
SELECT * 
FROM `sql_class_3_assignment`.`customers`;
```
**Execution :**

![](./img/25_viewing_customers_table.png)
let's solve this problem

**Query :**

```SQL
SELECT `Order`, `OrderID`, `Country`
FROM `customers`
WHERE `CustomerID` IS NULL;
```
**Execution :**

![](./img/26_solution_nullvalues_2.png)

## FUNCTIONS:

- Consider a table named Sales with the following columns:

    **SaleID (integer):** The unique identifier for each sale.

    **Product (string):** The name of the product sold.

    **Quantity (integer):** The quantity of the product sold.

    **Price (decimal):** The price per unit of the product.

### Question 1: Find the total quantity sold for each product.

let's view `sales` table

**Query :**

```SQL
-- To view the table
SELECT *
FROM `sql_class_3_assignment`.`sales`;
```
**Execution :**

![](./img/27_view_sales_table.png)

let's solve this problem

**Query :**

```SQL
-- Solution
SELECT `Product`, SUM(Quantity) AS `Total_Qty_Sold`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `Product`;
```
**Execution :**

![](./img/28_solution_function_1.png)

### Question 2: Calculate the total revenue generated from each product (Total Revenue = Quantity * Price).

**Query :**

```SQL
SELECT `Product`, `Price`, SUM(Quantity) AS 'Total Quantity Sold', SUM(Quantity * Price) AS `Total Revenue`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `Product`, `Price`;
```
**Execution :**

![](./img/29_solution_function_2.png)

### Question 3: Determine the average price of each product.

**Query :**

```SQL
SELECT `Product`, AVG(`Price`) AS 'Average Price'
FROM `sql_class_3_assignment`.`sales`
GROUP BY `Price`;
```
**Execution :**

![](./img/30_solution_function_3.png)

### Question 4: Find the product with the highest total revenue (Quantity * Price)

**Query :**

```SQL
SELECT `Product`, `Price`, SUM(`Quantity` * `Price`) AS `Total Quantity Sold`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `Product`, `Price`
ORDER BY `Total Quantity Sold` DESC
LIMIT 1;
```

**Execution :**

![](./img/33_solution-function_para1_4.png)
### Question 5: Calculate the total quantity sold across all products.

**Query :**

```SQL
-- Solution
SELECT SUM(Quantity) AS OverAllQuantitySold
FROM `sql_class_3_assignment`.`sales`;
```
**Execution :**

![](./img/34_solution_function_para1_5.png)
### Question 6: Determine the average price of all products.

**Query :**

```SQL
SELECT AVG(`Price`) AS `OverALLAveragePrice`
FROM `SQL_class_3_assignment`.`sales`;
```
**Execution :**

![](./img/35_solution_function_para1_6.png)
- Consider a table named Products with the following columns:

    **ProductID (integer):** The unique identifier for each product.

    **ProductName (string):** The name of the product.

    **Price (decimal):** The price of the product.

### Question 1: Determine the square root of the price for each product.

let's view `products` table

**Query :**

```SQL
-- To view the table
SELECT *
FROM `sql_class_3_assignment`.`products`;
```
**Execution :**

![](./img/31_view_products_table.png)

**Query :**

```SQL
-- Solution
SELECT `ProductName`, `Price`, SQRT(`Price`) AS `Square Root`
FROM `sql_class_3_assignment`.`products`
GROUP BY `ProductName`, `Price`;
```

**Execution :**

![](./img/32_solution_function_2para_1.png)

### Question 2: Find the ceiling (smallest integer greater than or equal to) of the prices.

**Query :**

```SQL
SELECT `ProductName`, `Price`, CEIL(`Price`) AS `CeiledPrice`
FROM `sql_class_3_assignment`.`products`
```

**Execution :**

![](./img/36_solution_function_para2_2.png)
### Question 3: Calculate the floor (largest integer less than or equal to) of the prices.

**Query :**

```SQL
-- Solution
SELECT `ProductName`, `Price`, FLOOR(`Price`) AS `FlooredPrice`
FROM `sql_class_3_assignment`.`products`;
```

**Execution :**

![](./img/37_solution_function_para2_3.png)

- Consider a table named Orders with the following columns:

    **OrderID (integer):** The unique identifier for each order.

    **OrderDate (datetime):** The date and time when the order was placed.
    
    **DeliveryDate (datetime):** The date and time when the order was delivered.
    
### Question 1: Find the difference in days between the order date and delivery date for each order.

let's view `orders` table

**Query :**

```SQL
SELECT * 
FROM `sql_class_3_assignment`.`orders`;
```

**Execution :**

![](./img/38__veiw_orders_table.png)

**Query :**

```SQL
SELECT `OrderDate`, `DeliveryDate`, DATEDIFF(`DeliveryDate`, `OrderDate`) AS DelayInDeliveryInDays, TIMEDIFF(`DeliveryDate`, `OrderDate`) AS DelayInHours
FROM `sql_class_3_assignment`.`orders`;
```

**Execution :**

![](./img/39_solution_function_para3_1.png)

### Question 2: Calculate the total delivery time in hours for all orders.

**Query :**

```SQL
SELECT SUM(TIMESTAMPDIFF(HOUR, `OrderDate`, `DeliveryDate`)) AS TotalDeliveryTimeInHours
FROM `sql_class_3_assignment`.`orders`
```
**Execution :**

![](./img/40_solution_function_para3_2.png)

### Question 3: Determine the day of the week when each order was placed.

let's solve this problem

**Query :**

```SQL
SELECT `OrderID`, `ProductName`, DAYOFWEEK(`OrderDate`) AS DayOfWeek
FROM `sql_class_3_assignment`.`orders`;
```
**Execution :**

![](./img/41_solution_function_para3_3.png)

### Question 4: Find the orders that were placed on a Saturday (DayOfWeek = 7).

**Query :**

```SQL
SELECT `OrderID`, `ProductName`, `OrderDate`
FROM `sql_class_3_assignment`.`orders`
WHERE DAYOFWEEK(`OrderDate`) = 7;
```
**Execution :**

![](./img/42_solution_function_para3_4.png)

### Question 5: Calculate the average delivery time in days for all orders.

**Query :**

```SQL
SELECT AVG(DATEDIFF(`DeliveryDate`, `OrderDate`)) AS AverageDeliveryTimeInDays
FROM `sql_class_3_assignment`.`orders`;
```
**Execution :**

![](./img/43_solution_function_para3_5.png)

### Question 6: Find the orders that were delivered on the same day they were placed.

**Query :**

```SQL
SELECT `OrderID`, `ProductName`, `OrderDate`, DATEDIFF(`DeliveryDate`, `OrderDate`) AS `DeliveryDelayInDays`
FROM `sql_class_3_assignment`.`orders`
WHERE DATEDIFF(`DeliveryDate`, `OrderDate`) = 0;
```
**Execution :**

![](./img/44_solution_function_para3_6.png)

## GROUP BY, HAVING, ORDER BY

### Question 1: Consider a table named Orders with the following columns:
   
   **OrderID (integer):** The unique identifier for each order.
   
   **CustomerID (integer):** The unique identifier for each customer.
   
   **TotalAmount (decimal):** The total amount of the order.
### Write an SQL query to find the customer IDs of customers who have placed orders with a total amount greater than $1,000.

**Query :**

```SQL
SELECT `CustomerID`, `CustomerName`, `TotalAmount`
FROM `sql_class_3_assignment`.`orders`
GROUP BY `CustomerID`, `CustomerName`, `TotalAmount`
HAVING SUM(`TotalAmount`) > 1000;
```
**Execution :**

![](./img/45_Solution_GROUPBY_HAVING_ORDERBY_1.png)


### Question 2:Consider a table named Sales with the following columns:
    
**ProductID (integer):** The unique identifier for each product.
    
**SaleDate (date):** The date of the sale.
    
**QuantitySold (integer):** The quantity of the product sold on that date.

### Write an SQL query to find the product IDs of products that have been sold in quantities greater than 100 on at least three different sale dates.

**Query :**

```SQL
SELECT `ProductID`, `ProductName`, `Category`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `ProductID`, `ProductName`, `Category`
HAVING SUM(`QuantitySold`) > 100 AND COUNT(DISTINCT `SaleDate`) >= 3;
```

**Execution :**

![](./img/46_Solution_GROUPBY_HAVING_ORDERBY_2.png)

### Question 3:Consider a table named Employees with the following columns:

**EmployeeID (integer):** The unique identifier for each employee.

**Department (string):** The department in which the employee works.

**Salary (decimal):** The salary of the employee.

### Write an SQL query to find the average salary of employees in each department, but only for departments where the average salary is greater than $60,000.

**Query :**

```SQL
SELECT `Department`, AVG(Salary) AS `Average Salary`
FROM `sql_class_3_assignment`.`employee_s`
GROUP BY `Department`
HAVING AVG(Salary) > 60000
```
**Execution :**

![](./img/47_Solution_GROUPBY_HAVING_ORDERBY_3.png)

### Question 4:Consider a table named Students with the following columns:

**StudentID (integer):** The unique identifier for each student.

**Course (string):** The course name.

**Score (integer):** The score obtained by the student in the course.

### Write an SQL query to find the course names in which the average score of all students is greater than or equal to 80.

**Query :**

```SQL
SELECT `Course`, AVG(Score) AS `Average Score`
FROM `sql_class_3_assignment`.`student_s`
GROUP BY `Course`
HAVING AVG(`Score`) >= 80;
```
**Execution :**

![](./img/48_Solution_GROUPBY_HAVING_ORDERBY_4.png)

### Question 5: Consider a table named Employees with the following columns:

**EmployeeID (integer):** The unique identifier for each employee.

**Department (string):** The department in which the employee works.

**Salary (decimal):** The salary of the employee.

### Write an SQL query to find the department with the highest average salary.
**Query :**

```SQL
-- Solution
SELECT `Department` 
FROM `sql_class_3_assignment`.`employee_s`
GROUP BY `Department`
ORDER BY AVG(`Salary`) DESC
LIMIT 1;
```
**Execution :**

![](./img/49_Solution_GROUPBY_HAVING_ORDERBY_5.png)

### Question 6: Consider a table named Sales with the following columns:

**ProductID (integer):** The unique identifier for each product.
    
**SaleDate (date):** The date of the sale.
    
**QuantitySold (integer):** The quantity of the product sold on that date.

### Write an SQL query to find the product with the highest total quantity sold.
**Query :**

```SQL
SELECT`ProductName`
FROM `sql_class_3_assignment`.`sales`
GROUP BY `ProductName`
ORDER BY SUM(`QuantitySold`) DESC
LIMIT 1;
```
**Execution :**

![](./img/50_Solution_GROUPBY_HAVING_ORDERBY_6.png)

### Question 7: Consider a table named Students with the following columns:

**StudentID (integer):** The unique identifier for each student.

**Course (string):** The course name.

**Score (integer):** The score obtained by the student in the course.

### Write an SQL query to find the top three students with the highest average score across all courses.
**Query :**

```SQL
SELECT `StudentID`, `Course`, AVG(Score) AS `Average Score`
FROM `sql_class_3_assignment`.`student_s`
GROUP BY `StudentID`, `Course`
ORDER BY `Average Score` DESC
LIMIT 3;
```
**Execution :**

![](./img/51_Solution_GROUPBY_HAVING_ORDERBY_7.png)

### Question 8: Consider a table named Orders with the following columns:
   
   **OrderID (integer):** The unique identifier for each order.
   
   **CustomerID (integer):** The unique identifier for each customer.
   
   **TotalAmount (decimal):** The total amount of the order.

### Write an SQL query to find the total amount of orders placed by each customer, ordered in descending order of total amount.
**Query :**

```SQL
SELECT `CustomerID`, `CustomerName`, SUM(`TotalAmount`) AS `TotalAmountOfOrders`
FROM `sql_class_3_assignment`.`orders`
GROUP BY `CustomerID`, `CustomerName`
ORDER BY `TotalAmountOfOrders` DESC;
```
**Execution :**

![](./img/52_Solution_GROUPBY_HAVING_ORDERBY_8.png)

### Question 9: Consider a table named Books with the following columns:

**BookID (integer):** The unique identifier for each book.

**Author (string):** The author of the book.

**PublicationYear (integer):** The year the book was published.

### Write an SQL query to find the number of books published by each author in descending order of the count.
**Query :**

```SQL
SELECT `Author`, COUNT(`BookID`) AS `NumberOfBooks`
FROM `sql_class_3_assignment`.`books`
GROUP BY `Author`
ORDER BY `NumberOfBooks` DESC;
```
**Execution :**

![](./img/53_Solution_GROUPBY_HAVING_ORDERBY_9.png)

### Question 8: Consider a table named Orders with the following columns:
   
   **OrderID (integer):** The unique identifier for each order.
   
   **CustomerID (integer):** The unique identifier for each customer.
   
   **TotalAmount (decimal):** The total amount of the order.
### Write an SQL query to find the customer IDs of customers who have placed orders with a total amount greater than $1,000 and have placed at least two orders.
**Query :**

```SQL
SELECT `CustomerID`, `CustomerName`
FROM `sql_class_3_assignment`.`orders`
GROUP BY `CustomerID`, `CustomerName`
HAVING SUM(`TotalAmount`) > 1000 and COUNT(`OrderID`) >= 2;
```
**Execution :**

![](./img/54_Solution_GROUPBY_HAVING_ORDERBY_10.png)

### Question 11: Consider a table named Products with the following columns:

**ProductID (integer):** The unique identifier for each product.

**Category (string):** The category of the product.

**Price (decimal):** The price of the product.

### Write an SQL query to find the average price of products in each category, ordered by category name in ascending order.
**Query :**

```SQL
SELECT `Category`,AVG(`Price`) AS AveragePrice
FROM `sql_class_3_assignment`.`product_s`
GROUP BY `Category`
ORDER BY `Category`;
```
**Execution :**

![](./img/55_Solution_GROUPBY_HAVING_ORDERBY_11.png)

### Question 12: Consider a table named Employees with the following columns:

**EmployeeID (integer):** The unique identifier for each employee.

**Department (string):** The department in which the employee works.

**Salary (decimal):** The salary of the employee.

### Write an SQL query to find the department(s) with the lowest average salary.

**Query :**

```SQL
-- Solution
SELECT `Department`,AVG(`Salary`) AS AverageSalary
FROM `sql_class_3_assignment`.`employee_s`
GROUP BY `Department`
ORDER BY AVG(`Salary`) ASC;
```
**Execution :**

![](./img/56_Solution_GROUPBY_HAVING_ORDERBY_12.png)

### Question 13: Consider a table named Orders with the following columns:

**OrderID (integer):** The unique identifier for each order.

**CustomerID (integer):** The unique identifier for each customer.

**OrderDate (date):** The date of the order.

**TotalAmount (decimal):** The total amount of the order.

### Write an SQL query to find the customer IDs of customers who have placed orders with a total amount greater than $500 in the year 2023, ordered by customer ID in ascending order.

**Query :**

```SQL
SELECT `CustomerID`, `CustomerName`, YEAR(`OrderDate`) AS `RequiredYear`
FROM `sql_class_3_assignment`.`orders`
GROUP BY `CustomerID`, `CustomerName`, `RequiredYear`
HAVING SUM(`TotalAmount`) > 500 AND RequiredYear = 2023;
```
**Execution :**

![](./img/57_Solution_GROUPBY_HAVING_ORDERBY_13.png)

### Question 14: Consider a table named Students with the following columns:

**StudentID (integer):** The unique identifier for each student.

**Course (string):** The course name.

**Score (integer):** The score obtained by the student in the course.
### Write an SQL query to find the course names in which the highest score achieved by any student is greater than or equal to 90, ordered by course name in ascending order

**Query :**

```SQL
SELECT `Course`, MAX(`Score`) AS `max_score`
FROM `sql_class_3_assignment`.`student_s`
GROUP BY `Course`
HAVING `max_score` >= 90
ORDER BY `Course` ASC;
```
**Execution :**

![](./img/58_Solution_GROUPBY_HAVING_ORDERBY_14.png)

### Question 15: Consider a table named Orders with the following columns:

**OrderID (integer):** The unique identifier for each order.

**CustomerID (integer):** The unique identifier for each customer.

**OrderDate (date):** The date of the order.

**TotalAmount (decimal):** The total amount of the order.
### Write an SQL query to find the customer IDs of customers who have placed orders with a total amount greater than $500 in the year 2023 and have placed at least two orders
in that year.
**Query :**

```SQL
SELECT `CustomerID`, `ProductName`
FROM `sql_class_3_assignment`.`orders`
WHERE EXTRACT(YEAR FROM `OrderDate`)=2023
GROUP BY `CustomerID`, `ProductName`
HAVING SUM(`TotalAmount`) > 500 AND COUNT(`OrderID`) >= 2;
```
**Execution :**

![](./img/59_Solution_GROUPBY_HAVING_ORDERBY_15.png)

### Question 16: Consider a table named Students with the following columns:

**StudentID (integer):** The unique identifier for each student.

**Course (string):** The course name.

**Score (integer):** The score obtained by the student in the course.
### Write an SQL query to find the course names where the average score of students who scored less than 70 in at least one course is greater than or equal to 80.
**Query :**

```SQL
SELECT `Course`
FROM `sql_class_3_assignment`.`student_s`
GROUP BY `Course`
HAVING COUNT(CASE WHEN Score < 70 THEN 1 ELSE NULL END) > 0 AND AVG(Score) >= 80;
```
**Execution :**

![](./img/60_Solution_GROUPBY_HAVING_ORDERBY_16.png)

### Question 17: Consider a table named Employees with the following columns:

**EmployeeID (integer):** The unique identifier for each employee.

**Department (string):** The department in which the employee works.

**Salary (decimal):** The salary of the employee.
### Write an SQL query to find the departments where the highest salary is greater than $80,000 and the total number of employees in that department is at least 5.
**Query :**

```SQL
SELECT `Department`
FROM `sql_class_3_assignment`.`employee_s`
GROUP BY `Department`
HAVING MAX(`Salary`) > 80000 AND COUNT(`EmployeeID`) >= 5;
```
**Execution :**

![](./img/61_Solution_GROUPBY_HAVING_ORDERBY_17.png)

### Question 18: Consider a table named Products with the following columns:

**ProductID (integer):** The unique identifier for each product.

**Category (string):** The category of the product.

**Price (decimal):** The price of the product.
### Write an SQL query to find the categories where the average price of products is greater than or equal to $50, and the maximum price within that category is greater than $100.
**Query :**

```SQl
-- Solution
SELECT `Category`
FROM `sql_class_3_assignment`.`product_s`
GROUP BY `Category`
HAVING AVG(`Price`) >= 50 AND MAX(`Price`) > 100;
```
**Execution :**

![](./img/62_Solution_GROUPBY_HAVING_ORDERBY_18.png)

### Question 19: Consider a table named Orders with the following columns:

**OrderID (integer):** The unique identifier for each order.

**CustomerID (integer):** The unique identifier for each customer.

**OrderDate (date):** The date of the order.

**TotalAmount (decimal):** The total amount of the order.
### Write an SQL query to find the customer IDs of customers who have placed orders with a total amount greater than $1,000 in any single order and have placed orders on at least three different dates.

**Query :**

```SQL
-- Solution
SELECT `CustomerID`
FROM `sql_class_3_assignment`.`orders`
GROUP BY `CustomerID`
HAVING MAX(`TotalAmount`) AND COUNT(DISTINCT `OrderDate`) >= 3;
```

**Execution :**

![](./img/63_Solution_GROUPBY_HAVING_ORDERBY_19.png)

<hr>

**Submitted By: Arpit Dubey**<br>
**Email ID: aarpitdubey@gmail.com**<br>
**LinkedIn: [click here](https://www.linkedin.com/in/aarpitdubey/)**<br>
**Github  : [click here](https://github.com/aarpitdubey)**
<hr>