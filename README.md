# 🍽️ Restaurant Data Analysis — MySQL

SQL-based analysis of restaurant menu items and customer orders using MySQL.

## 📌 Project Overview

This project analyzes restaurant menu and order data using SQL to answer
business-related questions about menu pricing, customer orders, item
popularity, and spending patterns.

The analysis is divided into three objectives:

1. Menu Items Analysis
2. Order Details Analysis
3. Customer Order Analysis

---

## 🗂️ Database Structure

The project uses two main tables:

### `menu_items`

Contains information about the restaurant's menu items.

| Column | Description |
|---|---|
| `menu_item_id` | Unique identifier for each menu item |
| `item_name` | Name of the menu item |
| `category` | Category of the dish |
| `price` | Price of the item |

### `order_details`

Contains information about customer orders.

| Column | Description |
|---|---|
| `order_details_id` | Unique identifier for each order detail |
| `order_id` | Identifier of the customer order |
| `order_date` | Date of the order |
| `order_time` | Time of the order |
| `item_id` | Identifier of the ordered menu item |

---

## 🎯 Objectives

### Objective 1 — Menu Items Analysis

The first objective focuses on understanding the restaurant's menu.

Questions explored:

- How many items are available on the menu?
- What are the least and most expensive items?
- How many Italian dishes are available?
- What are the least and most expensive Italian dishes?
- How many dishes are in each category?
- What is the average price within each category?

### Objective 2 — Order Details Analysis

The second objective focuses on understanding customer ordering activity.

Questions explored:

- What is the date range of the orders?
- How many orders were made during this period?
- How many items were ordered?
- Which orders contained the most items?
- How many orders contained more than 12 items?

### Objective 3 — Customer Order Analysis

The third objective combines menu and order data to analyze customer purchasing behavior.

Questions explored:

- Which items were ordered the least and most?
- Which categories did those items belong to?
- Which five orders had the highest total spending?
- What categories were included in the highest-spending order?
- What category-level patterns can be observed across the top five highest-spending orders?

---

## 🛠️ SQL Concepts Used

This project uses the following SQL concepts:

- `SELECT`
- `WHERE`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `ROUND()`
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- `LIMIT`
- `DISTINCT`
- `INNER JOIN`
- `LEFT JOIN`
- Subqueries

---

## 📊 Key Finding

The five highest-spending orders identified in the analysis were:

| Order ID | Total Spend |
|---:|---:|
| 440 | $192.15 |
| 2075 | $191.05 |
| 1957 | $190.10 |
| 330 | $189.70 |
| 2675 | $185.10 |

Further category-level analysis was performed on these high-spending orders to understand their composition.

---

## 📁 Project Files

```text
restaurant-data-analysis/
│
├── README.md
└── restaurant_analysis.sql 





