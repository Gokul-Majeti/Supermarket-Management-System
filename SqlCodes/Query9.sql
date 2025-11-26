-- Query: Suppliers with Total Purchase Order Value > 10000
SELECT 
    s.Supplier_ID,
    s.Supplier_Name,
    s.City,
    s.Payment_Terms,
    COUNT(po.PO_ID) AS Total_Orders,
    SUM(po.Total_Amount) AS Total_Order_Value,
    ROUND(AVG(po.Total_Amount), 2) AS Avg_Order_Value
FROM Supplier s
INNER JOIN Purchase_Order po ON s.Supplier_ID = po.Supplier_ID
GROUP BY s.Supplier_ID, s.Supplier_Name, s.City, s.Payment_Terms
HAVING SUM(po.Total_Amount) > 8000
ORDER BY Total_Order_Value DESC;
