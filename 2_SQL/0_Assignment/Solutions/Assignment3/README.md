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

