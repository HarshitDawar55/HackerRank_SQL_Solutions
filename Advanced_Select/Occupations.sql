set @row = 0, @row1 = 0, @row2 = 0, @row3 = 0;


select t1.doctor_names, t2.professor_names,  t2.singer_names, t1.actor_names from

(select s1.row_num, s1.doctor_names, s2.actor_names from

(select @row:= @row + 1 as row_num,
    case occupation
        when "Doctor" then name
        end as doctor_names
    from occupations
order by  isnull(doctor_names), doctor_names) as s1

inner join

(select @row1:= @row1 + 1 as row_num,
    case occupation
        when "Actor" then name
        end as actor_names
    from occupations
order by  isnull(actor_names), actor_names) as s2

on 
 s1.row_num = s2.row_num) as t1

inner join

(select s1.row_num, s1.professor_names, s2.singer_names from

(select @row2:= @row2 + 1 as row_num,
    case occupation
        when "Professor" then name
        end as professor_names
    from occupations
order by  isnull(professor_names), professor_names) as s1

inner join

(select @row3:= @row3 + 1 as row_num,
    case occupation
        when "Singer" then name
        end as singer_names
    from occupations
order by  isnull(singer_names), singer_names) as s2

on 
 s1.row_num = s2.row_num) as t2


on t1.row_num = t2.row_num

where t1.row_num <= (select max(frequency) from (select count(occupation) as frequency from occupations group by occupation) as a) ;