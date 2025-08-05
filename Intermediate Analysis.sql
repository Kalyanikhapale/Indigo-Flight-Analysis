# Intermediate:

-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT pizza_types.category, SUM(order_details.quantity) AS total_quantity
FROM order_details
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.category;


-- Determine the distribution of orders by hour of the day.

SELECT HOUR(order_time) AS order_hour, COUNT(*) AS order_count
FROM orders
GROUP BY order_hour
ORDER BY order_hour;


-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT pizza_types.category, COUNT(DISTINCT pizzas.pizza_id) AS total_pizzas
FROM pizzas
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.category;


-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT AVG(daily_pizzas) AS avg_pizzas_per_day
FROM (
  SELECT orders.order_date, SUM(order_details.quantity) AS daily_pizzas
  FROM orders
  JOIN order_details ON orders.order_id = order_details.order_id
  GROUP BY orders.order_date
) AS subquery;


-- Determine the top 3 most ordered pizza types based on revenue.

SELECT pizza_types.name, SUM(order_details.quantity * pizzas.price) AS total_revenue
FROM order_details
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.name
ORDER BY total_revenue DESC
LIMIT 3;













