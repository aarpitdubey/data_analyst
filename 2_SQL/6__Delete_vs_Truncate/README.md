
|Delete|Truncate|
|---|---|
|1. It is used to remove rows from table. A Where Clause can be used to remove only some rows.|1. It removes all rows form a table. It is faster & does not use as much undo space as Delete|
|2. It is a DML cdommand, it only removes rows from a table, leaving the table structure untouched.|2. It is a DDL command, it involves managing the table's storage at a higher level than individual data manipulation.|
|3. In DELETE, use can ROLLBACK|3. In TRUNCATE, you cannot ROLLBACK|
---------------------------------------------------------------
