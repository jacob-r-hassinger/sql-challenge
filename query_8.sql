select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) DESC;