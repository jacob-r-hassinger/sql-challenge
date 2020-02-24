Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
From dept_manager as dm
inner join departments as d on d.dept_no = dm.dept_no
inner join employees as e on e.emp_no = dm.emp_no;