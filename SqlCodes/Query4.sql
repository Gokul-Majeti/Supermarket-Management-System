-- Query : Get all Premium customers with their purchase history
SELECT 
    c.Customer_ID,
    CONCAT(c.First_Name, ' ', IFNULL(c.Middle_Name, ''), ' ', c.Last_Name) AS Full_Name,
    c.Phone_Number,
    c.Email,
    c.Membership_Type
FROM Customer c
WHERE c.Membership_Type = 'Premium'
ORDER BY c.Last_Name, c.First_Name;
