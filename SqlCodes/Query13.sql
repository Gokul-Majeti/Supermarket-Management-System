-- Query : Update stock quantity after receiving a purchase order
UPDATE Product p
SET Stock_Quantity = Stock_Quantity + (
    SELECT SUM(poi.Quantity)
    FROM Purchase_Order_Item poi
    WHERE poi.Product_ID = p.Product_ID 
      AND poi.PO_ID = 1
)
WHERE p.Product_ID IN (
    SELECT Product_ID 
    FROM Purchase_Order_Item 
    WHERE PO_ID = 1
);
