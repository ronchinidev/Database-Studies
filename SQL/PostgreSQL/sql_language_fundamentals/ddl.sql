CREATE DATABASE database_studies IF NOT EXISTS;

CREATE TABLE IF NOT EXISTS users (
    id      SERIAL      PRIMARY KEY,
    name    VARCHAR(50) NOT NULL,
    email   VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS sales (
    id        SERIAL PRIMARY KEY,
    quantity  INT    NOT NULL,
    date      DATE   NOT NULL,
    product_id INT REFERENCES product(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS product (
	id         SERIAL      PRIMARY KEY,
	name       VARCHAR(50) NOT NULL,
	unit_price MONEY       NOT NULL
);

-- Adds a new field to users table
ALTER TABLE users ADD address VARCHAR(100);
-- delete selected field
ALTER TABLE users DROP COLUMN email;

DROP TABLE users;
-- delete table

TRUNCATE TABLE users;
-- delete rows from users;