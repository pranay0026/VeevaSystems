show tables;
desc employees;
desc departments;
desc locations;
select * from job_grade;

select e.first_name,e.last_name ,d.department_name,d.department_id
from employees e inner join departments d on d.department_id=e.department_id;

select e.first_name,e.last_name,d.department_name,l.city,l.state_province
from employees e inner join departments d on e.department_id=d.department_id
inner join locations l on d.location_id=l.location_id;

select e.first_name,e.last_name, e.salary , j.grade_level "Job grade" from
employees e inner join job_grade j on e.salary between j.lowest_sal
and j.highest_sal;

select e.first_name,e.last_name,d.department_id,d.department_name 
from employees e inner join departments d on d.department_id=e.department_id
where d.department_id in (80,40);

select e.first_name, e.last_name , d.department_name,l.city,l.state_province
from employees e inner join departments d on e.department_id=d.department_id
inner join locations l on l.location_id=d.location_id where 
e.first_name like '%z%' or 'z%' or '%z';

select department_name from departments ;
SELECT d.department_id,
       d.department_name,
       e.employee_id
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id;
