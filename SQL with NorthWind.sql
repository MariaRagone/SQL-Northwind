USE Northwind
--1
--SELECT * FROM Customers;
--2
--SELECT Country FROM Customers;
--3
--SELECT * FROM Customers
--WHERE CustomerID LIKE 'BL%' 
--4 Get the first 100 records of the orders table. DISCUSS: Why would you do this? What else would you likely need to include in this query?
--SELECT TOP 100 * FROM Orders;
--you would do this to sort by the first 100 orders who purchased, you could also include a sorting filter by shipped date, or employee ID
--5 Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
--SELECT * FROM Customers
--WHERE PostalCode = '1010' OR PostalCode = '3012' OR PostalCode  = '12209' OR PostalCode = '05023';
--6 Get all orders where the ShipRegion is not equal to NULL.
--SELECT * FROM Orders
--WHERE ShipRegion IS NOT NULL
--7 Get all customers ordered by the country, then by the city.
--SELECT * FROM Customers
--ORDER BY Country, City;
--8 Add a new customer to the customers table. You can use whatever values.
--SELECT * FROM Orders
--INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
--VALUES ('Null', 'ABC Company', 'Batman', 'Mr. Money', '1089 lkj;lk', 'Detroit', 'MI', '48562', 'USA', 1258-725-5874, 12542567852)
--9 Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France.  
--UPDATE Orders
--SET ShipRegion = 'EuroZone'
--WHERE ShipCountry = 'France';
--10 Delete all orders from OrderDetails that have quantity of 1. 
--DELETE FROM [Order Details]
--WHERE Quantity = 1; 
--SELECT * FROM [Order Details];
--11 Find the CustomerID that placed order 10290 (orders table).
--SELECT CustomerID FROM Orders
--WHERE OrderID = 10290
--12 Join the orders table to the customers table.
--SELECT * FROM Customers
--FULL JOIN Orders ON Customers.CustomerID = Orders.CustomerID
--13 Get employees’ firstname for all employees who report to no one.
--SELECT FirstName FROM Employees
--WHERE ReportsTo is Null;
--14 Get employees’ firstname for all employees who report to Andrew.
--SELECT FirstName FROM Employees
--Where ReportsTo = (Select EmployeeID FROM Employees WHERE FirstName = 'Andrew');



--SELECT Student.[Name], Class.Title FROM Student
--LEFT JOIN Class ON Student.Class_id = Class.id
--WHERE Class.Title = '.NET' ORDER BY Student.[Name]

--Extra Challenges:
--1 Calculate the average, max, and min of the quantity at the orderdetails table, grouped by the orderid. 

SELECT AVG () FROM [Order Details]
--common calculations
--SELECT COUNT(*) FROM Tickets
--WHERE Num_sold >0;

--SELECT SUM(Num_sold) FROM Tickets;
--SELECT AVG (Price) FROM Tickets;
--SELECT MAX (Num_sold) FROM Tickets;
--SELECT MIN (Price) FROM Tickets;








