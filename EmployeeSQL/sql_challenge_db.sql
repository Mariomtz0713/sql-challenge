CREATE TABLE departments (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR(30),
	dept_name VARCHAR(30)
	
);

CREATE TABLE dept_emp (
	id SERIAL PRIMARY KEY,
	emp_no INT,
	dept_no VARCHAR(30)
	
);

CREATE TABLE dept_manager (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR(30),
	emp_no INT
);

CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	emp_no INT,
	emp_title_id VARCHAR (30),
	birth_date VARCHAR (30),
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (30),
	hire_date VARCHAR (30)
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	emp_no INT,
	salary INT
);

CREATE TABLE titles (
	id SERIAL PRIMARY KEY,
	title_id VARCHAR (30),
	title VARCHAR (30)
);

SELECT * 
FROM departments;

DROP TABLE departments, dept_emp, dept_manager, 
employees, salaries, titles;