-- gets all columns and rows from users table
SELECT * FROM users;

-- gets specific fields from users table
SELECT name, id, email FROM users;

-- use alias to rename chosen fields
SELECT name as 'My name', id as 'My indentifier', email as 'My email' FROM users;

-- Multi tables
SELECT a.id as user_id, a.name as user_name, b.name as customer_name, b.id as customer_id
FROM users a, costumer b
WHERE a.id = b.user_id;

-- Multi table using Inner Join
SELECT a.id as user_id, a.name as user_name, b.name as customer_name, b.id as customer_id
FROM users a INNER JOIN costumer b
ON a.id = b.user_id;

-- Group by to join data of the same type
SELECT a.id as user_id, a.name as user_name, a.type as user_type, b.name as customer_name, b.id as customer_id
FROM users a INNER JOIN costumer b
ON a.id = b.user_id
GROUP BY user_type
ORDER BY user_name ASC

-- SubQuery
SELECT name, last_name
FROM staff
WHERE office_id IN (SELECT id FROM office WHERE country = 'Brasil');

-- Data Operations:
SELECT NOW() as 'Date/hour Current';
SELECT DATE_FORMAT(NOW(), '%d/%m/%y %h:%m:%m:%s') as 'Date/hour Current';
SELECT DATE_ADD(NOW(), INTERVAL 3 DAY) AS 'Expiration Date';
SELECT DATE_SUB(NOW(), INTERVAL 10 DAY) AS 'Registration Date';
SELECT DATEDIFF(NOW(), DATA_SUB(CURDATE(), INTERVAL 10 DAY)) AS 'Delayed Days';