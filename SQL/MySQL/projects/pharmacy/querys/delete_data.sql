-- Tables that use a foreign key create a link between tables, 
-- so to delete a table with a foreign key you must delete all foreign key records

-- dependent fk key
DELETE FROM product_purchased
WHERE sales_id = (SELECT id FROM sales WHERE customer_id = '3');

-- dependent fk key
DELETE FROM sales WHERE customer_id = '3';

-- desired data to delete
DELETE FROM customer WHERE id = '3';