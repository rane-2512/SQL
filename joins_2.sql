SELECT p.item_type,
       ROUND(SUM(f.total_profit) / SUM(f.total_cost) * 100, 2) AS profit_margin_pct
FROM financials f
JOIN orders o ON f.order_id = o.order_id
JOIN products p ON o.product_id = p.product_id
GROUP BY p.item_type
ORDER BY profit_margin_pct DESC;
