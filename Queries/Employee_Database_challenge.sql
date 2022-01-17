-- -------------------
-- DELIVERABLE 1
-- -------------------

-- create retirement_titles table
select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e
left join title as t
on e.emp_no = t.emp_no
where e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
order by emp_no;


-- create unique_title table
select e.emp_no, e.first_name, e.last_name, t.title
into unique_titles
from employees as e
left join title as t
on e.emp_no = t.emp_no
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') and (t.to_date = '9999-01-01')
order by emp_no, t.to_date desc;

select count(title), title
into retiring_titles
from unique_titles
group by title
order by count (title) desc;

-- -------------------
-- DELIVERABLE 2
-- -------------------
select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
into mentorship_eligibilty
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join title as t
on (e.emp_no = t.emp_no)
where (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') and (de.to_date = '9999-01-01')
order by e.emp_no;