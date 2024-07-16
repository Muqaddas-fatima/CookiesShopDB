--INSERTING DATA INTO TABLES: 


INSERT INTO Customers (Cust_name, Cust_contact, Cust_pref)
VALUES ('Muqs', '123-456', 'Chocolate Chip'),
('Fatima', '987-654', 'Hazel'),
('Sidra', '555-123', 'Peanut Butter');

INSERT INTO Customers (Cust_name, Cust_contact, Cust_pref)
VALUES ('Malaika', '1243356', 'Double Chocolate'),
('Sana', '98722654', 'Simple'),
('Sara', '535-123', 'Peanut Butter');

SELECT * FROM Customers;

INSERT INTO Employee (Emp_name, Emp_role, Emp_shift)
VALUES 
('Ali', 'Baker', 'Morning'),
('Hamid', 'Cashier', 'Afternoon'),
('Ahmed', 'Manager', 'Morning');

INSERT INTO Employee (Emp_name, Emp_role, Emp_shift)
VALUES 
('Alian', 'Baker', 'Evening'),
('Hashir', 'Cashier', 'Night'),
('Hamaad', 'Manager', 'Evening');

SELECT * FROM Orders;

--Updating Emp_ID and Cust_ID for OrderID 1,2 and 3 in ORDERS table
UPDATE Orders SET Emp_ID ='1', Cust_ID ='5' WHERE order_ID='1';
UPDATE Orders SET Emp_ID ='5', Cust_ID ='6' WHERE order_ID='2';
UPDATE Orders SET Emp_ID ='3', Cust_ID ='7' WHERE order_ID='3';


INSERT INTO Orders (Order_Date, Total_price, Order_Status, Emp_ID,Cust_ID )
VALUES 
('10-07-2024', 1000, 'Completed', '1', '1'),
('2024-07-02', 23.00, 'Pending','2', '3'),
('2024-07-03', 1275, 'Completed','1', '4');

SELECT * FROM Customers;



--DELETE FROM Customers WHERE Cust_ID=2;
INSERT INTO Customers (Cust_name, Cust_contact, Cust_pref)
VALUES ('Panda', '12333-456', 'Chocolate Chip');

SELECT * FROM Cookies; --first check the column names
INSERT INTO Cookies (Cookie_name, Flavour, cookie_price)
VALUES 
('Chocolate Chip', 'Chocolate', 2.50),
('Hazel', 'Hazelnut', 2.00),
('Peanut Butter', 'Peanut', 2.75),
('Simple', 'Vanilla', 2.25),
('Double Chocolate', 'Chocolate', 2.50);


SELECT * FROM Order_details; 

INSERT INTO Order_details (order_ID, Cookie_ID, order_Qnt)
VALUES 
(1, 1, 3),
(2, 2, 5),
(3, 3, 2),
(4, 4, 4),
(5, 5, 1);

-- Insert data into Ingredients table

SELECT * FROM Ingredients; 
INSERT INTO Ingredients (Ingr_name, Stock_level)
VALUES 
('Flour', 100),
('Sugar', 200),
('Butter', 150),
('Eggs', 180),
('Chocolate Chips', 120);


-- Insert data into Ingr_details table
SELECT * FROM Ingr_details; 

INSERT INTO Ingr_details (Ingr_ID, Cookie_ID, Ingr_Qnt)
VALUES 
(1, 1, 50),
(2, 2, 30),
(3, 3, 40),
(4, 4, 25),
(5, 5, 20);

-- Data into Supplier table

SELECT * FROM Supplier; 
INSERT INTO Supplier (sup_name, sup_contact)
VALUES 
('Supplier A', '1231231234'),
('Supplier B', '2342352345'),
('Supplier C', '3453453456'),
('Supplier D', '4564564567'),
('Supplier E', '5675675678');

SELECT * FROM Sup_details; 
INSERT INTO Sup_details (Ingr_ID, Sup_ID, Ingr_Qnt)
VALUES 
(1, 1, 50),
(2, 2, 100),
(3, 3, 75),
(4, 4, 60),
(5, 5, 80);


DELETE FROM Customers WHERE Cust_ID=1;

SELECT * FROM Orders;