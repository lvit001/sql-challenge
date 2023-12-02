-- Data Analysis

-- 1) List the employee number, last name, 
-- first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s ON
e.emp_no=s.emp_no;

-- 2) List the first name, last name, and 
-- hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND 
hire_date < '1987-01-01'