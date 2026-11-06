-- Q1: Top 10 products by revenue
SELECT "Product Name", ROUND(SUM(Sales), 2) AS revenue
FROM orders
GROUP BY "Product Name"
ORDER BY revenue DESC
LIMIT 10;

-- Q2: Sales by month
SELECT strftime('%m', "Order Date") AS month, ROUND(SUM(Sales), 2) AS sales
FROM orders
GROUP BY month
ORDER BY sales DESC;

-- Q3: Region performance
SELECT Region,
       ROUND(SUM(Sales), 2) AS sales,
       ROUND(SUM(Profit), 2) AS profit,
       ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS margin_pct
FROM orders
GROUP BY Region
ORDER BY sales DESC;

-- Q4: Monthly sales and profit trend
SELECT strftime('%Y-%m', "Order Date") AS year_month,
       ROUND(SUM(Sales), 2) AS sales,
       ROUND(SUM(Profit), 2) AS profit
FROM orders
GROUP BY year_month
ORDER BY year_month;

