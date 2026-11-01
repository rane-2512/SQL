SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       ROUND(SUM(f.total_revenue), 2) AS revenue
FROM financials f
JOIN orders o ON f.order_id = o.order_id
GROUP BY month
ORDER BY month;
