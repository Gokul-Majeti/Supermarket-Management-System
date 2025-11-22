CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Middle_Name VARCHAR(50),
    Last_Name VARCHAR(50) NOT NULL,
    Date_Of_Birth DATE,
    Gender CHAR(1),
    Email VARCHAR(100) UNIQUE,
    Street VARCHAR(100),
    Area VARCHAR(100),
    Landmark VARCHAR(100),
    Position VARCHAR(50) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Hire_Date DATE NOT NULL,
    Manager_ID INT,
    FOREIGN KEY (Manager_ID) REFERENCES Employee(Employee_ID)
);
