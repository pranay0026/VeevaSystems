desc employee;
select department,avg(salary) from employee group by department;

select name,department,salary,sum(salary) over (partition by department) as dept_avg
from employee;

select name,department,salary, 
row_number() over (order by salary desc) as rn from employee;

select name,department,salary, 
rank() over (order by salary desc) as rn from employee;

select name,department,salary, 
dense_rank() over (order by salary desc) as rn from employee;

select name, salary,avg(salary) over(partition by department) as dept_avg 
from employee;

select name,department, salary,rank() over(partition by department order by salary desc) as `rank` 
from employee;

with second as(
select name,dense_rank() over(partition by department order by salary desc) as 
second_higest from
employee 
)
select name from second where second_higest=2;

with second as(
select name,dense_rank() over(partition by department order by salary desc) as 
second_higest from
employee 
)
select name from second where second_higest<=2;

select name,salary,lag(salary) over (order by salary) as prev_sal
from employee;

select name,salary,lead(salary) over(order by salary) as next_sal
from employee;