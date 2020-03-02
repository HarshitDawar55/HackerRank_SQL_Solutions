select
    c.company_code,
    c.founder,
    count(distinct emp.lead_manager_code),
    count(distinct emp.senior_manager_code),
    count(distinct emp.manager_code),
    count(distinct emp.employee_code)
from
company c
join
employee emp

on c.company_code = emp.company_code

group by c.company_code, c.founder
order by c.company_code;