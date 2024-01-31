### Auto-filling Feature:

The auto-fill feature in Microsoft Excel is a powerful tool that allows users to quickly and easily populate cells with a series of data.

- Useful when dealing with sequences or patterns, such as numerical or chronological data.

- Auto-fill can save time 

When using the auto-fill feature to populate a series of years in Excel, such as from 2018 to 2023, users can follow these steps:

1. Begin by entering the starting value in the first cell, in this case 2018.
2.  Then, enter 2019 in the second-botton cell and select both the cells using `Shift` key from keyboard then, move the cursor to the bottom-right corner of the cell containing the value 2019. The cursor should change to a small black cross, indicating the fill handle.

3. Click and drag the fill handle down to the desired end value, in this case 2023. As you drag, Excel will automatically populate the cells with the sequential years.

![Autofilling Feature](./images/Auto_Filling_feature.gif)

### Number Formats (or) Data Types Conversion Features

- You use number format to change the format of the data provided.

- Here, we use Auto-filling feature in Profit column and then use the Number Formatting section to use the feature.

![](./images/DataFormat.png)

- Using the feature we change the Profit data into currency format as shown below:

![currency format](./images/currencyFormat.gif)

### Removing Decimal Values from profit column data.

- You can use the same Number Format Feature to remove the decimal from the data.

- You can also add `%` (percentage) sign etc., to format the numerical data.

![Remove Numerical Data](./images/removeDecimalValues.gif)

# Big FIVE Concept

1. SUM
2. AVG
3. MIN
4. MAX
5. COUNT

- Two ways to perform these above operation
    - Perform it using the fuction provided in formulas bar and select the pre-defined functionality
    - Our the recommended, manually type these formulas like this inside a cell

    `=Function(args*)`

# 1. SUM()

- let's look how we can perform sum() of data
    suppose we have some profit and we have to calculate the sum of profit so simply we can use:
    
    `= SUM(d1, d2, d3, ..., dn)`

    ![Sum function](./images/SUM_function.gif)

- OR we can use range without mentioning each column and row values

    `= SUM(d1 : dn)`


    ![](./images/SUM_function_ranging.gif)


# 2. AVERAGE()

- To find the average of data we use `=AVERAGE(d1, d2, d3, ..., dn)` in this case it's the profit column data.

![Average of data](./images/AVG_function_1.gif)

- We can perform same by using range like
`=AVERAGE(d1:dn)`

![](./images/AVG_Function_2.gif)

# MIN()

- To find out the minimum value amonst the values in given data we use 
`=MIN(d1:dn)`
let's find the minimum profit from the profit column.

![](./images/MIN_Function.gif)

# MAX()

- find out the maimum value amonst the values given in data we use
`=MAX(d1:dn)`
let's find the maximum profit from the profit column.

![](./images/MAX_function.gif)

# COUNT()

- To count the selected data from the dataset we use `=COUNT(d1:dn)` or To count the numbner of data we use `=COUNT(d1:dn)`

![](./images/COUNT_function.gif)

**Note :** We can use BIG FIVE for values in another sheet too.
like : SUM()

![](./images/SUM_function_for_another_sheet.gif)