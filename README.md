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

- Total_Customers
- Total_Orders
- Total_Revenue
- Average_Order_Value
- Order_Status_Distribution

---

### Part 2 – Intermediate SQL Analysis

This section analyzes sales performance across locations, products, and sellers.

Queries include:

- Monthly_Revenue
- Revenue_by_State
- Top_Product_Categories
- Top_Sellers

---

### Part 3 – Advanced SQL Analysis

This section evaluates customer value, delivery performance, customer satisfaction, and payment trends.

Queries include:

- Customer_Lifetime_Value
- Delivery_Performance_Analysis
- Payment_Method_Analysis
- Average_Review_Score_by_Product_Category

---

### Part 4 – Expert SQL Analysis

This section demonstrates advanced SQL techniques for deeper business analysis.

Queries include:

- Top_Customers_by_Lifetime_Value
- Monthly_Running_Revenue
- Seller_Revenue_Ranking
- Top_Product_by_Category
- Customer_Purchase_Frequency
- Average_Delivery_Time_by_State
- Revenue_Contribution_by_Category
- Month-over-Month_Revenue_Growth
- Sales_Summary_View
- Index_Creation

---

---

## 📷 Results

### Database Tables

The screenshots below show the structure of the Olist SQLite database and the available tables used throughout the analysis.

![Database Tables - Part 1](images/Table1.png)

![Database Tables - Part 2](images/Table2.png)

![Database Tables - Part 3](images/Table3.png)

![Database Tables - Part 4](images/Table4.png)

### Total Revenue

![Total Revenue](images/Total_Revenue.png)

### Monthly Revenue

![Monthly Revenue](images/Monthly_Revenue.png)

### Revenue by State

![Revenue by State](images/Revenue_by_State.png)

### Top Product Categories

![Top Product Categories](images/Top_10_Product_Categories.png)

### Top Sellers

![Top Sellers](images/Top_Sellers.png)

### Customer Lifetime Value

![Customer Lifetime Value](images/Customer_Lifetime_Value.png)

### Payment Method Analysis

![Payment Method Analysis](images/Payment_Method_Analysis.png)

### Delivery Performance Analysis

![Delivery Performance Analysis](images/Delivery_Performance_Analysis.png)

### Average Review Score by Product Category

![Average Review Score by Category](images/Average_Review_Score_by_Category.png)

### Top 5 Customers by Lifetime Value

![Top 5 Customers by Lifetime Value](images/Top_5_Customers_by_Lifetime_Value.png)

### Monthly Running Revenue

![Monthly Running Revenue](images/Monthly_Running_Revenue.png)

### Seller Revenue Ranking

![Seller Revenue Ranking](images/Seller_Revenue_Ranking.png)

### Top Product in Each Category

![Top Product in Each Category](images/Product_in_Each_Category.png)

### Customer Purchase Frequency

![Customer Purchase Frequency](images/Customer_Purchase_Frequency.png)

### Average Delivery Time by State

![Average Delivery Time by State](images/Average_Delivery_Time_by_State.png)

### Revenue Contribution by Product Category

![Revenue Contribution by Product Category](images/Revenue_Contribution_by_Product_Category.png)

### Month-over-Month Revenue Growth

![Month-over-Month Revenue Growth](images/Month-over-Month_Revenue_Growth.png)

### Sales Summary View

![Sales Summary View](images/Sales_Summary_View.png)

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