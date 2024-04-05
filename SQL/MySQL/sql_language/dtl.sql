CREATE TABLE 'product' (id INT PRIMARY KEY, name VARCHAR(50));
BEGIN TRANSACTION -- start
	INSERT INTO product VALUES ('Notebook')
	INSERT INTO product VALUES ('Nobreak')
COMMIT; -- end transaction, save data

-- ROLLBACK
CREATE TABLE 'product' (id INT PRIMARY KEY, name VARCHAR(50));
BEGIN TRANSACTION -- start
    INSERT INTO product VALUES ('Notebook')
    INSERT INTO product VALUES ('Nobreak')
ROLLBACK; -- end transaction, rollback data