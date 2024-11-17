CREATE TABLE products (id INT PRIMARY KEY, product_name VARCHAR(50), price DECIMAL(10,2));
INSERT INTO products VALUES (1, 'Mobile', 15000), (2, 'Tablet', 12000), (3, 'Laptop', 40000);

SELECT * FROM PRODUCTS

/*
List all products whose prices are above the average price from the products table.
*/

SELECT PRODUCT_NAME,
	   PRICE
FROM PRODUCTS WHERE PRICE >
(SELECT AVG(PRICE)FROM PRODUCTS)