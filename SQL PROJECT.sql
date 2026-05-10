CREATE DATABASE sales_project;
USE sales_project;
CREATE TABLE sales(
Row_ID INT,
Order_ID VARCHAR(50),
Ship_Date VARCHAR(50),
Ship_Mode VARCHAR(50),
Customer_ID VARCHAR(50),
Customer_Name VARCHAR(50),
Segment VARCHAR(50),
Country VARCHAR(50),
City VARCHAR(50),
State VARCHAR(50),
Poastal_Code INT,
Region VARCHAR(50),
Product_ID VARCHAR(50),
Category VARCHAR(50),
Sub_Category VARCHAR(50),
Product_Name VARCHAR(50),
Sales float,
Quantity INT,
Discount FLOAT,
Profit FLOAT);
DROP TABLE sales;
SELECT * FROM train LIMIT 10;
RENAME TABLE train TO sales;
SELECT * FROM sales LIMIT 10;
SELECT SUM(Sales) AS Total_Sales
FROM sales;
SELECT CATEGORY,
SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Region,
Sum(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT Sub_Category,
Sum(Sales) AS Total_Sales
FROM sales
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;
SELECT Category,
Sum(Sales) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT `Sub-Category`,
       SUM(Sales) AS Total_Sales
FROM sales
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT `Product Name`,
       profit
FROM sales
WHERE profit < 0
ORDER BY profit ASC
LIMIT 10;
DESCRIBE sales;