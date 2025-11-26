--Query : Update Total_Amount and other derived attributes in Bill
UPDATE Bill b
SET 
    Total_Amount = (
        SELECT SUM(Quantity * Unit_Price) 
        FROM Bill_Item 
        WHERE Bill_ID = b.Bill_ID
    ),
    Discount_Amount = (
        SELECT SUM(Discount) 
        FROM Bill_Item 
        WHERE Bill_ID = b.Bill_ID
    ),
    Tax_Amount = (
        SELECT ROUND(SUM((Quantity * Unit_Price) - Discount) * 0.18, 2)
        FROM Bill_Item 
        WHERE Bill_ID = b.Bill_ID
    ),
    Net_Amount = (
        SELECT ROUND(SUM((Quantity * Unit_Price) - Discount) * 1.18, 2)
        FROM Bill_Item 
        WHERE Bill_ID = b.Bill_ID
    );
