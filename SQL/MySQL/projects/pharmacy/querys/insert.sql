-- insert data test
INSERT INTO product_type (name) VALUES ('Remedios');
INSERT INTO product_type (name) VALUES ('Cosmeticos');
INSERT INTO product_type (name) VALUES ('Healtcare');

INSERT INTO manufacturer (name) VALUES ('Unimed');
INSERT INTO manufacturer (name) VALUES ('Pantene');
INSERT INTO manufacturer (name) VALUES ('Sundown');

INSERT INTO customer (name, cpf, street, complement, district, city, state, country, postal_code) 
	VALUES ('Ricardo Dev', '22244455534', 'Rua Brasil', 'Apto 112 Bloco C', 'Vila Boa Vista', 'São Paulo', 'SP', 'Brasil', '09765-234');
INSERT INTO customer (name, cpf, street, complement, district, city, state, country, postal_code) 
	VALUES ('Eduardo Dev', '22211155534', 'Rua Europa', '', 'Jardim Brasil', 'São Paulo', 'SP', 'Brasil', '03465-234');
INSERT INTO customer (name, cpf, street, complement, district, city, state, country, postal_code) 
	VALUES ('Amanda Arq', '22222255534', 'Rua Brasil', 'Apto 112 Bloco C', 'Vila Boa Vista', 'São Paulo', 'SP', 'Brasil', '09765-234');
    
INSERT INTO product (name, designation, composition, unit_price, manufacturer_id, product_type_id) 
	VALUES ('Protetor Solar, Fator 30', 'Proteção UV', 'componente x', 12.99, '7', '3');
INSERT INTO product (name, designation, composition, unit_price, manufacturer_id, product_type_id) 
	VALUES ('Shampoo', 'Higiene de banho', 'componente y', 22.59, '6', '2');
INSERT INTO product (name, designation, composition, unit_price, manufacturer_id, product_type_id) 
	VALUES ('Tilenol', 'Dores de cabeça', 'componente f', 5.99, '5', '1');
    
INSERT INTO sales (date, costumer_id) 
	VALUES (NOW(), '1');
INSERT INTO sales (date, costumer_id) 
	VALUES (NOW(), '2');
INSERT INTO sales (date, costumer_id) 
	VALUES (NOW(), '3');
    
INSERT INTO product_purchased (quantity, sales_id, product_id) VALUES (3, '1', '3');
INSERT INTO product_purchased (quantity, sales_id, product_id) VALUES (1, '2', '2');
INSERT INTO product_purchased (quantity, sales_id, product_id) VALUES (2, '3', '1');

INSERT INTO doctor (name, crm) VALUES ('Dr Pedro', '12345');

INSERT INTO medical_prescription (prescription, product_purchased_id, doctor_id) 
	VALUES ('prescrição_ricardo.pdf', '1', '1');