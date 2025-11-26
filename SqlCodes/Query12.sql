-- Query : Most Expensive Product in Each Category (Correlated subquery)
SELECT 
    p.Product_ID,
    p.Product_Name,
    p.Brand,
    c.Category_Name,
    p.Unit_Price
FROM Product p
INNER JOIN Category c ON p.Category_ID = c.Category_ID
WHERE p.Unit_Price = (
    SELECT MAX(p2.Unit_Price)
    FROM Product p2
    WHERE p2.Category_ID = p.Category_ID
)
ORDER BY c.Category_Name;
