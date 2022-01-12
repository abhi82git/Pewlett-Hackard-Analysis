select * from employees;

-- Retirement Eligibility
select first_name, last_name
from employees
where birth_date BETWEEN '1952-01-01' AND '1955-12-31';

select first_name, last_name
from employees
where birth_date BETWEEN '1952-01-01' AND '1952-12-31';

select first_name, last_name
from employees
where birth_date BETWEEN '1953-01-01' AND '1953-12-31';

select first_name, last_name
from employees
where birth_date BETWEEN '1954-01-01' AND '1954-12-31';

select first_name, last_name
from employees
where birth_date BETWEEN '1955-01-01' AND '1955-12-31';

-- Retirement Eligibility
select first_name, last_name
from employees
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31') and (hire_date between '1985-01-01' and '1988-12-31');

-- Number of employees retiring
select count(first_name)
from employees
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31') and (hire_date between '1985-01-01' and '1988-12-31');

-- Number of emplyees in a table
select first_name, last_name
into retirement_info
from employees
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31') and (hire_date between '1985-01-01' and '1988-12-31');

select * 
from retirement_info;