-- Heavily editted from the QuickDBD export, which was a nice way to get the tables set up for the ERD: https://www.quickdatabasediagrams.com/
--In retrospect, the export was not that heavily used, but it was my initial starting point.

CREATE TABLE departments (
	dept_no varchar(10) PRIMARY KEY NOT NULL,
    dept_name varchar(30) NOT NULL
);

CREATE TABLE employees (
    emp_no integer PRIMARY KEY NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(50) NOT NULL,
    gender varchar(1) NOT NULL,
    hire_date date NOT NULL
);

CREATE TABLE dept_emp (
    dept_emp_id serial PRIMARY KEY NOT NULL,
	emp_no integer REFERENCES employees(emp_no) NOT NULL,
    dept_no varchar(10) REFERENCES departments(dept_no) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);

CREATE TABLE dept_manager (
    dept_manager_id serial PRIMARY KEY NOT NULL,
	dept_no varchar(10) REFERENCES departments(dept_no) NOT NULL,
    emp_no integer REFERENCES employees(emp_no) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);

CREATE TABLE salaries (
    salary_id serial PRIMARY KEY NOT NULL,
	emp_no integer REFERENCES employees(emp_no) NOT NULL,
    salary integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);

CREATE TABLE titles (
    title_id serial PRIMARY KEY NOT NULL,
	emp_no integer REFERENCES employees(emp_no) NOT NULL,
    title varchar(50) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);


