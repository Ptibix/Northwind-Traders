SELECT products.product_name as "NÉV" , round(sum(order_details.unit_price  * order_details.quantity*(1-order_details.discount)))  as "Szumma"
FROM products                            /* round a kerekítés */
INNER JOIN order_details
ON products.product_id = order_details.product_id
/*where products.product_name = 'Chocolade' */
group by products.product_name
order by "Szumma" LIMIT 10
