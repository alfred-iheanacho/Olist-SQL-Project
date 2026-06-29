-- ====================================================
-- Query 14: Top 5 Customers by Lifetime Value
-- Purpose: Rank customers based on their total
-- spending across all orders.
-- ====================================================

WITH customer_sales AS (
    SELECT
        customer_id,
        COUNT(order_id) AS total_orders,
        ROUND(SUM(order_total_value), 2) AS lifetime_value
    FROM orders
    GROUP BY customer_id
)

SELECT
    customer_id,
    total_orders,
    lifetime_value,
    RANK() OVER (ORDER BY lifetime_value DESC) AS customer_rank
FROM customer_sales
LIMIT 5;


-- ====================================================
-- Query 15: Monthly Running Revenue
-- Purpose: Calculate cumulative revenue over time.
-- ====================================================

WITH monthly_sales AS (
    SELECT
        purchase_month,
        SUM(order_total_value) AS monthly_revenue
    FROM orders
    GROUP BY purchase_month
)

SELECT
    purchase_month,
    ROUND(monthly_revenue,2) AS monthly_revenue,
    ROUND(
        SUM(monthly_revenue)
        OVER (ORDER BY purchase_month),
        2
    ) AS cumulative_revenue
FROM monthly_sales;



-- ====================================================
-- Query 16: Seller Revenue Ranking
-- Purpose: Rank sellers based on total revenue.
-- ====================================================

SELECT
    seller_id,
    ROUND(SUM(total_item_value),2) AS total_revenue,
    DENSE_RANK() OVER(
        ORDER BY SUM(total_item_value) DESC
    ) AS seller_rank
FROM order_items
GROUP BY seller_id
LIMIT 10;


-- ====================================================
-- Query 17: Top Product in Each Category
-- Purpose: Identify the highest-selling product within
-- each product category.
-- ====================================================

WITH product_sales AS (

SELECT
    ct.product_category_name_english,
    oi.product_id,
    SUM(oi.total_item_value) AS revenue,

    ROW_NUMBER() OVER(

        PARTITION BY ct.product_category_name_english
        ORDER BY SUM(oi.total_item_value) DESC

    ) AS rn

FROM order_items oi

JOIN products p
ON oi.product_id = p.product_id

JOIN category_translation ct
ON p.product_category_name = ct.product_category_name

GROUP BY
    ct.product_category_name_english,
    oi.product_id

)

SELECT
    product_category_name_english,
    product_id,
    ROUND(revenue,2) AS revenue
FROM product_sales
WHERE rn = 1
ORDER BY revenue DESC;


-- ====================================================
-- Query 18: Customer Purchase Frequency
-- Purpose: Classify customers as one-time or repeat
-- buyers.
-- ====================================================

WITH customer_orders AS (

SELECT
    customer_id,
    COUNT(order_id) AS total_orders

FROM orders

GROUP BY customer_id

)

SELECT

CASE

    WHEN total_orders = 1 THEN 'One-Time Customer'
    ELSE 'Repeat Customer'

END AS customer_type,

COUNT(*) AS total_customers

FROM customer_orders

GROUP BY customer_type;


-- ====================================================
-- Query 19: Average Delivery Time by State
-- Purpose: Compare delivery performance across
-- Brazilian states.
-- ====================================================

SELECT

    c.customer_state,

    ROUND(AVG(o.delivery_delay_days),2)
        AS average_delay_days

FROM orders o

JOIN customers c
ON o.customer_id = c.customer_id

GROUP BY c.customer_state

ORDER BY average_delay_days DESC;


-- ====================================================
-- Query 20: Revenue Contribution by Category
-- Purpose: Calculate each product category's
-- percentage contribution to total revenue.
-- ====================================================

WITH category_sales AS (

SELECT

    ct.product_category_name_english,
    SUM(oi.total_item_value) AS revenue

FROM order_items oi

JOIN products p
ON oi.product_id = p.product_id

JOIN category_translation ct
ON p.product_category_name = ct.product_category_name

GROUP BY ct.product_category_name_english

)

SELECT

    product_category_name_english,

    ROUND(revenue,2) AS revenue,

    ROUND(
        revenue * 100.0 /
        SUM(revenue) OVER(),
        2
    ) AS revenue_percentage

FROM category_sales

ORDER BY revenue DESC;


-- ====================================================
-- Query 21: Month-over-Month Revenue Growth
-- Purpose: Measure monthly revenue growth compared
-- with the previous month.
-- ====================================================

WITH monthly_sales AS (

SELECT

    purchase_month,
    SUM(order_total_value) AS revenue

FROM orders

GROUP BY purchase_month

)

SELECT

    purchase_month,

    ROUND(revenue,2) AS revenue,

    ROUND(
        LAG(revenue)
        OVER(ORDER BY purchase_month),
        2
    ) AS previous_month,

    ROUND(
        revenue -
        LAG(revenue)
        OVER(ORDER BY purchase_month),
        2
    ) AS revenue_change

FROM monthly_sales;


-- ====================================================
-- Query 22: Create Sales Summary View
-- Purpose: Create a reusable view containing monthly
-- revenue and total orders.
-- ====================================================

CREATE VIEW monthly_sales_summary AS

SELECT

    purchase_month,

    COUNT(order_id) AS total_orders,

    ROUND(SUM(order_total_value),2)
        AS total_revenue

FROM orders

GROUP BY purchase_month;

SELECT *
FROM monthly_sales_summary;


-- ====================================================
-- Query 23: Create Index
-- Purpose: Improve query performance for joins
-- involving customer_id.
-- ====================================================

CREATE INDEX idx_orders_customer
ON orders(customer_id);