-- =====================================================
-- FILE: 03_total_sales_summary.sql
-- PURPOSE: Calculate total revenue, total transactions,
--          and average order value from retail sales data.
-- AUTHOR: Abhay Biradar
-- =====================================================

USE retail_sales_db;

SELECT
	COUNT(*) total_transaction,
    SUM(Total_Amount) AS total_revenue,
    ROUND(AVG(Total_Amount), 2) AS avg_order_value

FROM retail_sales;
