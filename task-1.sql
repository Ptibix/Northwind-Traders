/*select products.product_name as "product", suppliers.company_name as "company" from products,suppliers where
suppliers.supplier_id=products.supplier_id
order by products.product_name, suppliers.company_name */

SELECT products.product_name as "product", suppliers.company_name as "company"
FROM suppliers
INNER JOIN products
ON suppliers.supplier_id = products.supplier_id
order by products.product_name, suppliers.company_name