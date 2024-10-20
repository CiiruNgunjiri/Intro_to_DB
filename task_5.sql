--use the database provided
USE alx_book_store;

--create table named customer

CREATE TABLE customer (customer_id INT PRIMARY KEY AUTO_INCREMENT, customer_name VARCHAR(215), email VARCHAR(215), address TEXT);

--insert dat values for s single row

INSERT INTO customer (customer_id, customer_name, email, address) 
VALUES (1, "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave."); 
