CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;
show tables;
select*from orders;
-- Sales performance Dashboards
-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM orders;
-- Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM orders;
-- Total orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM orders;
-- Sales by Category
SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM orders
GROUP BY Category;
-- Sales by Region
SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM orders
GROUP BY Region;
-- Customer Segmentation (RFM Analysis Preparation)
-- Recency
SELECT `Customer ID`,
       MAX(`Order Date`) AS Last_Order_Date
FROM orders
GROUP BY `Customer ID`;
-- Frequency
SELECT `Customer ID`,
       COUNT(DISTINCT `Order ID`) AS Frequency
FROM orders
GROUP BY `Customer ID`;
-- Monetary 
SELECT `Customer ID`,
       ROUND(SUM(Sales),2) AS Monetary
FROM orders
GROUP BY `Customer ID`;
-- Product Profitability Analysis
-- Profit by Category
SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Category;
-- Profit by Sub-Category
SELECT `Sub-Category`,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY `Sub-Category`;
-- Top Profitable Products
SELECT `Product Name`,
       ROUND(SUM(Profit),2) AS Profit
FROM orders
GROUP BY `Product Name`
ORDER BY Profit DESC
LIMIT 10;
-- Customer Retention / Churn Metrics
-- Repeat Customers
SELECT `Customer ID`,
       COUNT(DISTINCT `Order ID`) AS Orders_Count
FROM orders
GROUP BY `Customer ID`
HAVING COUNT(DISTINCT `Order ID`) > 1;
-- Customer Purchase Frequency
SELECT `Customer ID`,
       COUNT(DISTINCT `Order ID`) AS Frequency
FROM orders
GROUP BY `Customer ID`
ORDER BY Frequency DESC;
-- Revenue Forecasting
-- Monthly Revenue
SELECT YEAR(`Order Date`) AS Year,
       MONTH(`Order Date`) AS Month,
       ROUND(SUM(Sales),2) AS Revenue
FROM orders
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Year, Month;
