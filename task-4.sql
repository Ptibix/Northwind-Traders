SELECT country, count(country) as "Mennyi" FROM customers
group by country
having count(country)>5
order by count(country) desc
