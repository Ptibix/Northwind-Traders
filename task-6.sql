select customers.company_name, count(orders.order_id) , ARRAY_AGG (order_id) orders /*STRING_AGG(customers.company_name, ',') nevek */
/*, orders.order_id */ 
from customers
inner join orders
on customers.customer_id = orders.customer_id
where customers.country='USA'
group by customers.company_name /*,orders.order_id */
having count(orders.order_id)<5
order by count(orders.order_id);


/*SELECT
    title,
    ARRAY_AGG (first_name || ' ' || last_name) actors
FROM
    film
INNER JOIN film_actor USING (film_id)
INNER JOIN actor USING (actor_id)
GROUP BY
    title
ORDER BY
    title;  */
