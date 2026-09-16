create database sample;
use sample;
create table customers(
customer_id int primary key,
customer_name varchar(50),
email varchar(100),
city varchar(50),
registration_date date
);

insert into customers values
(1,'Rahul Sharma','rahul.sharma@gmail.com','Hyderabad','2022-01-15'),
(2,'Priya Reddy','priya.reddy@yahoo.com','Chennai','2022-03-20'),
(3,'Arjun Kumar','arjun.kumar@gmail.com','Bangalore','2023-01-10'),
(4,'Sneha Rao','sneha.rao@outlook.com','Hyderabad','2023-05-18'),
(5,'Kiran Patel','kiran.patel@gmail.com','Mumbai','2023-08-25'),
(6,'Anjali Verma','anjali.verma@yahoo.com','Delhi','2024-01-05'),
(7,'Vikram Singh','vikram.singh@gmail.com','Mumbai','2024-02-14'),
(8,'Bhanu Prakash','bhanu.prakash@gmail.com','Vijayawada','2024-06-10'),
(9,'Ravi Teja','ravi.teja@outlook.com','Hyderabad','2025-01-20'),
(10,'Meena Devi','meena.devi@gmail.com','Chennai','2025-03-12'),
(11,'Ajay Kumar','ajay.kumar@yahoo.com','Bangalore','2025-07-01'),
(12,'Divya Rani','divya.rani@gmail.com','Delhi','2026-01-15');

create table products(
product_id int primary key,
product_name varchar(100),
category varchar(50),
price decimal(10,2),
launch_date date
);

insert into products values
(101,'Laptop Pro','Electronics',75000.00,'2022-01-10'),
(102,'Wireless Mouse','Electronics',1500.00,'2022-04-15'),
(103,'Mechanical Keyboard','Electronics',4500.00,'2022-08-20'),
(104,'Office Chair','Furniture',12000.00,'2023-02-10'),
(105,'Study Desk','Furniture',18000.00,'2023-06-15'),
(106,'Headphones Pro','Electronics',6500.00,'2023-09-01'),
(107,'Smart Watch','Wearables',9000.00,'2024-01-20'),
(108,'USB Hub','Electronics',2500.00,'2024-04-10'),
(109,'Gaming Monitor','Electronics',28000.00,'2024-08-15'),
(110,'Backpack','Accessories',3000.00,'2025-01-05'),
(111,'Webcam HD','Electronics',5500.00,'2025-03-20'),
(112,'Standing Desk','Furniture',22000.00,'2025-07-10');

create table orders(
order_id int primary key,
customer_id int,
product_id int,
quantity int,
order_date date,
delivery_date date,
status varchar(20)
);

insert into orders values
(1001,1,101,1,'2024-01-10','2024-01-14','Delivered'),
(1002,2,102,2,'2024-01-15','2024-01-18','Delivered'),
(1003,3,103,1,'2024-02-05','2024-02-10','Delivered'),
(1004,1,106,2,'2024-02-20','2024-02-25','Delivered'),
(1005,4,104,1,'2024-03-10','2024-03-15','Delivered'),
(1006,5,105,2,'2024-03-25','2024-04-02','Delivered'),
(1007,6,107,1,'2024-04-05','2024-04-10','Delivered'),
(1008,7,109,1,'2024-04-20','2024-04-28','Delivered'),
(1009,8,108,3,'2024-05-12','2024-05-16','Delivered'),
(1010,2,101,1,'2024-06-01','2024-06-06','Delivered'),
(1011,9,110,2,'2025-01-05','2025-01-09','Delivered'),
(1012,10,111,1,'2025-01-20','2025-01-25','Delivered'),
(1013,3,109,2,'2025-02-14','2025-02-20','Delivered'),
(1014,11,112,1,'2025-03-01','2025-03-08','Delivered'),
(1015,1,107,2,'2025-03-15','2025-03-20','Delivered'),
(1016,4,102,3,'2025-04-10','2025-04-15','Cancelled'),
(1017,5,106,1,'2025-05-05','2025-05-12','Delivered'),
(1018,6,109,1,'2025-06-18','2025-06-25','Delivered'),
(1019,7,105,2,'2025-07-10','2025-07-18','Delivered'),
(1020,8,101,1,'2025-08-01','2025-08-06','Delivered'),
(1021,9,103,2,'2026-01-10','2026-01-15','Delivered'),
(1022,10,104,1,'2026-01-25','2026-01-31','Delivered'),
(1023,11,110,3,'2026-02-14','2026-02-20','Delivered'),
(1024,12,111,2,'2026-03-05','2026-03-10','Delivered'),
(1025,1,112,1,'2026-03-15','2026-03-22','Delivered'),
(1026,2,106,2,'2026-04-01','2026-04-08','Delivered'),
(1027,3,108,4,'2026-04-15','2026-04-20','Delivered'),
(1028,4,109,1,'2026-05-10','2026-05-17','Delivered'),
(1029,5,101,1,'2026-06-01','2026-06-07','Delivered'),
(1030,6,107,2,'2026-06-15','2026-06-22','Delivered');