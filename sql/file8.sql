select o.ord_no from orders o inner join salesman s on s.salesman_id=o.salesman_id
where s.name = "Paul Adam";

select o.*,s.name from orders o inner join salesman s on s.salesman_id=o.salesman_id
where s.city = "London";

SELECT o.*
FROM orders o
WHERE o.customer_id=3007;

select o.* from orders o where purch_amt>(select avg(purch_amt)
from orders where ord_date='2012-10-10') and ord_date='2012-10-10';

WITH avg_order AS(
    SELECT AVG(purch_amt) OVER() AS avg_value
    FROM orders
    WHERE ord_date='2012-10-10'
)
SELECT o.*
FROM orders o
WHERE o.purch_amt>(SELECT avg_value FROM avg_order LIMIT 1);

select o.* from orders o inner join salesman s on 
s.salesman_id=o.salesman_id where s.city='New York';

select * from customer where customer_id=(select salesman_id-
2001 from salesman where name='Mc Lyon');

select count(customer_id) from customer where grade>(
select avg(grade) from customer where city='New York');

select c.*,c.cust_name as name from customer c inner join orders o on 
c.customer_id=o.customer_id where o.ord_date='2012-08-17';


select s.name,count(c.customer_id) from salesman s inner join customer c 
on c.salesman_id=s.salesman_id group by c.salesman_id 
having count(c.salesman_id)>1;

select o.* from orders o where purch_amt>(select avg(o1.purch_amt) 
from orders o1 where o1.customer_id=o.customer_id) ;

