SELECT 
    Customer_ID,
    Month,
    SUM(Total_Amount) AS monthly_spent
FROM retail_sales
GROUP BY Customer_ID, Month
ORDER BY monthly_spent DESC
LIMIT 10;
