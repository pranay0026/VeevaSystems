create table jobs(
job_id varchar(10) primary key,
job_title varchar(35),
min_salary decimal(10,2),
max_salary decimal(10,2)
);

insert into jobs values
('AD_PRES','President',20080,40000),
('AD_VP','Administration Vice President',15000,30000),
('AD_ASST','Administration Assistant',3000,6000),
('FI_MGR','Finance Manager',8200,16000),
('FI_ACCOUNT','Accountant',4200,9000),
('AC_MGR','Accounting Manager',8200,16000),
('AC_ACCOUNT','Public Accountant',4200,9000),
('SA_MAN','Sales Manager',10000,20080),
('SA_REP','Sales Representative',6000,12008),
('PU_MAN','Purchasing Manager',8000,15000),
('PU_CLERK','Purchasing Clerk',2500,5500),
('ST_MAN','Stock Manager',5500,8500),
('ST_CLERK','Stock Clerk',2008,5000),
('SH_CLERK','Shipping Clerk',2500,5500),
('IT_PROG','Programmer',4000,10000),
('MK_MAN','Marketing Manager',9000,15000),
('MK_REP','Marketing Representative',4000,9000),
('HR_REP','Human Resources Representative',4000,9000),
('PR_REP','Public Relations Representative',4500,10500);


create table job_history(
employee_id int,
start_date date,
end_date date,
job_id varchar(10),
department_id int
);

insert into job_history values
(102,'2001-01-13','2006-07-24','IT_PROG',60),
(101,'1997-09-21','2001-10-27','AC_ACCOUNT',110),
(101,'2001-10-28','2005-03-15','AC_MGR',110),
(201,'2004-02-17','2007-12-19','MK_REP',20),
(114,'2006-03-24','2007-12-31','ST_CLERK',50),
(122,'2007-01-01','2007-12-31','ST_CLERK',50),
(200,'1995-09-17','2001-06-17','AD_ASST',90),
(176,'2006-03-24','2006-12-31','SA_REP',80),
(176,'2007-01-01','2007-12-31','SA_MAN',80),
(200,'2002-07-01','2006-12-31','AC_ACCOUNT',90);

create table job_grade(
grade_level varchar(1),
lowest_sal int,
highest_sal int
);

insert into job_grade values
('A',1000,2999),
('B',3000,5999),
('C',6000,9999),
('D',10000,14999),
('E',15000,24999),
('F',25000,40000);
