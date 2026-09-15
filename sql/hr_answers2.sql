show tables;
desc employees;
desc departments;
desc locations;

select first_name , last_name , salary from employees 
where salary<(select salary from employees where employee_id=182);

select e.first_name, m.first_name as managers from employees e 
left join employees
m on e.manager_id=m.employee_id;

select d.department_name,l.city,l.state_province from departments d
inner join locations l on d.location_id=l.location_id;

select e.first_name,e.last_name,d.department_id,d.department_name
from employees e left join departments d on d.department_id=e.department_id;

select e.first_name,m.first_name as "Manager" from employees e
left join employees m on e.manager_id=m.employee_id;

select first_name, last_name, department_id from employees
where department_id in (select department_id from employees
where last_name = "Taylor");

show tables;
desc jobs;
desc job_history;

select j.job_title, d.department_name, concat(e.first_name,e.last_name) 
as "Full Name" ,jh.start_date from employees e inner join
departments d on d.department_id=e.department_id
inner join job_history jh on e.employee_id=jh.employee_id
inner join jobs j on jh.job_id=j.job_id where jh.start_date
between "1993-01-01" and "1997-07-31";

select j.job_title, concat(e.first_name,e.last_name),
j.max_salary-e.salary as "Difference" from
employees e inner join jobs j on j.job_id=e.job_id;

select d.department_name, avg(e.salary), count(e.employee_id) from 
employees e inner join departments d on d.department_id=
e.department_id where commission_pct>0.00 group by d.department_id;

select concat(e.first_name,' ',e.last_name) "Full Name", j.job_title,
j.max_salary-e.salary as diff from employees e inner join jobs
j on e.job_id=j.job_id where e.department_id=80;

desc countries;
desc locations;
select c.country_name, l.city,d.department_name from countries c
inner join locations l on l.country_id=c.country_id
inner join departments d on d.location_id=l.location_id;

select d.department_name , concat(e.first_name,' ',e.last_name) 
as full_name from employees e join departments d on e.employee_id 
= d.manager_id;
desc departments;