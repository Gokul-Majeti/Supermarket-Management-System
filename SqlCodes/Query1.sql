--Query : Update Subtotal in Bill_Item (Derived Attribute)
SET sql_safe_updates =0;
UPDATE Bill_Item
SET Subtotal = (Quantity * Unit_Price) - Discount;
