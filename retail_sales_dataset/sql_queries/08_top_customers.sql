-- =====================================================
-- FILE: 08_top_customers.sql
-- PROJECT: Retail Sales Performance Analysis
-- PURPOSE: Identify top 10 highest spending customers and their purchase behavior
-- AUTHOR: Abhay Biradar
-- =====================================================


-- Step 1: Use the project database
USE retail_sales_db;

-- Step 2: Find the top 10 customers by total spending

SELECT
    Customer_ID,
    COUNT(*) AS total_transactions,
    SUM(Total_Amount) AS total_spent,
    ROUND(AVG(Total_Amount), 2) AS avg_order_value
FROM retail_sales
GROUP BY Customer_ID
ORDER BY total_spent DESC
LIMIT 10;