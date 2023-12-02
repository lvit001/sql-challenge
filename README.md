# SQL-challenge: Module 9 Challenge Assignment
## Data Modeling
- ERD was created using [QuickDBD](https://app.quickdatabasediagrams.com/#/d/y8yFQ3)
- ![image](https://github.com/lvit001/sql-challenge/assets/140283164/a09af62e-9d77-4916-a30c-204c37fd7adc)
## Data Engineering
### Exporting Schema for Tables
- Exported the ERD created in QuickDBD directly into the PostgreSQL database
- The exported file is [ERD schema.sql](https://github.com/lvit001/sql-challenge/blob/main/EmployeeSQL/ERD%20schema.sql)
- This exported file automatically created the tables and added columns based on their name, data type, and key classification (if applicable). It also created references between the columns that included foreign keys.
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
### Data Types
- Set columns with numerical data to "INTEGER" data type. Primary Key "emp_no" is an integer data type
- Set columns with string values to "VARCHAR(255)" data type. 255 was selected as the value length as this seems to be the industry standard. Primary Keys "dept_no" and "title_id" are varchar data types since they include letters in their strings, not just numbers.
- Set columns with dates to "DATE" data type. The "birth_date" and "hire_date" columns are both date types.
- NOT NULL was automatically included in the exported schema and was kept in to ensure that data was provided in every column, there were no errors as there weren't any cells with null values. 
## Data Analysis
### Question 1
-
### Question 2
- Filtering by year code found [here](https://stackoverflow.com/questions/15817871/postgresql-filter-a-date-range).
### Question 3
-
### Question 4
-
### Question 5
-
### Question 6
-
### Question 7
-
### Question 8
-
