desc employees;

select emp_name,department,salary,avg(salary)
 over(Partition by department order by salary desc) from employees;
 
 select department,emp_id,salary,row_number()
 over(partition by department )
 from employees; 
 
 select salary,sum(salary) over(order by emp_id desc) 
 from employees where salary in (60000,700000,50000) ;
 -- window functions are used only in select list and the order by clasuse of the query 
 -- remaining areas it is not allowed
 
 select department, emp_id,salary,joining_date
 from
 ( select department,emp_id,salary,joining_date,row_number() over
 (partition by department order by salary desc) as pos
 from employees) as ss
 where pos<3;
 
 -- when a query involves multiple window function of same type then write like this
 select sum(salary) over w, avg(salary) over w ,row_number() over w from employees
 window w as (partition by department order by salary desc);
 
 /*
 SELECT
  department_id,
  employee_id,
  hire_date,
  salary,
  SUM(salary) OVER (
    PARTITION BY department_id
    ORDER BY hire_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS running_total
FROM employees;
*/