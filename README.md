# 🛒 Olist E-commerce SQL Analysis

## 📖 Project Summary

This project demonstrates the use of SQL to analyze the Brazilian Olist e-commerce dataset. Using SQLite, the analysis explores customer purchasing behavior, sales performance, seller performance, product categories, payment methods, and delivery efficiency to generate meaningful business insights.

The project progresses from fundamental SQL queries to advanced analytical techniques, including Common Table Expressions (CTEs), Window Functions, Ranking Functions, Views, and Indexing. It showcases practical SQL skills commonly used in business intelligence and data analytics.

---

## 🎯 Business Objectives

This project aims to answer the following business questions:

- How many customers and orders exist in the database?
- What is the total sales revenue generated?
- What is the average order value?
- Which Brazilian states generate the highest revenue?
- Which product categories contribute the most sales?
- Who are the top-performing sellers?
- Which payment methods are most frequently used?
- How efficient is the delivery process?
- Which customers generate the highest lifetime value?

---

## 📂 Dataset Overview

**Dataset:** Olist Brazilian E-commerce Public Dataset

**Database:** SQLite

**Database File:** `Olist_SQL.db`

### Tables Used

| Table | Description |
|--------|-------------|
| customers | Customer information |
| orders | Order information |
| order_items | Products purchased in each order |
| products | Product details |
| sellers | Seller information |
| payments | Payment transactions |
| reviews | Customer review scores |
| category_translation | Portuguese to English product category mapping |

---

## 🛠 SQL Skills Demonstrated

Throughout this project, the following SQL concepts were applied:

- SELECT Statements
- WHERE Clause
- Aggregate Functions (`COUNT`, `SUM`, `AVG`)
- GROUP BY
- ORDER BY
- INNER JOIN
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Views
- Indexes
- Business KPI Analysis

---

## 📁 Project Structure

```text
Olist-SQL-Project/
│
├── Database/
│   └── Olist_SQL.db
│
├── Images/
│
├── SQL/
│   ├── 01_Basic_SQL.sql
│   ├── 02_Intermediate_SQL.sql
│   ├── 03_Advanced_SQL.sql
│   └── 04_Expert_SQL.sql
│
└── README.md
```

---

## 🗄 Database Overview
![alt text](ERD.jpeg)

### Database Tables

![Database Tables](Images/database_tables.png)

---

## 📊 Analysis Performed

### Part 1 – Basic SQL Analysis

This section provides an overview of the business through fundamental SQL queries.

Queries include:

- Total Customers
- Total Orders
- Total Revenue
- Average Order Value
- Order Status Distribution

---

### Part 2 – Intermediate SQL Analysis

This section analyzes sales performance across locations, products, and sellers.

Queries include:

- Monthly Revenue
- Revenue by State
- Top Product Categories
- Top Sellers

---

### Part 3 – Advanced SQL Analysis

This section evaluates customer value, delivery performance, customer satisfaction, and payment trends.

Queries include:

- Customer Lifetime Value
- Delivery Performance Analysis
- Payment Method Analysis
- Average Review Score by Product Category

---

### Part 4 – Expert SQL Analysis

This section demonstrates advanced SQL techniques for deeper business analysis.

Queries include:

- Top Customers by Lifetime Value
- Monthly Running Revenue
- Seller Revenue Ranking
- Top Product by Category
- Customer Purchase Frequency
- Average Delivery Time by State
- Revenue Contribution by Category
- Month-over-Month Revenue Growth
- Sales Summary View
- Index Creation

---

## 📷 Results

### Database Tables

![Database Tables](Images/database_tables.png)

### Monthly Revenue

![Monthly Revenue](Images/monthly_revenue.png)

### Revenue by State

![Revenue by State](Images/revenue_by_state.png)

### Top Product Categories

![Top Product Categories](Images/top_categories.png)

### Top Sellers

![Top Sellers](Images/top_sellers.png)

### Customer Lifetime Value

![Customer Lifetime Value](Images/customer_lifetime_value.png)

### Payment Method Analysis

![Payment Method Analysis](Images/payment_method_analysis.png)

### Delivery Performance Analysis

![Delivery Performance](Images/delivery_performance.png)

### Average Review Score by Product Category

![Average Review Score](Images/average_review_score.png)

### Top Customers by Lifetime Value

![Top Customers](Images/top_customers_lifetime_value.png)

### Monthly Running Revenue

![Monthly Running Revenue](Images/monthly_running_revenue.png)

### Seller Revenue Ranking

![Seller Ranking](Images/seller_ranking.png)

### Top Product by Category

![Top Product by Category](Images/top_product_by_category.png)

### Customer Purchase Frequency

![Customer Purchase Frequency](Images/customer_purchase_frequency.png)

### Average Delivery Time by State

![Average Delivery Time](Images/average_delivery_time_state.png)

### Revenue Contribution by Category

![Revenue Contribution](Images/revenue_contribution_category.png)

### Month-over-Month Revenue Growth

![Monthly Revenue Growth](Images/monthly_revenue_growth.png)

### Sales Summary View

![Sales Summary View](Images/sales_summary_view.png)

### Index Creation

![Index Creation](Images/index_creation.png)

---

## 🔍 Key Business Insights

- Olist generated substantial revenue across multiple Brazilian states, with a few regions contributing a significant share of total sales.
- Revenue is concentrated among a relatively small number of high-performing sellers.
- Most customers made only one purchase, while a smaller group generated considerably higher lifetime value.
- Credit cards were the most commonly used payment method across all transactions.
- Product categories such as Bed Bath & Table and Health & Beauty ranked among the highest in total revenue.
- Delivery performance was generally efficient, although average delivery times varied across customer locations.
- Advanced SQL techniques, including CTEs and Window Functions, enabled deeper analysis of customer rankings, cumulative revenue, seller performance, and revenue contribution.

---

## 🏁 Conclusion

This project demonstrates the practical application of SQL for solving real-world business problems using an e-commerce dataset. Through data exploration, aggregation, joins, Common Table Expressions (CTEs), Window Functions, Views, and Indexing, the analysis transforms transactional data into actionable business insights.
The project showcases SQL proficiency in querying relational databases, analyzing business performance, and communicating findings—skills essential for data analyst and business intelligence roles.