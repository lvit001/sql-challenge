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
## [Data Analysis](https://github.com/lvit001/sql-challenge/blob/main/EmployeeSQL/data_analysis.sql)
### Question 1
- Used a join function on the employees and salaries tables to populate the required columns
### Question 2
- Used WHERE and AND functions to filter by dates within 1986 in the employees table to populate the required columns
- Filtering by year code found [here](https://stackoverflow.com/questions/15817871/postgresql-filter-a-date-range).
### Question 3
- Used a left join function on the employees, dept_manager, and departments tables to populate the required columns
### Question 4
- Used a left join function on the employees, dept_emp, and departments tables to populate the required columns
### Question 5
- Used WHERE and LIKE functions along with the % to filter the employees table by first name "Hercules" and last name beginning with "B"
### Question 6
- Used subqueries and WHERE/IN functions to first filter the departments table for department id corresponding with department name "Sales", then find employees with the sales dept_id in dept_emp, and finally grab employee id and name from the employees table.
### Question 7
- Used JOIN and WHERE/OR functions to filter the departments table by Sales and Development departments and populate the required columns from the three joined tables
### Question 8
- Used aggregate function JOIN, along with GROUP BY and ORDER BY to determine the frequency of certain last names and list them in descending order by the highest frequency of the last name.
- Used some code from [here](https://www.w3schools.com/sql/sql_groupby.asp) for help with the count, group by, and order by functions
