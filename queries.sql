-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select *
from Product
join Category on Product.CategoryId = Category.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Order.Id, Shipper.CompanyName, Order.OrderDate
FROM Order
INNER JOIN Shipper
ON Order.CustomerId=Shippers.Id
WHERE OrderDate BETWEEN 0000/00/00 AND 2012/08/09;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
