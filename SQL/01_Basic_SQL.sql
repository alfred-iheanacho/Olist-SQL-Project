-- ====================================================
-- Query 1: Total Customers
-- Purpose: Count the total number of unique customers
-- in the Olist database.
-- ====================================================

SELECT
    COUNT(*) AS total_customers
FROM customers;

-- ====================================================
-- Query 2: Total Orders
-- Purpose: Count the total number of orders placed.
-- ====================================================

SELECT
    COUNT(*) AS total_orders
FROM orders;

-- ====================================================
-- Query 3: Total Revenue
-- Purpose: Calculate the total sales revenue generated
-- from all completed orders.
-- ====================================================

SELECT
    ROUND(SUM(order_total_value), 2) AS total_revenue
FROM orders;


-- ====================================================
-- Query 4: Average Order Value
-- Purpose: Calculate the average monetary value of
-- each order.
-- ====================================================

SELECT
    ROUND(AVG(order_total_value), 2) AS average_order_value
FROM orders;

-- ====================================================
-- Query 5: Order Status Distribution
-- Purpose: Display the number of orders by their
-- current status.
-- ====================================================

SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;