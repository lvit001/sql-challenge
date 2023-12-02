-- Data Analysis

-- 1) List the employee number, last name, 
-- first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s ON
e.emp_no=s.emp_no
ORDER BY emp_no;

-- 2) List the first name, last name, and 
-- hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND 
hire_date < '1987-01-01'
ORDER BY hire_date;

-- 3) List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name.

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
LEFT JOIN departments as d ON
dm.dept_no=d.dept_no
LEFT JOIN employees as e ON
dm.emp_no=e.emp_no;

-- 4) List the department number for each employee along with that 
-- employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
LEFT JOIN departments as d ON
de.dept_no=d.dept_no
LEFT JOIN employees as e ON
de.emp_no=e.emp_no
ORDER BY emp_no;