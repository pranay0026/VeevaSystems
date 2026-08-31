use veeva;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    job_role VARCHAR(30),
    salary INT,
    joining_date DATE,
    manager_id INT,
    city VARCHAR(30)
);

INSERT INTO employees
(emp_id, emp_name, department, job_role, salary, joining_date, manager_id, city)
VALUES
(1, 'Ravi',   'IT',      'Developer', 60000, '2021-01-15',  NULL, 'Hyderabad'),
(2, 'Rahul',  'IT',      'Developer', 80000, '2020-06-10',  NULL, 'Bangalore'),
(3, 'Priya',  'HR',      'HR Manager', 90000, '2019-03-20', NULL, 'Hyderabad'),
(4, 'Vinu',    'HR',      'Recruiter',  50000, '2022-07-01', 3,    'Chennai'),
(5, 'Kiran',  'IT',      'Developer', 90000, '2019-11-11', 2,    'Bangalore'),
(6, 'John',   'Sales',   'Salesman',   40000, '2023-01-05', NULL, 'Mumbai'),
(7, 'Ram',    'Sales',   'Salesman',   60000, '2021-09-15', 6,    'Mumbai'),
(8, 'Sneha',  'IT',      'Tester',     70000, '2022-02-18', 2,    'Hyderabad'),
(9, 'Arjun',  'Sales',   'Salesman',   80000, '2020-12-01', 6,    'Delhi'),
(10,'Meena',  'HR',      'Recruiter',  60000, '2021-05-25', 3,    'Chennai'),
(11,'Vikram', 'IT',      'Developer',  80000, '2023-04-10', 2,    'Bangalore'),
(12,'Divya',  'Sales',   'Sales Manager',100000,'2018-08-20',NULL,'Delhi'),
(13,'Suresh', 'IT',      'Tester',     70000, '2020-10-12', 2,    'Hyderabad'),
(14,'Pooja',  'HR',      'Recruiter',  50000, '2023-06-15', 3,    'Chennai'),
(15,'Naveen', 'Sales',   'Salesman',   60000, '2022-11-30', 12,   'Mumbai');

CREATE TABLE monthly_revenue (
    month DATE,
    revenue DECIMAL(10,2)
);

INSERT INTO monthly_revenue (month, revenue)
VALUES
('2025-01-01', 100000),
('2025-02-01', 120000),
('2025-03-01', 110000),
('2025-04-01', 150000),
('2025-05-01', 180000),
('2025-06-01', 170000),
('2025-07-01', 200000),
('2025-08-01', 240000),
('2025-09-01', 220000),
('2025-10-01', 260000),
('2025-11-01', 300000),
('2025-12-01', 330000);
CREATE TABLE scores (
    id INT,
    name VARCHAR(20),
    score INT
);

INSERT INTO scores VALUES
(1, 'A', 10),
(2, 'B', 10),
(3, 'C', 20),
(4, 'D', 20),
(5, 'E', 30),
(6, 'F', 40);