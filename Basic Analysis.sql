# Basic:

-- Retrieve the total number of orders placed.

SELECT count(order_id) AS total_orders FROM orders;


-- Calculate the total revenue generated from pizza sales.

SELECT ROUND (SUM (order_details.quantity * pizzas.price), 2) AS total_sales
FROM order_details JOIN pizzas 
ON pizzas.pizza_id = order_details.pizza_id;


-- Identify the highest-priced pizza.

SELECT pizza_types.name, pizzas.price
FROM pizza_types JOIN pizzas 
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;


-- Identify the most common pizza size ordered.

SELECT pizzas.size, count(order_details.order_details_id) AS order_count
FROM pizzas JOIN order_details
ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC
LIMIT 1; 


-- List the top 5 most ordered pizza types along with their quantities.

SELECT pizza_types.name, SUM(order_details.quantity) AS total_quantity
FROM order_details
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.name
ORDER BY total_quantity DESC
LIMIT 5;




