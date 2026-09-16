use veeva;

create table book_information(
book_id int primary key,
book_title varchar(100),
price decimal(10,2)
);

create table sales(
store_id int,
sales_date date,
sales_amount decimal(10,2)
);

create table exam_results(
stu_id int,
fname varchar(30),
lname varchar(30),
exam_id int,
exam_score int
);

insert into exam_results values
(10,'LAURA','LYNCH',1,90),
(10,'LAURA','LYNCH',2,85),
(11,'GRACE','BROWN',1,78),
(11,'GRACE','BROWN',2,72),
(12,'JAY','JACKSON',1,95),
(12,'JAY','JACKSON',2,92),
(13,'WILLIAM','BISHOP',1,70),
(13,'WILLIAM','BISHOP',2,100),
(14,'CHARLES','PRADA',2,85);

insert into book_information values
(101,'The Alchemist',250),
(102,'Wings of Fire',350),
(103,'Rich Dad Poor Dad',450),
(104,'Atomic Habits',550),
(105,'Think and Grow Rich',300),
(106,'The Power of Habit',400),
(107,'Ikigai',280),
(108,'Deep Work',500),
(109,'The Monk Who Sold His Ferrari',320),
(110,'Zero to One',450);

insert into sales values
(1,'2020-01-05',2500),
(1,'2020-01-12',3200),
(1,'2020-02-10',2800),
(2,'2020-01-08',4500),
(2,'2020-02-15',5200),
(2,'2020-03-05',3900),
(3,'2020-01-20',2100),
(3,'2020-02-18',3500),
(3,'2020-03-12',4200),
(4,'2020-01-25',5000),
(4,'2020-02-20',6200),
(4,'2020-03-15',5800),
(5,'2020-01-30',1800),
(5,'2020-02-25',2700),
(5,'2020-03-20',3100);