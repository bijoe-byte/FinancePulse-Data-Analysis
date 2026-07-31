CREATE DATABASE IF NOT EXISTS FinancePulse;

USE FinancePulse;

CREATE TABLE financepulse (
    Record_ID INT PRIMARY KEY,
    Transaction_Date DATE,
    Year INT,
    Quarter VARCHAR(10),
    Month VARCHAR(20),
    Region VARCHAR(50),
    Country VARCHAR(50),
    Business_Unit VARCHAR(100),
    Department VARCHAR(100),
    Product_Category VARCHAR(100),
    Sales_Channel VARCHAR(50),
    Customer_Segment VARCHAR(50),
    Payment_Method VARCHAR(50),
    Invoice_Status VARCHAR(50),
    Revenue DECIMAL(15,2),
    Cost DECIMAL(15,2),
    Profit DECIMAL(15,2),
    Profit_Margin DECIMAL(10,2),
    Profit_Percentage DECIMAL(10,2),
    ROI DECIMAL(10,2),
    Risk_Score DECIMAL(10,2),
    Forecast_Accuracy DECIMAL(10,2),
    Operating_Expense DECIMAL(15,2),
    Employee_ID INT,
    Customer_Rating DECIMAL(3,2),
    Fiscal_Year INT
);

SELECT * FROM financepulse;

SELECT COUNT(*) AS Total_Records
FROM financepulse;

SELECT
SUM(Revenue) AS Total_Revenue,
SUM(Profit) AS Total_Profit,
SUM(Cost) AS Total_Cost
FROM financepulse;

SELECT COUNT(*) AS Total_Transactions
FROM financepulse;

SELECT COUNT(DISTINCT Employee_ID) AS Total_Customers
FROM financepulse;

SELECT
Month,
SUM(Revenue) AS Revenue
FROM financepulse
GROUP BY Month;

SELECT
Region,
SUM(Revenue) AS Revenue
FROM financepulse
GROUP BY Region
ORDER BY Revenue DESC;

SELECT
Product_Category,
SUM(Revenue) AS Revenue
FROM financepulse
GROUP BY Product_Category
ORDER BY Revenue DESC;

SELECT
Business_Unit,
SUM(Revenue) AS Revenue
FROM financepulse
GROUP BY Business_Unit
ORDER BY Revenue DESC
LIMIT 5;

SELECT
Invoice_Status,
COUNT(*) AS Total_Invoices
FROM financepulse
GROUP BY Invoice_Status;

SELECT
Payment_Method,
SUM(Revenue) AS Revenue,
SUM(Profit) AS Profit,
SUM(Cost) AS Cost
FROM financepulse
GROUP BY Payment_Method;

SELECT
Department,
SUM(Operating_Expense) AS Total_Expense
FROM financepulse
GROUP BY Department;

SELECT
Year,
SUM(Revenue) AS Revenue,
SUM(Profit) AS Profit
FROM financepulse
GROUP BY Year
ORDER BY Year;