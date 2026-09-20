# 🍽️ Restaurant Data Analysis — MySQL

> My first SQL data analysis project — exploring restaurant menu and
> order data using MySQL and answering practical business questions.

---

## 📌 Project Overview

This project focuses on analyzing restaurant menu and order data using
MySQL.

The main purpose of this project was not only to practice SQL syntax,
but to understand how SQL can be used to answer practical business
questions from real-world-style data.

The analysis covers menu pricing, order volume, item popularity,
customer spending, and category-level purchasing patterns.

The project is divided into three main objectives:

1. **Menu Items Analysis**
2. **Order Details Analysis**
3. **Customer Order Analysis**

---

## 🎯 Project Objectives

### Objective 1 — Menu Items Analysis

The first objective focuses on understanding the restaurant's menu.

Questions explored:

- How many items are available on the menu?
- What are the least and most expensive items?
- How many Italian dishes are available?
- What are the least and most expensive Italian dishes?
- How many dishes are available in each category?
- What is the average dish price within each category?

---

### Objective 2 — Order Details Analysis

The second objective focuses on understanding customer ordering
activity.

Questions explored:

- What is the date range of the orders?
- How many orders were made within this date range?
- How many items were ordered?
- Which orders contained the most items?
- How many orders had more than 12 items?

---

### Objective 3 — Customer Order Analysis

The third objective combines menu and order information to understand
customer purchasing behavior.

Questions explored:

- Which items were ordered the least and the most?
- Which categories did those items belong to?
- Which five orders had the highest total spending?
- What categories were included in the highest-spending order?
- What patterns can be observed across the top five
  highest-spending orders?

---

## 🗂️ Database Structure

The analysis uses two main tables.

### `menu_items`

Contains information about the restaurant's menu.

| Column | Description |
|---|---|
| `menu_item_id` | Unique identifier for each menu item |
| `item_name` | Name of the menu item |
| `category` | Category of the dish |
| `price` | Price of the menu item |

### `order_details`

Contains information about individual order details.

| Column | Description |
|---|---|
| `order_details_id` | Unique identifier for each order detail |
| `order_id` | Identifier of the customer order |
| `order_date` | Date of the order |
| `order_time` | Time of the order |
| `item_id` | Identifier of the ordered menu item |

---

## 🛠️ SQL Concepts Practiced

Throughout this project, I practiced:

- `SELECT`
- `WHERE`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `ROUND()`
- `DISTINCT`
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- `LIMIT`
- `JOIN`
- `LEFT JOIN`
- Subqueries

---

## 📊 Key Results

The five highest-spending orders identified during the analysis were:

| Rank | Order ID | Total Spend |
|---:|---:|---:|
| 1 | 440 | $192.15 |
| 2 | 2075 | $191.05 |
| 3 | 1957 | $190.10 |
| 4 | 330 | $189.70 |
| 5 | 2675 | $185.10 |

Additional category-level analysis was performed on these orders to
understand the composition of high-spending purchases.

---

## 💡 What I Learned

This project helped me understand that SQL is more than just writing
queries — it can be used to translate business questions into
measurable analysis.

Some of the things I practiced were:

- Breaking a business question into smaller analytical questions
- Exploring data before drawing conclusions
- Aggregating data using functions such as `COUNT()`, `SUM()`,
  and `AVG()`
- Grouping and sorting results to identify patterns
- Combining related tables using joins
- Using subqueries to answer more specific questions
- Looking at data from a business perspective rather than only
  focusing on SQL syntax

---

## 📂 Dataset

The dataset used in this project is the **Restaurant Orders** dataset
from **Maven Analytics**.

The dataset contains restaurant menu and order information from a
fictitious restaurant serving international cuisine.

**Source:** Maven Analytics — Restaurant Orders

The dataset was used for educational and practice purposes.

---

## 🙏 Special Thanks

A special thanks to **Maven Analytics** for providing the dataset and
creating the **Restaurant Order Analysis** Guided Project.

Their learning resources and YouTube content helped me practice SQL
through a practical business scenario and understand how data analysis
questions can be approached in a structured way.

I highly recommend Maven Analytics as a learning resource for anyone
starting or improving their data analytics journey.

---

## 🎓 About This Project

This is my **first SQL data analysis project**.

I completed this project primarily as a learning and practice
exercise while developing my SQL skills.

The project was based on a guided learning experience, so I want to
be transparent that this is not being presented as an entirely
original business case.

My goal was to understand the process:

**Business Question → SQL Query → Data → Analysis → Insight**

Rather than simply memorizing SQL syntax, I wanted to understand the
types of questions that analysts may need to answer when working with
business data.

This project gave me an opportunity to practice that process using
restaurant menu and order data.

---

## 🚀 What's Next?

This is only the beginning of my data analytics journey.

I plan to continue building more projects as I improve my SQL and
other data skills.

Future projects will increasingly include:

- Independently selected datasets
- My own analytical questions
- Independent project ideas
- Deeper business analysis
- Data visualization
- Python-based analysis
- More advanced SQL techniques

My goal is to gradually move from guided practice projects toward
completely independent projects where I define the problem,
investigate the data, and communicate the insights myself.

**This is just the first step. 🚀**

---

## 📁 Repository Structure

```text
restaurant-data-analysis/
│
├── README.md
├── restaurant_analysis.sql
├── menu_items.csv
└── order_details.csv



