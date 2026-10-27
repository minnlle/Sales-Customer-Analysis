SELECT COUNT(*) AS total_orders 
FROM orders;

SELECT 
    SUM(sales_amount) AS total_revenue,
    AVG(sales_amount) AS mean_sales,
    MIN(sales_amount) AS min_sales,
    MAX(sales_amount) AS max_sales
FROM orders;

SELECT 
    c.region,
    COUNT(o.order_id) AS total_orders,
    SUM(o.sales_amount) AS regional_revenue,
    AVG(o.sales_amount) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.region
ORDER BY regional_revenue DESC;
