USE salesDB;
/*Question 1*/
SELECT e.firstName, 
       e.lastName, 
       e.email, 
       o.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;
/*Question 2*/
USE salesDB;
SELECT p.productName,
       p.productVendor,
       pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;
/*Question 3*/
USE salesDB;

SELECT o.orderDate,
       o.shippedDate,
       o.status,
       o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10; --limit is 10 entries

