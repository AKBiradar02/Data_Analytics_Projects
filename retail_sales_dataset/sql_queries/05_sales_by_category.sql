-- =====================================================
-- FILE: 05_sales_by_category.sql
-- PROJECT: Retail Sales Performance Analysis
-- PURPOSE: Analyze total sales, average spending, and transactions per product category
-- AUTHOR: Abhay Biradar
-- =====================================================

-- Step 1: Select the project database
USE retail_sales_db;

-- Step 2: Calculate sales performance by product category
SELECT 
    Product_Category,
    SUM(Total_Amount) AS total_sales,
    ROUND(AVG(Total_Amount), 2) AS avg_order_value,
    COUNT(*) AS total_transactions,
    ROUND(SUM(Total_Amount) * 100 / (SELECT SUM(Total_Amount) FROM retail_sales), 2) AS percentage_contribution
FROM retail_sales
GROUP BY Product_Category
ORDER BY total_sales DESC;
