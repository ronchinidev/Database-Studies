-- product type
SELECT * FROM sales;
SELECT id, customer_id FROM sales;
SELECT id, customer_id, date FROM sales ORDER BY date ASC;

-- product purchased
SELECT * FROM product_purchased WHERE quantity >= 1;
SELECT count(*) FROM product_purchased WHERE quantity > 2;

-- add customer name in sales order
SELECT a.id as 'Sales id', a.date as 'Purchase date', b.name as 'Customer Name', b.cpf as 'Document (CPF)'
FROM sales a
INNER JOIN customer b
ON a.customer_id = b.id;

-- add product name in sales order
SELECT 
	b.id as 'Sales id', 
	b.date as 'Purchase date', 
	c.name as 'Customer Name', 
	c.cpf as 'Document (CPF)', 
	d.name as 'Product', 
	d.unit_price as 'Unit Price',
    a.quantity as 'Quantity',
	(a.quantity * d.unit_price) as 'Total value'
FROM product_purchased a, sales b, customer c, product d
WHERE a.sales_id = b.id
AND b.customer_id = c.id
AND a.product_id = d.id
GROUP BY a.id;