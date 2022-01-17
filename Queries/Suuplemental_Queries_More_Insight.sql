-- Creating new table dept_retiree to hold retirees from departments
select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, de.dept_no, d.dept_name
into dept_retiree
from employees as e
left join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
where e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
order by e.emp_no;


-- Displaying the count of department names
select count(dept_name), dept_name
from dept_retiree
group by dept_name
order by count (dept_name) desc;


-- Identify if any department has managers retiring
select e.emp_no, e.first_name, e.last_name, e.birth_date, dm.dept_no, d.dept_name, dm.from_date, dm.to_date
from employees as e
inner join dept_manager as dm
on (e.emp_no = dm.emp_no)
inner join departments as d
on (dm.dept_no = d.dept_no)
where (dm.to_date = '9999-01-01') and (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')