-- Query : Employee Sales Performance Report
SELECT 
    e.Employee_ID,
    CONCAT(e.First_Name, ' ', e.Last_Name) AS Employee_Name,
    e.Position,
    e.Department,
    COUNT(b.Bill_ID) AS Total_Bills_Processed,
    SUM(b.Total_Amount) AS Total_Sales,
    SUM(b.Discount_Amount) AS Total_Discounts_Given,
    SUM(b.Net_Amount) AS Total_Revenue,
    ROUND(AVG(b.Net_Amount), 2) AS Average_Bill_Amount,
    MAX(b.Net_Amount) AS Highest_Bill,
    MIN(b.Net_Amount) AS Lowest_Bill
FROM Employee e
INNER JOIN Bill b ON e.Employee_ID = b.Employee_ID
GROUP BY e.Employee_ID, e.First_Name, e.Last_Name, e.Position, e.Department
ORDER BY Total_Revenue DESC;
