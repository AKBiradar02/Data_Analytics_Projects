SELECT 
    Age_Group,
    Gender,
    SUM(Total_Amount) AS total_sales,
    COUNT(*) AS transactions
FROM retail_sales
GROUP BY Age_Group, Gender
ORDER BY Age_Group, total_sales DESC;
