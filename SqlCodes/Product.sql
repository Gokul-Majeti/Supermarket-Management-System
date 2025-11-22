CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(200) NOT NULL,
    Category_ID INT NOT NULL,
    Unit_Price DECIMAL(10,2) NOT NULL,
    Stock_Quantity INT DEFAULT 0,
    Unit VARCHAR(20),
    Barcode VARCHAR(50) UNIQUE,
    Expiry_Date DATE,
    Manufacturing_Date DATE,
    Description TEXT,
    Brand VARCHAR(100),
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);
