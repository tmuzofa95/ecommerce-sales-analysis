CREATE DATABASE ecommerce;
GO

USE ecommerce;

CREATE TABLE online_retail (
    invoiceno NVARCHAR(20),
    stockcode NVARCHAR(20),
    description NVARCHAR(255),
    quantity INT,
    invoicedate DATETIME,
    unitprice FLOAT,
    customerid NVARCHAR(20),
    country NVARCHAR(100),
    totalprice FLOAT
);