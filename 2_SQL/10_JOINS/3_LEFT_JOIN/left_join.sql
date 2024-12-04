USE `sql_joins`

SHOW TABLES;

SELECT * FROM `sql_joins`.`customers`;

SELECT * FROM `sql_joins`.`sales`;


-- LEFT JOIN customers and sales tables on customer_id
SELECT `s`.`sale_id`, `c`.`customer_name`, `s`.`total_amount`
FROM `sql_joins`.`sales` `s` LEFT JOIN `sql_joins`.`customers` `c`
ON `s`.`customer_id` = `c`.`customer_id`