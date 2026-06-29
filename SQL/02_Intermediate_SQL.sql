-- ====================================================
-- Query 6: Monthly Revenue
-- Purpose: Calculate total sales revenue for each
-- purchase month.
-- ====================================================

SELECT
    purchase_month,
    ROUND(SUM(order_total_value), 2) AS monthly_revenue
FROM orders
GROUP BY purchase_month
ORDER BY purchase_month;


-- ====================================================
-- Query 7: Revenue by Customer State
-- Purpose: Calculate total revenue generated from
-- customers in each Brazilian state.
-- ====================================================

SELECT
    c.customer_state,
    ROUND(SUM(o.order_total_value), 2) AS total_revenue
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC;


-- ====================================================
-- Query 8: Top 10 Product Categories by Revenue
-- Purpose: Identify the highest revenue-generating
-- product categories.
-- ====================================================

SELECT
    ct.product_category_name_english,
    ROUND(SUM(oi.total_item_value), 2) AS total_revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN category_translation ct
    ON p.product_category_name = ct.product_category_name
GROUP BY ct.product_category_name_english
ORDER BY total_revenue DESC
LIMIT 10;


-- ====================================================
-- Query 9: Top 10 Sellers by Revenue
-- Purpose: Identify sellers with the highest total
-- sales revenue.
-- ====================================================

SELECT
    seller_id,
    ROUND(SUM(total_item_value), 2) AS total_revenue
FROM order_items
GROUP BY seller_id
ORDER BY total_revenue DESC
LIMIT 10;