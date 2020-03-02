select distinct city, length(city) as l from station order by l, city limit 1;
select distinct city, length(city) as l from station order by l desc, city desc limit 1;