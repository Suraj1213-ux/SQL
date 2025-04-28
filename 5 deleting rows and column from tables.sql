

CREATE TABLE employees(
    employee_id INT PRIMARY KEY ,
	name VARCHAR(100) NOT NULL,
	position VARCHAR ,
    department VARCHAR,
    hire_date DATE,
	salary NUMERIC(10,2)
);

select *from employees;


insert into employees(employee_id,name,position,department,hire_date,salary)
values (201,'Priya Sharma', 'UI/UX Designer', 'Graphic Designer', '2025-03-17', 32000.00),
(202,'Rohan Deshmukh', 'Cybersecurity Specialist', 'Network Security', '2025-03-17', 36000.00),
(203,'Sneha Kulkarni', 'Machine Learning Engineer', 'AI Developer', '2025-03-17', 37000.00),
(204,'Vikram Joshi', 'Backend Developer', 'API Developer', '2025-03-17', 33000.00),
(205,'Anjali Mehra', 'Digital Marketing Executive', 'SEO Specialist', '2025-03-17', 31000.00);

delete from employees
where employee_id=202;


alter table  employees
drop column department;


alter table  employees
drop column hire_date;

drop table if exists employees;
