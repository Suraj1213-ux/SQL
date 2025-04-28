CREATE TABLE emloyee(
    employee_id SERIAL PRIMARY KEY ,
	name VARCHAR(100) NOT NULL,
	position VARCHAR ,
    department VARCHAR,
    hire_date DATE,
	salary NUMERIC(10,2)
);



	