CREATE DATABASE SalesAnalyticsDB;
USE SalesAnalyticsDB;

CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    City VARCHAR(100),
    Country VARCHAR(100),
    FullName VARCHAR(150)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(150)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100)
);

CREATE TABLE ProductBudgets (
    ProductID INT PRIMARY KEY,
    Budget2017 DECIMAL(18,2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE SalesOrders (
    OrderNumber VARCHAR(20) PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Channel VARCHAR(50),
    CurrencyCode VARCHAR(10),
    WarehouseCode VARCHAR(50),
    RegionID INT,
    ProductID INT,
    OrderQuantity INT,
    UnitPrice DECIMAL(18,2),
    LineTotal DECIMAL(18,2),
    TotalUnitCost DECIMAL(18,2),

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

SELECT 
    s.OrderNumber,
    s.OrderDate,
    c.CustomerName,
    p.ProductName,
    r.Country,
    s.OrderQuantity,
    s.LineTotal
FROM SalesOrders s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Products p ON s.ProductID = p.ProductID
JOIN Regions r ON s.RegionID = r.RegionID
LIMIT 10;


































