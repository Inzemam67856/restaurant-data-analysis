/*
=========================================================
RESTAURANT DATA ANALYSIS
=========================================================

Database: restaurant_db
Tool: MySQL

Project Overview:
This project analyzes restaurant menu items and customer
orders using SQL.

The analysis is divided into three objectives:

1. Menu Items Analysis
2. Order Details Analysis
3. Customer Order Analysis

SQL concepts used:
- SELECT
- WHERE
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- ORDER BY
- HAVING
- JOIN
- LEFT JOIN
- Subqueries
=========================================================
*/


USE restaurant_db;


/*
=========================================================
OBJECTIVE 1: MENU ITEMS ANALYSIS
=========================================================
*/


-- 1. View the menu_items table
SELECT *
FROM menu_items;


-- 2. Find the number of items on the menu
SELECT COUNT(*) AS total_menu_items
FROM menu_items;


-- 3. Find the least and most expensive items on the menu

-- Least expensive item
SELECT *
FROM menu_items
WHERE price = (
    SELECT MIN(price)
    FROM menu_items
);

-- Most expensive item
SELECT *
FROM menu_items
WHERE price = (
    SELECT MAX(price)
    FROM menu_items
);


-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*) AS italian_dishes
FROM menu_items
WHERE category = 'Italian';


-- 5. Find the least and most expensive Italian dishes

-- Least expensive Italian dish
SELECT *
FROM menu_items
WHERE category = 'Italian'
  AND price = (
      SELECT MIN(price)
      FROM menu_items
      WHERE category = 'Italian'
  );

-- Most expensive Italian dish
SELECT *
FROM menu_items
WHERE category = 'Italian'
  AND price = (
      SELECT MAX(price)
      FROM menu_items
      WHERE category = 'Italian'
  );


-- 6. How many dishes are in each category?
SELECT
    category,
    COUNT(*) AS number_of_dishes
FROM menu_items
GROUP BY category
ORDER BY number_of_dishes DESC;


-- 7. What is the average dish price within each category?
SELECT
    category,
    ROUND(AVG(price), 2) AS average_price
FROM menu_items
GROUP BY category
ORDER BY average_price DESC;


/*
=========================================================
OBJECTIVE 2: ORDER DETAILS ANALYSIS
=========================================================
*/


-- 1. View the order_details table
SELECT *
FROM order_details;


-- 2. What is the date range of the table?
SELECT
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date
FROM order_details;


-- 3. How many orders were made within this date range?
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM order_details;


-- 4. How many items were ordered within this date range?
SELECT
    COUNT(*) AS total_items_ordered
FROM order_details;


-- 5. Which orders had the most number of items?
SELECT
    order_id,
    COUNT(*) AS number_of_items
FROM order_details
GROUP BY order_id
ORDER BY number_of_items DESC;


-- 6. How many orders had more than 12 items?
SELECT
    COUNT(*) AS orders_with_more_than_12_items
FROM (
    SELECT
        order_id,
        COUNT(*) AS number_of_items
    FROM order_details
    GROUP BY order_id
    HAVING COUNT(*) > 12
) AS order_counts;


/*
=========================================================
OBJECTIVE 3: CUSTOMER ORDER ANALYSIS
=========================================================
*/


-- 1. Combine the menu_items and order_details tables
--    to analyze order and menu information together.

SELECT *
FROM menu_items
JOIN order_details
ORDER BY price DESC
LIMIT 1;


-- 2. What were the least and most ordered items?
--    What categories were they in?

-- Least ordered items
SELECT
    item_name,
    category,
    COUNT(order_details_id) AS num_count_purchase
FROM order_details AS od
LEFT JOIN menu_items AS mt
    ON od.item_id = mt.menu_item_id
GROUP BY item_name, category
ORDER BY num_count_purchase;


-- Most ordered items
SELECT
    item_name,
    category,
    COUNT(order_details_id) AS num_count_purchase
FROM order_details AS od
LEFT JOIN menu_items AS mt
    ON od.item_id = mt.menu_item_id
GROUP BY item_name, category
ORDER BY num_count_purchase DESC;


-- 3. What were the top 5 orders that spent the most money?

SELECT
    order_id,
    SUM(price) AS total_spend
FROM order_details AS od
LEFT JOIN menu_items AS mt
    ON od.item_id = mt.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;


-- Top 5 highest-spending orders:
--
-- Order ID     Total Spend
-- 440          $192.15
-- 2075         $191.05
-- 1957         $190.10
-- 330          $189.70
-- 2675         $185.10


-- 4. View the details of the highest-spending order.
--    What insights can be gathered from the results?

SELECT
    category,
    COUNT(order_details_id) AS num_item
FROM order_details AS od
LEFT JOIN menu_items AS mt
    ON od.item_id = mt.menu_item_id
WHERE order_id = 440
GROUP BY category;


-- 5. BONUS: View the details of the top 5 highest-spending orders.
--    What insights can be gathered from the results?

SELECT
    category,
    COUNT(order_details_id) AS num_item
FROM order_details AS od
LEFT JOIN menu_items AS mt
    ON od.item_id = mt.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY category
ORDER BY num_item DESC;
