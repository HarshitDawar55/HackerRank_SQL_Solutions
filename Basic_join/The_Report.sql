select 
    case 
        when grades.grade > 7 then students.name
    end as sn,
    grades.grade,
    students.marks    
from
    students join grades on students.marks between min_mark and max_mark
order by grades.grade desc, sn, students.marks;