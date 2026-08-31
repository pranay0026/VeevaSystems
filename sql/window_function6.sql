
-- distribution functions
select emp_name,salary, Ntile(4) over (
order by salary desc) as bucket from employees;

select department,emp_name,salary, Ntile(2) over (partition by department
order by salary desc) as bucket from employees;

-- percent rank (rank-1)/(no.of rows -1) so it starts with 0

select emp_name,salary , percent_rank() over (order by salary) as percentRank 
from employees;