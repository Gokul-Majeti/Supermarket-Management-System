CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Bill_ID INT NOT NULL,
    Payment_Date DATE NOT NULL,
    Payment_Method VARCHAR(50) NOT NULL,
    Amount_Paid DECIMAL(10,2) NOT NULL,
    Transaction_ID VARCHAR(100),
    Payment_Status VARCHAR(20) DEFAULT 'Completed',
    FOREIGN KEY (Bill_ID) REFERENCES Bill(Bill_ID)
);
