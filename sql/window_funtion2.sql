with ranked as(
select department,emp_id,salary,
dense_rank() over (partition by department order by salary desc) as salary_rank
from employees
)
select department,emp_id,salary,salary_rank from ranked where salary_rank<=3;

select department,salary, dense_rank() over(partition by department order by salary desc)
 as department_rank from employees;
 
 -- offset functions: Lag, Lead, First_Value,Last_Value
 
desc monthly_revenue;
 
 select month, revenue,Lag(revenue,1) over (order by month) as prev_month_revenue,
 revenue-Lag(revenue,1) over (order by month) as mom_change,
 Round(100*(revenue-lag(revenue,1) over(order by month))/NULLIF(Lag(revenue,1) 
 over (order by month),0),2)
 as mom_change_pct
 from monthly_revenue;
 
 SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS previous_revenue
FROM monthly_revenue;
 
 