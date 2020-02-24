select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on de.emp_no = e.emp_no
inner join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Sales';