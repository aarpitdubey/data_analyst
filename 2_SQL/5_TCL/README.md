# TCL (Transaction Control Language)

- Transactions are sequences of one or more SQL statements that are excuted as a single unit of work.

- Each transaction must follow the principles of being consistent, isolated, durable, and atomic - collectively known as the ACID properties.

- TCL contains 3 commands:

1. **COMMIT**
2. **ROLEBACK**
3. **SAVEPOINT**
<br><br>

**1. COMMIT**
<hr>

- It is used to permanently save the changes made within a transaction to the database. It indicates that the changes are complete and should be made permanent.
<hr>

<br><br>

**2. ROLEBACK**
<hr>

- It is used to **Undo** all the changes made within a transaction and restore the database to the state it was in before the transaction started. It is typically used when something goes wrong during the transaction or when something goes wrong during the transaction goes wrong during the transaction or when you want to discard the changes for any reason.
<hr>

<br><br>

**3. SAVEPOINT**
<hr>

- It is used to define a point within a transaction to which you can later roll back. This allows you to undo chnages only up to a specific point within the transaction, rather than rolling back the entire transaction.

<hr>
