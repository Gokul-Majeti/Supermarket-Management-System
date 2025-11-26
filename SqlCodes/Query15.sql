-- Query: Categories with Average Product Price > 100
SELECT 
    c.Category_ID,
    c.Category_Name,
    COUNT(p.Product_ID) AS Number_Of_Products,
    ROUND(AVG(p.Unit_Price), 2) AS Average_Product_Price,
    MIN(p.Unit_Price) AS Cheapest_Product,
    MAX(p.Unit_Price) AS Most_Expensive_Product
FROM Category c
INNER JOIN Product p ON c.Category_ID = p.Category_ID
GROUP BY c.Category_ID, c.Category_Name
HAVING AVG(p.Unit_Price) > 100
ORDER BY Average_Product_Price DESC;
