-- Query : Update Total_Amount in Purchase_Order (Derived Attribute)
UPDATE Purchase_Order po
SET Total_Amount = (
    SELECT SUM(Quantity * Unit_Price)
    FROM Purchase_Order_Item
    WHERE PO_ID = po.PO_ID
);
