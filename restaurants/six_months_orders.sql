SELECT COUNT(*) AS total_orders_last_6_months
FROM grubhub.orders
WHERE created >= NOW() - INTERVAL '6 months';
