use veeva;

desc orders;

desc salesman;

select o.ord_no,s.name from salesman s inner join orders o on s.salesman_id=o.salesman_id where s.name='Paul Adam';

select o.ord_no,o.purch_amt,o.ord_date from orders o inner join salesman s on s.salesman_id=o.salesman_id where s.city='London';

select o.* from orders o inner join salesman s on  s.salesman_id=o.salesman_id where o.customer_id=3007; 
 
 select * from orders where purch_amt>(select avg(purch_amt) from orders where ord_date="2012-10-10");
 
 select o.* from orders o inner join salesman s on s.salesman_id=o.salesman_id where s.city='New York';