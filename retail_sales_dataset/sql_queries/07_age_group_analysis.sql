-- =====================================================
-- FILE: 07_age_group_analysis.sql
-- PROJECT: Retail Sales Performance Analysis
-- PURPOSE: Identify high-value customer segments by age group
-- AUTHOR: Abhay Biradar
-- =====================================================

-- Step 1: Use the project database
USE retail_sales_db;

-- Step 2: Aggregate total and average sales by age group
SELECT 
    Age_Group,
    COUNT(*) AS total_transactions,
    SUM(Total_Amount) AS total_sales,
    ROUND(AVG(Total_Amount), 2) AS avg_order_value,
    ROUND(SUM(Total_Amount) * 100 / (SELECT SUM(Total_Amount) FROM retail_sales), 2) AS percent_contribution
FROM retail_sales
GROUP BY Age_Group
ORDER BY total_sales DESC;
