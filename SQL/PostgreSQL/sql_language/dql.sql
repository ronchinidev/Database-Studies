-- gets all columns and rows from users table
SELECT * FROM users;

-- gets specific fields from users table
SELECT name, id, email FROM users;

-- use alias to rename chosen fields
SELECT name as "My name", id as "My indentifier", email as "My email" FROM users;

SELECT DISTINCT name from users;

-- maximum value among all values
SELECT MAX(unit_price) FROM product;
-- minimum value among all values
SELECT MIN(unit_price) FROM product;

-- takes the average of a money type value
SELECT ROUND(AVG(unit_price::numeric), 2) FROM product;

-- Multi tables
SELECT a.id as sales_id, a.quantity, b.name as product_name, b.unit_price as product_value
FROM sales a, product b
WHERE a.product_id = b.id;

-- Multi table using Inner Join
SELECT a.id as user_id, a.name as user_name, b.name as customer_name, b.id as customer_id
FROM users a INNER JOIN costumer b
ON a.id = b.user_id;

-- Group by to join data of the same type
SELECT a.id as sales_id, a.quantity, b.name as product_name, b.unit_price as product_value
FROM sales a INNER JOIN product b
ON a.product_id = b.id
GROUP BY sales_id, product_name, product_value
ORDER BY product_name ASC;

-- SubQuery
SELECT name, last_name
FROM staff
WHERE office_id IN (SELECT id FROM office WHERE country = 'Brasil');

-- Data Operations:
SELECT NOW() as "Date/hour Current";
SELECT NOW() + INTERVAL '3 DAY' as "Date/hour future days";
SELECT NOW() + INTERVAL '3 MONTH' as "Date/hour future months";
SELECT NOW() + INTERVAL '1 YEAR' as "Date/hour future year";
SELECT NOW() - INTERVAL '3 DAY' as "Date/hour past days";
SELECT DATE_PART('year', '2024-04-11'::date) - DATE_PART('year', '1995-04-11'::date) as "My age in years";
SELECT (DATE_PART('year', '2024-04-11'::date) - DATE_PART('year', '1995-04-11'::date)) * 12 as "My age in months";
SELECT TRUNC(DATE_PART('day', '2024-04-11'::timestamp - '1995-04-11'::timestamp)/7) as "My age in weeks";
SELECT TRUNC(DATE_PART('day', '2024-04-11'::timestamp - '1995-04-11'::timestamp)) as "My age in days";
SELECT TO_CHAR(NOW(), 'dd/mm/yyyy hh:mm:ss') as "Date formated";
SELECT TO_CHAR(NOW(), 'day') as "Date formated day of the week";
SELECT TO_CHAR(NOW(), 'dy') as "Date formated abbreviated day of the week";
SELECT TO_CHAR(NOW(), 'MONTH') as "Date formated month";

SELECT EXTRACT(HOUR FROM NOW());
SELECT EXTRACT(MINUTE FROM NOW());
SELECT EXTRACT(SECOND FROM NOW());
SELECT EXTRACT(DAY FROM NOW());
SELECT EXTRACT(WEEK FROM NOW());
SELECT EXTRACT(MONTH FROM NOW());
SELECT EXTRACT(YEAR FROM NOW());