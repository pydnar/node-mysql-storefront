DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INTEGER,
    product_name VARCHAR(30),
    department_name VARCHAR(30),
    price INTEGER,
    stock_quanity INTEGER
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (1, 'HomePod', 'Connected Home', 349, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (2, 'iPhone XR', 'Mobile Phones', 749, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (3, 'iPhone XS', 'Mobile Phones', 1349, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (4, 'Macbook Pro 13"', 'Computers', 1299, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (5, 'Apple Watch 4', 'Mobile Accesories', 399, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (6, 'iPad Pro', 'Mobile Devices', 649, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (7, 'Apple TV 4k', 'Connected Home', 179, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (8, 'Apple AirPods', 'Mobile Accesories', 159, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (9, 'DJI Mavic Pro', 'Drones', 1299, 10);
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity) VALUES (10, 'Belkin Charging Pad', 'Mobile Accessories', 59, 10)
