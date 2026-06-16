-- Query 1: Total Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM sales3
GROUP BY region;

-- Query 2: Profit by Category
SELECT category, SUM(profit) AS total_profit
FROM sales3
GROUP BY category
ORDER BY total_profit DESC
LIMIT 5;

-- Query 3: Monthly Sales Trend
SELECT substr(order_date, 4, 2) AS month,
SUM(sales) AS total_sales
FROM sales3
WHERE order_date != 'Order Date'
GROUP BY month
ORDER BY month;

-- Query 4: Top 10 Customers
SELECT customer_name, SUM(sales) AS total_sales
FROM sales3
WHERE customer_name != 'Customer Name'
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;