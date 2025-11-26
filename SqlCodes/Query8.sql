-- Query : Products Sold More Than or equal to 3 Times
SELECT 
    p.Product_ID,
    p.Product_Name,
    p.Brand,
    COUNT(bi.Bill_Item_ID) AS Times_Sold,
    SUM(bi.Quantity) AS Total_Quantity_Sold,
    SUM(bi.Subtotal) AS Total_Revenue
FROM Product p
INNER JOIN Bill_Item bi ON p.Product_ID = bi.Product_ID
GROUP BY p.Product_ID, p.Product_Name, p.Brand
HAVING COUNT(bi.Bill_Item_ID) >= 3
ORDER BY Times_Sold DESC, Total_Revenue DESC;
