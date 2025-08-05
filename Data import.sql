CREATE DATABASE Pizza_Hut;
USE Pizza_Hut;


CREATE TABLE pizzas (
    pizza_id VARCHAR(50) PRIMARY KEY,
    pizza_type_id VARCHAR(50),
    size CHAR(1),
    price DECIMAL(5,2)
);

SELECT * FROM pizzas;


CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    ingredients TEXT
);

SELECT * FROM pizza_types;


CREATE TABLE orders (
    order_id INT primary key,
    order_date DATE not null,
    order_time TIME not null
);

SELECT * FROM orders;


CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    pizza_id VARCHAR(50) NOT NULL,
    quantity INT NOT NULL
);

SELECT * FROM order_details;



