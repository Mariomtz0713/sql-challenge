CREATE TABLE departments (
	dept_no VARCHAR (30) PRIMARY KEY,
	dept_name VARCHAR (30)
	
);

SELECT * 
FROM departments;

CREATE TABLE dept_emp (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR (30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT *
FROM dept_emp;

CREATE TABLE dept_manager (
	dept_no VARCHAR (30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM dept_manager;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR (30),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR (30),
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (30),
	hire_date VARCHAR (30)
);

SELECT *
FROM employees;

CREATE TABLE salaries (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT
);

SELECT *
FROM salaries;

CREATE TABLE titles(
	title_id VARCHAR (30) PRIMARY KEY,
	title VARCHAR (30)
);

SELECT *
FROM titles;

DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;