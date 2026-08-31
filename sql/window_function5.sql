select name,score,sum(score) over (order by score rows 
between 1 preceding and current row)
as result from scores order by id;

-- range
select name,score,sum(score) over (order by score range 
between 10 preceding and current row) as result
from scores order by id;

select emp_name,salary,sum(salary) over (order by salary 
groups between 1 preceding and current row) as total from employees;