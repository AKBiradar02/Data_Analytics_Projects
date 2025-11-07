SELECT
    Customer_ID,
    Product_Category,
    SUM(Total_Amount) AS total_spent
FROM retail_sales
GROUP BY Customer_ID, Product_Category
ORDER BY total_spent DESC
LIMIT 10;