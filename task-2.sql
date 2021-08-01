SELECT categories.category_name as "Category" , COUNT(products.product_name)  as "Number of products"
FROM categories
INNER JOIN products
ON categories.category_id = products.category_id
group by categories.category_name
order by COUNT(products.product_name) desc, categories.category_name

