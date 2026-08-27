CREATE TABLE customer(
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    region VARCHAR(20)
);

INSERT INTO customer VALUES
(1,'Pranay','West'),
(2,'Rahul','North'),
(3,'Bhanu','South'),
(4,'Kiran','East'),
(5,'Jaanu','West'),
(6,'Arjun','North'),
(7,'Vamsi','South'),
(8,'Sai','West');
CREATE TABLE purchases(
    purchase_id INT PRIMARY KEY,
    cust_id INT,
    prod_name VARCHAR(30),
    price DECIMAL(10,2),
    FOREIGN KEY(cust_id) REFERENCES customer(cust_id)
);

INSERT INTO purchases VALUES
(101,1,'A',150000),
(102,2,'B',120000),
(103,3,'C',90000),
(104,4,'A',180000),
(105,5,'B',250000),
(106,6,'C',110000),
(107,7,'A',175000),
(108,8,'B',195000),
(109,1,'C',80000),
(110,2,'A',210000),
(111,5,'A',140000),
(112,6,'B',200000);

select c.cust_name from customer c inner join purchases p on c.cust_id=p.cust_id
where p.prod_name in ('A','B') and c.region in ('west','north');

select c.cust_name from customer c inner join purchases p on c.cust_id=p.cust_id 
where p.price between 100000 and 200000;























