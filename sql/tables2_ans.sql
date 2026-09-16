desc employee;
desc job;

select e.employeeId ,e.name, e.jobid, j.jobtitle from employee e
inner join job j on j.jobid=e.jobid;

select e.name,e.sales,j.jobtitle from employee e inner join job j
on j.jobid=e.jobid where sales>1300000;

select e.name,j.jobtitle from employee e inner join job j 
on j.jobid=e.jobid where e.name like "%singh";

update employee set jobid=104 where employeeid="E4";

select 