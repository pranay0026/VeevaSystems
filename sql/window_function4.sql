-- rows between start and end
desc monthly_revenue;

select month,revenue,sum(revenue) over(
order by month rows between unbounded preceding and current row) as running_total
from monthly_revenue;
-- rows
-- unbounded precending: start from the first row of the window
-- unbounded following : goes till the last row of the window
-- n preceding
-- n following 
-- rows between 2 preceding and current row
-- rows between current row and 2 following 
-- rows between 1 preceding and 1 following  prev+curr+follow
select month,revenue,round(avg(revenue) over(order by month rows between 
2 preceding and current row),2)as moving_avg
from monthly_revenue;



