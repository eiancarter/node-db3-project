-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName
FROM Product
JOIN Category ON Product.CategoryId = Category.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, CompanyName
FROM [Order] as O
JOIN Shipper as S
ON O.ShipVia=S.Id
WHERE OrderDate >= '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT *
FROM [Order]
WHERE
  Id = 10251
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Id, LastName, CompanyName
FROM [Order] AS O
JOIN Employee AS E ON O.EmployeeId = E.Id
JOIN Customer AS C ON O.CustomerId = C.Id
