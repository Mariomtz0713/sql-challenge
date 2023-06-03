-- Question #1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no);

--Question #2
SELECT hire_date
FROM employees
WHERE extract(year from hire_date) = 1986

--Question #3
SELECT m.dept_no,  d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager m
JOIN employees e
ON (m.emp_no = e.emp_no)
JOIN departments d
ON (d.dept_no = m.dept_no);

--Question #4
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_no = de.emp_no)
JOIN departments d
ON (de.dept_no = d.dept_no);

--Question #5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--Question #6
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de
ON (e.emp_no = de.emp_no)
JOIN departments d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';

--Question #7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_no = de.emp_no)
JOIN departments d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--Question #8
SELECT last_name, COUNT(last_name) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency desc;
