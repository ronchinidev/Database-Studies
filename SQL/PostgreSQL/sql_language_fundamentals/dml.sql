INSERT INTO users (name, email, address) VALUES ('Ricardo', 'ricardo.ronchini@email.com', 'Rua teste 123, Brasil');
INSERT INTO product (name, unit_price) 
VALUES 
    ('Laptop DELL', 2000.00),
    ('Laptop Apple', 5000.00);

INSERT INTO sales (quantity, date, product_id) VALUES (4, NOW(), 1);

UPDATE product set unit_price = 2500.55 WHERE id = 1;

DELETE FROM users WHERE id = 1;