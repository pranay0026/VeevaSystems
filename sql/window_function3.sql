-- value functions
desc employees;

select emp_name, department, salary, First_Value(salary) 
over(partition by department order by salary desc) 
as highest_salary from employees;

select emp_name,salary, last_value(salary) over(order by salary) as last_salary
from employees;

-- to get actual last values
select emp_name,salary,last_value(salary) over(order by salary rows
between unbounded preceding and unbounded following) as 
lowest_to_highest_last from employees;

select department,emp_name,salary,nth_value(salary,2) over(partition by department order by salary desc)
as second_highest from employees where salary=second_highest;

