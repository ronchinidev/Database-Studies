CREATE DATABASE my_database IF NOT EXISTS;

CREATE TABLE IF NOT EXISTS users (
    id         INT          NOT NULL AUTO_INCREMENT,
    name       VARCHAR(50)  NOT NULL,
    product_id INT          NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

ALTER TABLE users ADD address VARCHAR(100);
-- Adds a new field to users table

DROP TABLE users;
-- delete table

TRUNCATE TABLE users;
-- delete rows from users;