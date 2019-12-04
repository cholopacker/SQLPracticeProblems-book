-- INTRODUCTORY PROBLEMS

--1 Which shippers do we have?
SELECT * FROM shippers;

--2 Certain fields from Categories
SELECT CategoryName, Description FROM Categories;

--3 Sales Representatives
SELECT FirstName, LastName, HireDate
	FROM Employees
	WHERE Title = 'Sales Representative';

--4 Sales Representatives in the United States
SELECT FirstName, LastName, HireDate, Country
	FROM Employees
	WHERE Title = 'Sales Representative' AND Country = 'USA';

--5 Order placeds by specific EmployeeID
SELECT OrderID, OrderDate
	FROM Orders
	WHERE EmployeeID = 5;

--6 Suppliers and ContacTitles
SELECT SupplierID, ContactName, ContactTitle
	FROM Suppliers
	WHERE ContactTitle != 'MarketingManager'; -- The unequal operator can also be <>

--7 Products with "queso" in ProductName
SELECT PRoductID, ProductName
	FROM Products
	WHERE ProductName LIKE '%queso%';

--8 Orders shipping to France or Belgium
SELECT OrderID, CustomerID, ShipCountry
	FROM Orders
	WHERE ShipCountry = 'France' OR ShipCountry = 'Belgium';

--9 Orders shipping to any country in Latin America
SELECT OrderID, CustomerID, ShipCountry
	FROM Orders
	WHERE ShipCountry IN ('Brazil', 'Mexico', 'Venezuela', 'Argentina');

--10 Employees, in order of age
SELECT FirstName, LastName, Title, BirthDate
	FROM Employees
	ORDER BY BirthDate;

--11 Showing only the Date with a DateTime field
SELECT FirstName, LastName, Title, CONVERT(date, BirthDate) AS DateOnlyBirthDate
	FROM Employees
	ORDER BY BirthDate;

--12 Employees full name
SELECT FirstName, LastName, CONCAT(FirstName, ' ',LastName) AS FullName
	FROM Employees;

--13 OrderDetails amount per line item
SELECT OrderID, ProductID, UnitPrice, Quantity, (UnitPrice * Quantity) AS TotalPrice
	FROM OrderDetails;

--14 How many customers?
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
	FROM Customers;

--15 When was the first order?
SELECT MIN(OrderDate) AS FirstOrder
	FROM Orders;

--16 Countries where there are customers
SELECT DISTINCT(Country)
	FROM Customers;

--17 Contact titles for customers
SELECT ContactTitle, COUNT(ContactTitle) AS TotalContacTitle
	FROM Customers
	GROUP BY ContactTitle
	ORDER BY TotalContacTitle DESC;

--18 Products with associated supplier names
SELECT ProductID, ProductName, Suppliers.CompanyName AS Supplier
	FROM Products
	JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
	ORDER BY ProductID;

--19 Orders and the Shipper that was used
--Previous exploratory queries
SELECT DISTINCT(ShipVia) FROM Orders;
SELECT ShipperID FROM Shippers;
SELECT COLUMN_NAME, TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_NAME = 'Orders' OR TABLE_NAME = 'Shippers'
 ORDER BY COLUMN_NAME;
--Answer
SELECT OrderID, CONVERT(date, OrderDate) AS OrderDate, Shippers.CompanyName AS Shipper
	FROM Orders
	JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
	WHERE OrderID < 10270
	ORDER BY OrderID;

-- END OF INTRODUCTORY PROBLEMS

-- INTERMEDIATE PROBLEMS

--20 Categories, and the total products in each category


--21 Total customers per country/city


--22


--23


--24


--25


--26


--27


--28


--29


--30 Customers with no orders


--31 Customers with no orders for EmployeeID 4


-- END OF INTERMEDIATE PROBLEMS

-- ADVANCED PROBLEMS

--32 High-value customers


--33 High-value customers—total orders


--34 High-value customers—with discount


--35 Month-end orders


--36 Orders with many line items


--37 Orders—random assortment


--38 Orders—accidental double-entry 


--39 Orders—accidental double-entry details


--40


--41


--42


--43


--44


--45


--46


--47


--48


--49


--50


--51


--52


--53


--54


--55 First order in each country


--56 Customers with multiple orders in 5 day period


--57 Customers with multiple orders in 5 day period, version 2


-- END OF ADVANCED PROBLEMS