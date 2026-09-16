select book_id,book_title,price from book_information where price=(select max(price)
from book_information);

select book_id,book_title,price from book_information 
order by price desc limit 1;

create table employee(
employeeid varchar(5) primary key,
name varchar(50),
sales int,
jobid int
);

insert into employee values
('E1','SUMIT SINHA',1100000,102),
('E2','VIJAY SINGH TOMAR',1300000,101),
('E3','AJAY RAJPAL',1400000,103),
('E4','MOHIT RAMNANI',1250000,102),
('E5','SHAILJA SINGH',1450000,103);

create table job(
jobid int primary key,
jobtitle varchar(50),
salary int
);

insert into job values
(101,'President',20000),
(102,'Vice President',12500),
(103,'Administration Assistant',8000),
(104,'Accounting Manager',7000),
(105,'Accountant',6500),
(106,'Sales Manager',8000);