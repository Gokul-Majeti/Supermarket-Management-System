-- Query 20: Products that have NEVER been sold (NOT IN subquery)
SELECT 
    Product_ID,
    Product_Name,
    Brand,
    Category_ID,
    Unit_Price,
    Stock_Quantity,
    Manufacturing_Date
FROM Product
WHERE Product_ID NOT IN (
    SELECT DISTINCT Product_ID 
    FROM Bill_Item
)
ORDER BY Product_Name;
