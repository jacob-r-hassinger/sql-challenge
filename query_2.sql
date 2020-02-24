Select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
From employees as e
inner join salaries as s on e.emp_no = s.emp_no
where e.hire_date Between '1986-01-01' and '1987-01-01';