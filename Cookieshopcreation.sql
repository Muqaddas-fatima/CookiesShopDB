CREATE DATABASE CookieShop;
USE CookieShop;

CREATE TABLE Customers ( Cust_ID INT Primary Key Identity, 
Cust_name varchar(255) NOT NULL, 
Cust_contact varchar(255),
Cust_pref varchar(255));

CREATE TABLE Employee ( Emp_ID INT Primary Key Identity, 
Emp_name varchar(255) NOT NULL, 
Emp_role varchar(255),
Emp_shift varchar(255));

CREATE TABLE Orders ( order_ID INT Primary Key Identity, 
Order_Date Date NOT NULL, 
Total_price decimal(10,2),
Order_Status varchar(255));

CREATE TABLE Cookies ( Cookie_ID INT Primary Key Identity, 
Cookie_name varchar(255),
Flavour varchar(255),
cookie_price decimal(5,2));

CREATE TABLE Order_details ( 
orderdet_ID INT Primary Key Identity, 
order_ID INT,
Cookie_ID INT,
order_Qnt INT NOT NULL,
FOREIGN KEY (order_ID) REFERENCES Orders(order_ID),
FOREIGN KEY (Cookie_ID) REFERENCES Cookies(Cookie_ID));

CREATE TABLE Ingredients ( Ingr_ID INT Primary Key Identity, 
Ingr_name varchar(255),
Stock_level INT);

CREATE TABLE Ingr_details ( 
Ingrdet_ID INT Primary Key Identity, 
Ingr_ID INT,
Cookie_ID INT,
Ingr_Qnt INT NOT NULL,
FOREIGN KEY (Ingr_ID) REFERENCES Ingredients(Ingr_ID),
FOREIGN KEY (Cookie_ID) REFERENCES Cookies (Cookie_ID));

CREATE TABLE Supplier ( Sup_ID INT Primary Key Identity, 
sup_name varchar(255),
sup_contact varchar(255)
);

CREATE TABLE Sup_details ( 
supdet_ID INT Primary Key Identity, 
Ingr_ID INT,
Sup_ID INT,
Ingr_Qnt INT NOT NULL,
FOREIGN KEY (Ingr_ID) REFERENCES Ingredients(Ingr_ID),
FOREIGN KEY (Sup_ID) REFERENCES Supplier (Sup_ID));

EXEC sp_help 'Orders'; 

INSERT INTO Customers (Cust_name, Cust_contact, Cust_pref)
VALUES ('Muqs', '123-456', 'Chocolate Chip'),
('Fatima', '987-654', 'Hazel'),
('Sidra', '555-123', 'Peanut Butter');

INSERT INTO Employee (Emp_name, Emp_role, Emp_shift)
VALUES 
('Ali', 'Baker', 'Morning'),
('Hamid', 'Cashier', 'Afternoon'),
('Ahmed', 'Manager', 'Morning');

INSERT INTO Orders (Order_Date, Total_price, Order_Status)
VALUES 
('10-07-2024', 1000, 'Completed'),
('2024-07-02', 23.00, 'Pending'),
('2024-07-03', 1275, 'Completed');