-- Delayed Orders
SELECT o.order_id, DATEDIFF(o.ship_date, o.order_date) AS delay_days, f.total_profit
FROM orders o
JOIN financials f ON o.order_id = f.order_id
WHERE DATEDIFF(o.ship_date, o.order_date) > 10
ORDER BY delay_days DESC;
