# Advanced:

-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT pizza_types.name,
       ROUND(SUM(order_details.quantity * pizzas.price) * 100 / 
       (SELECT SUM(order_details.quantity * pizzas.price)
        FROM order_details
        JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id), 2) AS revenue_percentage
FROM order_details
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY pizza_types.name
ORDER BY revenue_percentage DESC;


-- Analyze the cumulative revenue generated over time.

SELECT orders.order_date,
       SUM(order_details.quantity * pizzas.price) AS daily_revenue,
       SUM(SUM(order_details.quantity * pizzas.price)) OVER (ORDER BY orders.order_date) AS cumulative_revenue
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
GROUP BY orders.order_date;


-- Determine the top 3 most ordered pizza types based on revenue for each pizza category. 

SELECT category, name, total_revenue
FROM (
    SELECT pizza_types.category,
           pizza_types.name,
           SUM(order_details.quantity * pizzas.price) AS total_revenue,
           RANK() OVER (PARTITION BY pizza_types.category ORDER BY SUM(order_details.quantity * pizzas.price) DESC) AS revenue_rank
    FROM order_details
    JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
    JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
    GROUP BY pizza_types.category, pizza_types.name
) ranked
WHERE revenue_rank <= 3;






