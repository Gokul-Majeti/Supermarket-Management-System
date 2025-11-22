CREATE TABLE Purchase_Order_Item (
    Product_ID INT,
    PO_ID INT,
    Quantity INT NOT NULL,
    Unit_Price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (Product_ID, PO_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (PO_ID) REFERENCES Purchase_Order(PO_ID)
);
