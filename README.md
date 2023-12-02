# SQL-challenge: Module 9 Challenge Assignment
## Data Modeling
- ERD was created using [QuickDBD](https://app.quickdatabasediagrams.com/#/d/y8yFQ3)
### Primary Keys
- Created primary keys for three of the tables: departments (dept_no), employees (emp_no), titles (title_id)
### Foreign Keys
- Created foreign keys for departments (dept_no) in the dept_emp and dept_manager tables
- Created foreign keys for employees (emp_no) in the dept_emp, dept_manager, and salaries tables
- Create foreign key for titles (title_id) in the employees table
### One-to-one Relationships
- employees (emp_no) AND salaries (emp_no)
- employees (emp_no) AND dept_manager (emp_no)
### One-to-many Relationships
- departments (dept_no) AND dept_emp (dept_no)
- departments (dept_no) AND dept_manager (dept_no)
- employees (emp_no) AND dept_emp (emp_no)
- titles (title_id) AND employees (emp_title_id)
## Data Engineering
- Exported the ERD created in QuickDBD directly into PostgreSQL database
- The exported file is "ERD schema.sql"
## Data Analysis
### Question 1
### Question 2
- Filtering by year code found [here](https://stackoverflow.com/questions/15817871/postgresql-filter-a-date-range).
