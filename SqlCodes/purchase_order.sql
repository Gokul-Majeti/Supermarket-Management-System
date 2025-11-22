CREATE TABLE Purchase_Order (
    PO_ID INT PRIMARY KEY,
    Supplier_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Expected_Delivery_Date DATE,
    Actual_Delivery_Date DATE,
    Status VARCHAR(20) DEFAULT 'Pending',
 Total_Amount DECIMAL(12,2),
    Employee_ID INT NOT NULL,
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
