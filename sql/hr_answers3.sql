select j.job_title, avg(e.salary) from employees e 
inner join jobs j on j.job_id=e.job_id group by j.job_id;

select j.* from jobs j join
(select * from employees where salary >=12000) e on
j.job_id = e.job_id;

use hr;
desc employees;
desc countries;
desc departments;
desc locations;
desc jobs;
desc job_history;

select c.country_name,l.city,count(e.employee_id) as employee_count
from employees e
inner join departments d on e.department_id=d.department_id
inner join locations l on d.location_id=l.location_id
inner join countries c on l.country_id=c.country_id
group by c.country_name,l.city,d.department_id
having count(e.employee_id)>=2;

select concat(e.first_name,e.last_name) as FullName, e.salary from 
employees e inner join departments d on e.department_id=d.department_id
inner join  locations l on d.location_id=l.location_id where l.city="London";

select concat(e.first_name,' ',e.last_name) as FullName, j.job_title,
jh.start_date,jh.end_date from employees e inner join job_history jh on
jh.employee_id=e.employee_id inner join jobs j on jh.job_id=j.job_id
where e.commission_pct=0 and 
jh.start_date = (
select max(jh2.start_date) from job_history jh2 
where jh2.employee_id=e.employee_id);

select d.department_name , count(e.employee_id) 
from departments d left join employees e on e.department_id = d.department_id 
group by d.department_id,d.department_name;


select concat(e.first_name,' ',e.last_name) as FullName,
e.employee_id,c.country_name
from employees e
inner join departments d on e.department_id=d.department_id
inner join locations l on d.location_id=l.location_id
inner join countries c on l.country_id=c.country_id;