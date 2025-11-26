-- Query : Products with their category and supplier details (Multiple INNER JOINs)
SELECT 
    p.Product_ID,
    p.Product_Name,
    p.Brand,
    c.Category_Name,
    p.Unit_Price,
    p.Stock_Quantity,
    s.Supplier_Name,
    s.City AS Supplier_City
FROM Product p
INNER JOIN Category c ON p.Category_ID = c.Category_ID
INNER JOIN Product_Supplier ps ON p.Product_ID = ps.Product_ID
INNER JOIN Supplier s ON ps.Supplier_ID = s.Supplier_ID
ORDER BY c.Category_Name, p.Product_Name;
