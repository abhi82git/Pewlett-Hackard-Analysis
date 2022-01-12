-- Creating tables for PH-EmployeeDB
create table departments (
	dept_no varchar(4) not null,
	dept_name varchar(40) not null,
	primary key(dept_no),
	unique (dept_name)
);

create table employees (
	emp_no int not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	gender varchar not null,
	hire_date date not null,
	primary key (emp_no)
);

-- drop table dept_manager;
-- drop table departments;
-- drop table employees;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	foreign key(emp_no) references employees (emp_no),
	foreign key(dept_no) references departments (dept_no),
	primary key(emp_no,dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);


create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	foreign key(emp_no) references employees (emp_no),
	foreign key(dept_no) references departments (dept_no),
	primary key(emp_no,dept_no)
);

create table title (
	emp_no INT NOT NULL,
	title varchar not null,
	from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	foreign key(emp_no) references employees (emp_no),
	primary key(emp_no,title,from_date)
);