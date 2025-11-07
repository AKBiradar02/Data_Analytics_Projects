SELECT 
    Product_Category,
    Gender,
    SUM(Total_Amount) AS total_sales
FROM retail_sales
GROUP BY Product_Category, Gender
ORDER BY Product_Category, total_sales DESC;
