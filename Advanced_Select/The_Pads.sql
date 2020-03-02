select concat(name, "(", substr(occupation, 1, 1), ")") as Name_and_Profession from occupations order by name;

select 

concat("There are a total of ", count(occupation), " ", lower(occupation), "s.") as s 

from occupations 

group by occupation 

order by count(occupation), occupation;