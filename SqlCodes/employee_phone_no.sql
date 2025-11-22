CREATE TABLE Employee_Phone_No (
    Employee_ID INT,
    Phone_No VARCHAR(15),
    PRIMARY KEY (Employee_ID, Phone_No),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
