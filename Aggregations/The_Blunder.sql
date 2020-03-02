select 
round(avg(salary) - avg(replace(salary,'0',''))) + 1
from employees;