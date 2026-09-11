CREATE DATABASE ecommerce_db;
USE  ecommerce_db;
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
price DECIMAL(10,2),
quantity INT,
city VARCHAR(50),
status VARCHAR(20)
);
SHOW TABLES ;
INSERT INTO products
VALUES
(201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available');
INSERT INTO products
VALUES
(202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');
INSERT INTO products
VALUES
 (203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available');
 INSERT INTO products
VALUES
 (204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available');
 INSERT INTO products
VALUES
 (205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');
 INSERT INTO products
VALUES
 (206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');
 
 -- PART B INSERT OPERATION CONTINUED
 
 INSERT INTO products
VALUES
  (207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available');
  INSERT INTO products
VALUES
  (208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available');
  INSERT INTO products
VALUES
   (209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available');
   INSERT INTO products
VALUES
   (210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');
SELECT * FROM products;

-- PART C BASIC SELECT OPERATOR AND PRACTISE
-- Task 17: Display only product_name
SELECT product_name
FROM products;
 -- task 18 Display product_name and price
 SELECT product_name,price
 FROM products;
 -- TASK 19Display product_name, category, brand and price
 SELECT product_name,category,brand,price
 FROM products;
 
 -- task 20Display products available in Pune
 SELECT *
 FROM products
 WHERE city='Pune';
  
  -- tasj21Display products available in Mumbai
  SELECT *
  FROM products
  WHERE city='Mumbai';
  -- task 22Display all Mobile products
  SELECT*
  FROM products
  WHERE price ='Mobile';
  
  -- task 23 Display all Laptop products
  select*
  FROM  products
  where category='Laptop';
  
  -- Task 24: Display products whose price is greater than 30000
SELECT *
FROM products
WHERE price > 30000;
  -- Task 25: Display products whose price is less than 30000
SELECT *
FROM products
WHERE price < 30000;
-- Task 26: Display products whose price is equal to 35000
SELECT *
FROM products
WHERE price = 35000;
-- Task 27: Display products whose price is greater than or equal to 45000
SELECT *
FROM products
WHERE price >= 45000;
-- Task 28: Display products whose price is less than or equal to 30000
SELECT *
FROM products
WHERE price <= 30000;
-- Task 29: Display products whose quantity is greater than 10
SELECT *
FROM products
WHERE quantity > 10;
-- Task 30: Display products whose quantity is less than 10
SELECT *
FROM products
WHERE quantity < 10;
-- PART D LOGICAL OPEARTOR

-- Task 31: Products from Pune AND Mobile category
SELECT *
FROM products
WHERE city = 'Pune'
AND category = 'Mobile';

-- Task 32: Products from Mumbai AND Available status
SELECT *
FROM products
WHERE city = 'Mumbai'
AND status = 'Available';


-- Task 33: Price > 30000 AND quantity > 5
SELECT *
FROM products
WHERE price > 30000
AND quantity > 5;


-- Task 34: Price >= 30000 AND price <= 60000
SELECT *
FROM products
WHERE price >= 30000
AND price <= 60000;


-- Task 35: Products from Pune OR Mumbai
SELECT *
FROM products
WHERE city = 'Pune'
OR city = 'Mumbai';


-- Task 36: Category Mobile OR Laptop
SELECT *
FROM products
WHERE category = 'Mobile'
OR category = 'Laptop';


-- Task 37: Quantity < 10 OR price > 50000
SELECT *
FROM products
WHERE quantity < 10
OR price > 50000;


-- Task 38: Mobile products AND price > 30000
SELECT *
FROM products
WHERE category = 'Mobile'
AND price > 30000;


-- Task 39: Brand Samsung OR Apple
SELECT *
FROM products
WHERE brand = 'Samsung'
OR brand = 'Apple';


-- Task 40: Pune AND Available AND quantity > 10
SELECT *
FROM products
WHERE city = 'Pune'
AND status = 'Available'
AND quantity > 10;

-- PART E ALL SQL QUERIES

SELECT *FROM products
where price between 25000 and 50000;
-- Task 42: Quantity BETWEEN 5 and 15
SELECT *
FROM products
WHERE quantity BETWEEN 5 AND 15;


-- Task 43: Category IN Mobile, Laptop, Tablet
SELECT *
FROM products
WHERE category IN ('Mobile', 'Laptop', 'Tablet');


-- Task 44: City IN Pune, Mumbai
SELECT *
FROM products
WHERE city IN ('Pune', 'Mumbai');


-- Task 45: Brand NOT Samsung
SELECT *
FROM products
WHERE brand NOT IN ('Samsung');


-- Task 46: Status NOT Out of Stock
SELECT *
FROM products
WHERE status NOT IN ('Out of Stock');


-- Task 47: Price NOT EQUAL TO 30000
SELECT *
FROM products
WHERE price != 30000;


-- Task 48: Product name starts with Galaxy
SELECT *
FROM products
WHERE product_name LIKE 'Galaxy%';


-- Task 49: Product name contains Pad
SELECT *
FROM products
WHERE product_name LIKE '%Pad%';


-- Task 50: Mobile AND (price > 30000 OR quantity > 15)
SELECT *
FROM products
WHERE category = 'Mobile'
AND (price > 30000 OR quantity > 15);

-- Part F — UPDATE Operations
-- Task 51: Update Galaxy M55 price from 32000 to 34000
UPDATE products
SET price = 34000
WHERE product_name = 'Galaxy M55';


-- Task 52: Update iPhone 15 quantity to 12
UPDATE products
SET quantity = 12
WHERE product_name = 'iPhone 15';


-- Task 53: Change Galaxy Watch 6 status to Available
UPDATE products
SET status = 'Available'
WHERE product_name = 'Galaxy Watch 6';


-- Task 54: Increase price of all Mobile products by 2000
UPDATE products
SET price = price + 2000
WHERE category = 'Mobile';


-- Task 55: Increase quantity of all Pune products by 5
UPDATE products
SET quantity = quantity + 5
WHERE city = 'Pune';


-- Task 56: Set status to Out of Stock for products
-- whose quantity is less than 5
UPDATE products
SET status = 'Out of Stock'
WHERE quantity < 5;

-- part g -all queries
-- Task 57: Delete product whose product_id = 210
DELETE FROM products
WHERE product_id = 210;
-- Task 58: Delete products whose price is less than 8000
DELETE FROM products
WHERE price < 8000;
-- Task 59: Delete products where status is Out of stock
DELETE FROM products
WHERE status = 'Out of Stock'
AND quantity < 5;
-- Task 60: Delete Tablet products whose price is greater than 30000
DELETE FROM products
WHERE category = 'Tablet'
AND price > 30000;








