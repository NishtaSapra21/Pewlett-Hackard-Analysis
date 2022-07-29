--DELIVERABLE 1

--Create "retirement_title" table using inner join on "employees" and "titles" to get data of employees who were born between 1952 and 1955.
select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e
join titles as t 
on (e.emp_no = t.emp_no)
where (birth_date between '1952-01-01' and '1955-12-31')
order by emp_no;

-- Use Dictinct ON with Orderby to remove duplicate rows and save data in "unique_titles"
select distinct on (emp_no) emp_no, first_name, last_name ,title
into unique_titles
from retirement_titles
where to_date = '9999-01-01'
order by emp_no, to_date desc;

--Use COUNT and GROUP BY to get number of retiring titles.
select count(title) as "title_count", title
from unique_titles
group by title
order by "title_count" desc;


--DELIVERABLE 2

--Create a "mentorship_eligibility" table to hold current employees born beween Jan 1, 1965 to Dec 31, 1965,
--using multiple joins on "employees", "dept_employee" and "titles" with WHERE and ORDERBY.
select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
into mentorship_eligibility
from employees as e
join dept_employee as de 
on (e.emp_no = de.emp_no)
join titles as t
on (e.emp_no = t.emp_no)
where (de.to_date = '9999-01-01') and (birth_date between '1965-01-01' and '1965-12-31')
order by emp_no;