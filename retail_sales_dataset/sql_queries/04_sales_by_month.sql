-- =====================================================
-- FILE: 04_sales_by_month.sql
-- PROJECT: Retail Sales Performance Analysis
-- PURPOSE: Analyze total sales trend across months
-- AUTHOR: Abhay Biradar
-- =====================================================

# project database

USE retail_sales_db;

-- calculate total sales for each month in calender order

SELECT
    Month,
    SUM(Total_Amount) AS total_sales,
    ROUND(AVG(Total_Amount), 2) AS avg_order_value,
    COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY Month
ORDER BY FIELD(Month,
              'January','February','March','April','May','June',
    'July','August','September','October','November','December');