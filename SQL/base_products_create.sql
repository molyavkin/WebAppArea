--CREATE DATABASE store;
USE store
CREATE TABLE products(
id INT IDENTITY NOT NULL,
product_name NVARCHAR(30),
CONSTRAINT PK_id_prod PRIMARY KEY (id))
USE store
CREATE TABLE categories(
id INT IDENTITY NOT NULL,
category_name NVARCHAR(30),
CONSTRAINT PK_id_cat PRIMARY KEY (id))

USE store
CREATE TABLE according(
product_id INT,
category_id INT,
CONSTRAINT PK_accord PRIMARY KEY (product_id, category_id),
CONSTRAINT FK_product_id FOREIGN KEY (product_id) REFERENCES products(id),
CONSTRAINT FK_category_id FOREIGN KEY (category_id) REFERENCES categories(id))

USE store
INSERT INTO categories (category_name) VALUES('Drinks')
INSERT INTO categories (category_name) VALUES('Bakery')
INSERT INTO categories (category_name) VALUES('Porridge')

USE store
INSERT INTO products (product_name) VALUES('Juice')
INSERT INTO products (product_name) VALUES('Biscuit')
INSERT INTO products (product_name) VALUES('Rice porridge')
INSERT INTO products (product_name) VALUES('buckwheat porridge')
INSERT INTO products (product_name) VALUES('Lemonade')
INSERT INTO products (product_name) VALUES('Salad')
INSERT INTO products (product_name) VALUES('Fish')
INSERT INTO products (product_name) VALUES('Meat')

USE store
INSERT INTO according VALUES(1,1)
INSERT INTO according VALUES(2,2)
INSERT INTO according VALUES(3,3)
INSERT INTO according VALUES(4,3)
INSERT INTO according VALUES(5,1)

use store
select product_name, category_name from products
left join according on products.id = according.product_id
left join categories on categories.id = according.category_id;