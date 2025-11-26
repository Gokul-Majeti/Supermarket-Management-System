-- Query : Get products expiring within 30 days
SELECT 
    Product_ID,
    Product_Name,
    Brand,
    Expiry_Date,
    Stock_Quantity,
    DATEDIFF(Expiry_Date, CURDATE()) AS Days_Until_Expiry
FROM Product
WHERE Expiry_Date <= DATE_ADD(CURDATE(), INTERVAL 30 DAY)
  AND Stock_Quantity > 0
ORDER BY Expiry_Date ASC
