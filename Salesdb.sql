CREATE DATABASE SalesDashboardDB;
USE SalesDashboardDB;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    join_date DATE
);
INSERT INTO Customers VALUES
(1,'John','Smith','Male','john.smith@email.com','9876543210','New York','NY','USA','2023-01-10'),
(2,'Emma','Johnson','Female','emma.j@email.com','9876543211','Los Angeles','CA','USA','2023-02-12'),
(3,'Michael','Brown','Male','michael.b@email.com','9876543212','Chicago','IL','USA','2023-02-25'),
(4,'Olivia','Davis','Female','olivia.d@email.com','9876543213','Houston','TX','USA','2023-03-14'),
(5,'William','Miller','Male','william.m@email.com','9876543214','Phoenix','AZ','USA','2023-04-01'),
(6,'Sophia','Wilson','Female','sophia.w@email.com','9876543215','Seattle','WA','USA','2023-04-18'),
(7,'James','Moore','Male','james.m@email.com','9876543216','Boston','MA','USA','2023-05-02'),
(8,'Ava','Taylor','Female','ava.t@email.com','9876543217','Dallas','TX','USA','2023-05-15'),
(9,'Benjamin','Anderson','Male','ben.a@email.com','9876543218','Denver','CO','USA','2023-06-10'),
(10,'Isabella','Thomas','Female','isa.t@email.com','9876543219','Miami','FL','USA','2023-06-20'),
(11,'Daniel','Jackson','Male','dan.j@email.com','9876543220','San Diego','CA','USA','2023-07-01'),
(12,'Mia','White','Female','mia.w@email.com','9876543221','Austin','TX','USA','2023-07-12'),
(13,'Matthew','Harris','Male','mat.h@email.com','9876543222','Atlanta','GA','USA','2023-08-01'),
(14,'Charlotte','Martin','Female','char.m@email.com','9876543223','Orlando','FL','USA','2023-08-18'),
(15,'David','Thompson','Male','david.t@email.com','9876543224','Las Vegas','NV','USA','2023-09-01'),
(16,'Amelia','Garcia','Female','amelia.g@email.com','9876543225','Portland','OR','USA','2023-09-14'),
(17,'Joseph','Martinez','Male','jose.m@email.com','9876543226','Detroit','MI','USA','2023-10-01'),
(18,'Harper','Robinson','Female','harper.r@email.com','9876543227','Charlotte','NC','USA','2023-10-19'),
(19,'Samuel','Clark','Male','sam.c@email.com','9876543228','Columbus','OH','USA','2023-11-05'),
(20,'Evelyn','Rodriguez','Female','eve.r@email.com','9876543229','Indianapolis','IN','USA','2023-11-20'),
(21,'Henry','Lewis','Male','hen.l@email.com','9876543230','Nashville','TN','USA','2023-12-02'),
(22,'Abigail','Lee','Female','abi.l@email.com','9876543231','Kansas City','MO','USA','2023-12-10'),
(23,'Alexander','Walker','Male','alex.w@email.com','9876543232','San Jose','CA','USA','2024-01-01'),
(24,'Emily','Hall','Female','em.h@email.com','9876543233','San Antonio','TX','USA','2024-01-15'),
(25,'Sebastian','Allen','Male','seb.a@email.com','9876543234','Jacksonville','FL','USA','2024-02-01'),
(26,'Ella','Young','Female','ella.y@email.com','9876543235','Fort Worth','TX','USA','2024-02-12'),
(27,'Jack','King','Male','jack.k@email.com','9876543236','Columbus','OH','USA','2024-03-01'),
(28,'Scarlett','Scott','Female','scarlett.s@email.com','9876543237','Indianapolis','IN','USA','2024-03-12'),
(29,'Owen','Green','Male','owen.g@email.com','9876543238','Austin','TX','USA','2024-04-01'),
(30,'Grace','Adams','Female','grace.a@email.com','9876543239','Boston','MA','USA','2024-04-15');
--
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
INSERT INTO Products VALUES
(101,'Laptop','Electronics',900),
(102,'Mobile Phone','Electronics',600),
(103,'Headphones','Electronics',150),
(104,'Smart Watch','Electronics',200),
(105,'Tablet','Electronics',400),
(106,'Office Chair','Furniture',250),
(107,'Desk','Furniture',300),
(108,'Sofa','Furniture',800),
(109,'Dining Table','Furniture',700),
(110,'Bookshelf','Furniture',180),
(111,'T-Shirt','Clothing',25),
(112,'Jeans','Clothing',60),
(113,'Jacket','Clothing',120),
(114,'Sneakers','Clothing',90),
(115,'Dress','Clothing',75),
(116,'Blender','Home Appliances',130),
(117,'Microwave','Home Appliances',220),
(118,'Refrigerator','Home Appliances',1000),
(119,'Air Conditioner','Home Appliances',1200),
(120,'Washing Machine','Home Appliances',850);
--
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
--
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
--
CREATE TABLE Returns (
    return_id INT PRIMARY KEY,
    order_detail_id INT,
    return_date DATE,
    reason VARCHAR(100),
    refund_amount DECIMAL(10,2),
    FOREIGN KEY (order_detail_id) REFERENCES Order_Details(order_detail_id)
);
--
INSERT INTO Orders VALUES
(1001,1,'2024-01-05',1500),
(1002,2,'2024-01-10',600),
(1003,3,'2024-01-12',250),
(1004,4,'2024-01-15',1200),
(1005,5,'2024-01-18',800),
(1006,6,'2024-01-20',300),
(1007,7,'2024-01-22',450),
(1008,8,'2024-01-25',900),
(1009,9,'2024-01-28',200),
(1010,10,'2024-02-01',1000),
(1011,11,'2024-02-05',850),
(1012,12,'2024-02-07',400),
(1013,13,'2024-02-10',700),
(1014,14,'2024-02-12',180),
(1015,15,'2024-02-15',90),
(1016,16,'2024-02-18',600),
(1017,17,'2024-02-20',250),
(1018,18,'2024-02-22',120),
(1019,19,'2024-02-25',75),
(1020,20,'2024-03-01',1500),
(1021,21,'2024-03-05',600),
(1022,22,'2024-03-07',250),
(1023,23,'2024-03-10',1200),
(1024,24,'2024-03-12',800),
(1025,25,'2024-03-15',300),
(1026,26,'2024-03-18',450),
(1027,27,'2024-03-20',900),
(1028,28,'2024-03-22',200),
(1029,29,'2024-03-25',1000),
(1030,30,'2024-03-28',850);
--
INSERT INTO Order_Details VALUES
(1,1001,101,1,900),
(2,1001,103,2,150),
(3,1002,102,1,600),
(4,1003,106,1,250),
(5,1004,119,1,1200),
(6,1005,108,1,800),
(7,1006,107,1,300),
(8,1007,105,1,400),
(9,1007,111,2,25),
(10,1008,101,1,900),
(11,1009,104,1,200),
(12,1010,118,1,1000),
(13,1011,120,1,850),
(14,1012,105,1,400),
(15,1013,109,1,700),
(16,1014,110,1,180),
(17,1015,114,1,90),
(18,1016,102,1,600),
(19,1017,106,1,250),
(20,1018,113,1,120),
(21,1019,115,1,75),
(22,1020,101,1,900),
(23,1020,118,1,1000),
(24,1021,102,1,600),
(25,1022,106,1,250),
(26,1023,119,1,1200),
(27,1024,108,1,800),
(28,1025,107,1,300),
(29,1026,105,1,400),
(30,1027,101,1,900);
--
INSERT INTO Returns VALUES
(1,2,'2024-01-15','Damaged Product',300),
(2,5,'2024-01-25','Wrong Item',1200),
(3,11,'2024-02-05','Not Satisfied',200),
(4,17,'2024-02-20','Size Issue',90),
(5,20,'2024-03-01','Defective',120),
(6,23,'2024-03-10','Damaged',1000),
(7,24,'2024-03-15','Late Delivery',600),
(8,27,'2024-03-20','Changed Mind',800),
(9,29,'2024-03-22','Not Needed',400),
(10,10,'2024-01-30','Defective',900);
Select * from Customers
Select * from Products
Select * from Orders
Select * from Order_Details
Select * from Returns