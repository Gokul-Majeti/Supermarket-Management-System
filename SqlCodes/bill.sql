CREATE TABLE Bill (
    Bill_ID INT PRIMARY KEY,
    Bill_Date DATE NOT NULL,
    Bill_Time TIME NOT NULL,
    Customer_ID INT,
    Employee_ID INT NOT NULL,
    Total_Amount DECIMAL(10,2),
    Discount_Amount DECIMAL(10,2) DEFAULT 0,
    Tax_Amount DECIMAL(10,2),
    Net_Amount DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
