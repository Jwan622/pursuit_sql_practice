-- also notice instead of CTEs you can use subquery
-- begin by seeing what the subquery gives you

-- SELECT r.country, r.name, SUM(o.order_amount) AS total_amount,
--        RANK() OVER (PARTITION BY r.country ORDER BY SUM(o.order_amount) DESC) as rank
-- FROM grubhub.restaurants r
-- JOIN grubhub.orders o ON r.id = o.restaurant_id
-- GROUP BY r.country, r.name;

-- this is by amount
SELECT country, name, total_amount
FROM (
    SELECT r.country, r.name, SUM(o.order_amount) AS total_amount,
           RANK() OVER (PARTITION BY r.country ORDER BY SUM(o.order_amount) DESC) as rank
    FROM grubhub.restaurants r
    JOIN grubhub.orders o ON r.id = o.restaurant_id
    GROUP BY r.country, r.name
) as ranked
WHERE rank = 1;

--- this has a bug if you're trying to find most popular restaurants by country by order count. can you spot it? How would you debug it?
-- SELECT country, name, total_orders
-- FROM (
--     SELECT r.country, r.name, COUNT(o.id) AS total_orders,
--            RANK() OVER (PARTITION BY r.country ORDER BY SUM(o.order_amount) DESC) as rank
--     FROM grubhub.restaurants r
--     JOIN grubhub.orders o ON r.id = o.restaurant_id
--     GROUP BY r.country, r.name
-- ) as ranked
-- WHERE rank = 1;


-- this is by number of orders, corrected
SELECT country, name, total_orders
FROM (
    SELECT r.country, r.name, COUNT(o.id) AS total_orders,
           RANK() OVER (PARTITION BY r.country ORDER BY COUNT(o.id) DESC) as rank
    FROM grubhub.restaurants r
    JOIN grubhub.orders o ON r.id = o.restaurant_id
    GROUP BY r.country, r.name
) as ranked
WHERE rank = 1;

