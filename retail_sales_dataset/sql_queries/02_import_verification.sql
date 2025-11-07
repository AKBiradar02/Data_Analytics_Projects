-- =====================================================
-- FILE: 02_import_verification.sql
-- PROJECT: Retail Sales Performance Analysis
-- PURPOSE: Verify that the dataset was imported correctly
-- AUTHOR: Abhay Biradar
-- =====================================================

-- Step 1: Use the project database
USE retail_sales_db;

-- Step 2: Check number of rows (should match CSV record count)
SELECT COUNT(*) AS total_rows
FROM retail_sales;

-- Step 3: View first 10 records for data sanity check
SELECT *
FROM retail_sales
LIMIT 10;

-- Step 4: Check data types and table schema
DESCRIBE retail_sales;

-- Step 5: Check for any NULL or missing values (should be 0 for all columns)
SELECT 
    SUM(CASE WHEN Transaction_ID IS NULL THEN 1 ELSE 0 END) AS missing_transaction_id,
    SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS missing_date,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS missing_customer_id,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS missing_gender,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS missing_age,
    SUM(CASE WHEN Product_Category IS NULL THEN 1 ELSE 0 END) AS missing_product_category,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS missing_quantity,
    SUM(CASE WHEN Price_per_Unit IS NULL THEN 1 ELSE 0 END) AS missing_price,
    SUM(CASE WHEN Total_Amount IS NULL THEN 1 ELSE 0 END) AS missing_total_amount
FROM retail_sales;

-- Step 6: Check for duplicates (by Transaction_ID)
SELECT 
    Transaction_ID, 
    COUNT(*) AS duplicate_count
FROM retail_sales
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;
