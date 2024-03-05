SELECT
    restaurant_id,
    COUNT(*) AS monthly_orders
FROM grubhub.orders
WHERE created >= NOW() - INTERVAL '6 months'
GROUP BY restaurant_id
ORDER BY restaurant_id;

-- contrats with this broken out by month. why is that?
-- SELECT
--     restaurant_id,
--     DATE_TRUNC('month', created) AS order_month,
--     COUNT(*) AS monthly_orders
-- FROM grubhub.orders
-- WHERE created >= NOW() - INTERVAL '6 months'
-- GROUP BY restaurant_id, order_month
-- ORDER BY restaurant_id, order_month;

