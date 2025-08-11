--SOLUTION/ANSWERS TO MY WEEK 2 ASSIGNMENT ON DATABASE DESIGN

-- (1️) Retrieve specific columns from the payments table
-- This gets the check number, payment date, and amount paid
SELECT checkNumber, paymentDate, amount
FROM payments;

-- (2️) Get orders that are currently 'In Process'
-- Filter by status = 'In Process' and sort newest orders first
SELECT orderDate, requiredDate, `status` --I used `` in status because MySQL recognizes status as a reserved keyword
FROM orders
WHERE `status` = 'In Process' --I used `` in status because MySQL recognizes status as a reserved keyword
ORDER BY orderDate DESC;

-- (3) List Sales Representatives
-- Show their first name, last name, and email, 
-- sorted by employee number in descending order
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- (4) Retrieve all columns and data from the office table,
-- The * symbol selects every table in the column
SELECT *
FROM offices;

--(5) Display product name and stock quantity
-- Sorted by buy price ascending, Limited to 5 products 
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;