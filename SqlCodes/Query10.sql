-- Query : Daily Sales Summary by Payment Method
SELECT 
    b.Bill_Date,
    p.Payment_Method,
    COUNT(b.Bill_ID) AS Number_Of_Bills,
    SUM(b.Total_Amount) AS Total_Sales,
    SUM(b.Discount_Amount) AS Total_Discounts,
    SUM(p.Amount_Paid) AS Total_Collected,
    ROUND(AVG(p.Amount_Paid), 2) AS Average_Transaction
FROM Bill b
INNER JOIN Payment p ON b.Bill_ID = p.Bill_ID
GROUP BY b.Bill_Date, p.Payment_Method
ORDER BY b.Bill_Date DESC, Total_Collected DESC;	
