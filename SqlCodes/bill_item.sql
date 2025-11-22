CREATE TABLE Bill_Item (
    Bill_Item_ID INT PRIMARY KEY,
    Bill_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Unit_Price DECIMAL(10,2) NOT NULL,
    Discount DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY (Bill_ID) REFERENCES Bill(Bill_ID),
    Subtotal DECIMAL(10,2),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
