SELECT c.country_name, SUM(f.total_profit) AS profit
FROM financials f
JOIN orders o ON f.order_id = o.order_id
JOIN countries c ON o.country_id = c.country_id
GROUP BY c.country_name
ORDER BY profit DESC
LIMIT 5;
