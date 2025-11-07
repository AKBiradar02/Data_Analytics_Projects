-- =====================================================
-- FILE: 06_gender_wise_spending.sql
-- PROJECT: Retail Sales Performance Analysis
-- PURPOSE: Analyze sales behavior and spending pattern by gender
-- AUTHOR: Abhay Biradar
-- =====================================================

-- Step 1: Use the project database
USE retail_sales_db;

-- Step 2: Compare total and average spending across genders
SELECT 
    Gender,
    COUNT(*) AS total_transactions,
    SUM(Total_Amount) AS total_sales,
    ROUND(AVG(Total_Amount), 2) AS avg_order_value,
    ROUND(SUM(Total_Amount) * 100 / (SELECT SUM(Total_Amount) FROM retail_sales), 2) AS percent_contribution
FROM retail_sales
GROUP BY Gender
ORDER BY total_sales DESC;
