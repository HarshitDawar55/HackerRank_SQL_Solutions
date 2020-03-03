select
    country.continent,
    floor(avg(city.population))
    -- or round(avg(city.population) - 0.5)
from 
    country
join
    city
    on
        city.countrycode = country.code
    group by country.continent;