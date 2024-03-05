--  first see what this gives, just the counts grouped by name and country
-- select name as restaurant_name,
--     country,
--     count(1)
-- from grubhub.orders o
-- inner join grubhub.restaurants as r
-- on r.id = o.restaurant_id
-- group by name, country
-- ;

-- look at this too. uncomment and run and notice which restaurants are ranked 4th that won't appear at the end
-- select name as restaurant_name,
--         country,
--         row_number() over (partition by country order by count(1) desc) as rank,
--         count(1) as order_count
-- from grubhub.orders o
-- inner join grubhub.restaurants as r
-- on r.id = o.restaurant_id
-- group by name, country

with ranked as (
    SELECT r.country, r.name, COUNT(1) AS order_count,
        ROW_NUMBER() OVER (PARTITION BY r.country ORDER BY COUNT(1) DESC) as rn
    FROM grubhub.restaurants r
    JOIN grubhub.orders o ON r.id = o.restaurant_id
    GROUP BY r.country, r.name
)
SELECT country, name, order_count, rn
FROM ranked
WHERE rn <= 3;
