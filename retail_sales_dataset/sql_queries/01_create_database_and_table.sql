-- =====================================================
-- FILE: 01_create_database_and_table.sql
-- PROJECT: Retail Sales Performance Analysis
-- PURPOSE: Create the project database and table structure
-- AUTHOR: Abhay Biradar
-- =====================================================

-- Step 1: Create database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS retail_sales_db;

-- Step 2: Use the database
USE retail_sales_db;

-- Step 3: Create the retail_sales table structure
CREATE TABLE IF NOT EXISTS retail_sales (
    Transaction_ID INT,
    Date DATE,
    Customer_ID VARCHAR(20),
    Gender VARCHAR(10),
    Age INT,
    Product_Category VARCHAR(50),
    Quantity INT,
    Price_per_Unit FLOAT,
    Total_Amount FLOAT,
    Month VARCHAR(20),
    Year INT,
    Age_Group VARCHAR(50)
);

-- Step 4: Confirm table creation
SHOW TABLES;
