-- drop table if already exists
DROP TABLE if exists departments;
DROP TABLE if exists dept_emp;
DROP TABLE if exists dept_manager;
DROP TABLE if exists employees;
DROP TABLE if exists salaries;
DROP TABLE if exists titles;

-- create tables
CREATE TABLE departments(
	dept_no varchar (8)	PRIMARY KEY NOT null,
	dept_name varchar(40) NOT null
	);

CREATE TABLE employees(
	emp_no int PRIMARY KEY NOT null,
	emp_title varchar (5) NOT null,
	birth_date date NOT null,
	first_name varchar (40) NOT null,
	last_name varchar (40) NOT null,
	sex varchar (1) NOT null,
	hire_date date NOT null
	);

CREATE TABLE dept_emp(
	emp_no int NOT null,
	dept_no varchar NOT null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
	);
	
CREATE TABLE dept_manager(
	dept_no varchar (5) NOT null,
	emp_no int NOT null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
	);
	
create table salaries(
	emp_no int not null,
	salary int not null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	);
	
create table titles(
	title_id varchar (5) PRIMARY key not null,
	title varchar (40) not null
	);
					
select * from departments;					
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from titles;

