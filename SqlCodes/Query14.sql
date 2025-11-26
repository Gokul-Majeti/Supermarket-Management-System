-- Query : Update Purchase Order status to Received
UPDATE Purchase_Order
SET Status = 'Received',
    Actual_Delivery_Date = CURDATE()
WHERE PO_ID = 11 
  AND Status = 'Pending';
