-- Sales Performance Analysis

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(order_amount) AS total_sales,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

-- Customer Repeat Rate

SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING total_orders > 1;

-- Top Products by Revenue

SELECT 
    product_name,
    SUM(order_amount) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;
