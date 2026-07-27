CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50)
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Customers (FirstName, LastName, Email, City) VALUES
('Rahul','Sharma','rahul@gmail.com','Delhi'),
('Priya','Verma','priya@gmail.com','Mumbai'),
('Amit','Singh','amit@gmail.com','Jaipur'),
('Sneha','Gupta','sneha@gmail.com','Pune'),
('Rohan','Mehta','rohan@gmail.com','Chandigarh');
INSERT INTO Products (ProductName, Category, Price) VALUES
('Laptop','Electronics',65000),
('Mobile','Electronics',25000),
('Headphones','Accessories',3000),
('Keyboard','Accessories',1500),
('Smart Watch','Electronics',8000);
INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate) VALUES
(1,1,1,'2026-07-01'),
(2,2,2,'2026-07-02'),
(3,3,3,'2026-07-03'),
(4,5,1,'2026-07-04'),
(5,4,2,'2026-07-05');
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Customers
WHERE City='Delhi';
SELECT * FROM Products
ORDER BY Price DESC;
SELECT Category,
COUNT(*) AS TotalProducts
FROM Products
GROUP BY Category;
SELECT
Customers.FirstName,
Products.ProductName,
Orders.Quantity
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID
INNER JOIN Products
ON Orders.ProductID=Products.ProductID;
SELECT
Customers.FirstName,
Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
SELECT
Products.ProductName,
Orders.OrderID
FROM Orders
RIGHT JOIN Products
ON Orders.ProductID=Products.ProductID;
SELECT
SUM(Quantity)
FROM Orders;
SELECT
AVG(Price)
FROM Products;
SELECT
COUNT(*)
FROM Customers;
SELECT *
FROM Products
WHERE Price >
(
SELECT AVG(Price)
FROM Products
);
CREATE VIEW CustomerOrders AS
SELECT
Customers.FirstName,
Products.ProductName,
Orders.Quantity
FROM Orders
JOIN Customers
ON Orders.CustomerID=Customers.CustomerID
JOIN Products
ON Orders.ProductID=Products.ProductID;
SELECT * FROM CustomerOrders;
CREATE INDEX idx_productname
ON Products(ProductName);
SHOW INDEX FROM Products;
