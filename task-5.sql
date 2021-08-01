select to_char(order_date, 'YY'), to_char(order_date, 'MM'),  count(to_char(order_date, 'YY/MM')), round(sum(order_details.unit_price  * order_details.quantity*(1-order_details.discount)))
from orders 
inner join order_details
on   orders.order_id= order_details.order_id
group by to_char(order_date, 'YY'),to_char(order_date, 'MM')
having to_char(order_date, 'YY')='97'