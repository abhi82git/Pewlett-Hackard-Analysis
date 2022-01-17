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

-- Creatre Number of emplyees in a table
select first_name, last_name
into retirement_info
from employees
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31') and (hire_date between '1985-01-01' and '1988-12-31');

select * 
from retirement_info;

DROP TABLE retirement_info;

-- Creatre nerw table for Number of emplyees with emp_no
select emp_no, first_name, last_name
into retirement_info
from employees
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31') and (hire_date between '1985-01-01' and '1988-12-31');

-- Joining departments and dept_manager tables
select d.dept_name, dm.emp_no, dm.from_date, dm.to_date
from departments as d
inner join dept_manager as dm
on d.dept_no = dm.dept_no;

select r.emp_no, r.first_name, r.last_name, de.to_date
INTO current_emp
from retirement_info as r
left join dept_emp as de
on r.emp_no = de.emp_no
where de.to_date = '9999-01-01';

select * from current_emp;

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
into current_emp_per_dept_count
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
order by de.dept_no;

select * from current_emp_per_dept_count;

-- Creatre nerw table for Number of emplyees with emp_no
select e.emp_no, e.first_name, e.last_name, e.gender, s.salary, de.to_date
into emp_info
from employees as e
inner join salaries as s
on (s.emp_no = e.emp_no)
inner join dept_emp as de
on (de.emp_no = e.emp_no)
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') and (e.hire_date between '1985-01-01' and '1988-12-31') AND (de.to_date = '9999-01-01');

-- Manager info
select dm.dept_no, d.dept_name, ce.last_name, ce.first_name, dm.from_date, dm.to_date
into manager_info
from dept_manager as dm
inner join departments as d
on (dm.dept_no = d.dept_no)
inner join current_emp as ce
on (ce.emp_no = dm.emp_no);

-- dept_info
SELECT ce.emp_no, ce.first_name, ce.last_name, d.dept_name
-- INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

-- emp info from sales team
select ri.emp_no, ri.first_name, ri.last_name, de.dept_no, d.dept_name
from retirement_info as ri
inner join dept_emp as de
on (ri.emp_no = de.emp_no)
left join departments as d
on (de.dept_no = d.dept_no)
where d.dept_no = 'd007';

-- emp info for sales and development team
select ri.emp_no, ri.first_name, ri.last_name, de.dept_no, d.dept_name
from retirement_info as ri
inner join dept_emp as de
on (ri.emp_no = de.emp_no)
left join departments as d
on (de.dept_no = d.dept_no)
where d.dept_no in ('d007','d005');