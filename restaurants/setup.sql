drop schema if exists grubhub;
create schema if not exists grubhub;

drop table if exists grubhub.restaurants;
drop table if exists grubhub.orders;

CREATE TABLE grubhub.orders (
    id SERIAL PRIMARY KEY,
    order_amount NUMERIC,
    created TIMESTAMP,
    restaurant_id INT
);

CREATE TABLE grubhub.restaurants (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(255)
);


-- Inserting some fake data into grubhub.restaurants
INSERT INTO grubhub.restaurants (name, country) VALUES ('Olive Garden', 'USA');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Chipotle', 'USA');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Chipotle', 'UK');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Chipotle', 'Spain');
INSERT INTO grubhub.restaurants (name, country) VALUES ('McDonalds', 'UK');
INSERT INTO grubhub.restaurants (name, country) VALUES ('McDonalds', 'China');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Chik-fil-A', 'Spain');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Chik-fil-A', 'USA');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Taco Bell', 'Mexico');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Some taco stand', 'Mexico');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Mom_and_Pop_Deli', 'Canada');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Chipotle', 'Canada');
INSERT INTO grubhub.restaurants (name, country) VALUES ('Taco Bell', 'Canada');
INSERT INTO grubhub.restaurants (name, country) VALUES ('nobody eats here', 'Canada');

-- Inserting some fake data into grubhub.orders
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 1);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 1);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 1);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 1);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 1);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (40.00, '2024-01-01 12:00:00', 1);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 1);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 1);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 2);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 3);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 3);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 3);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 3);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 3);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 3);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 4);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 4);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 5);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-02 12:00:00', 6);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.01, '2024-01-02 12:00:00', 6);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1100002.00, '2024-01-04 12:00:00', 6);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 7);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 7);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 7);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 8);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-02 12:00:00', 8);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.01, '2024-01-02 12:00:00', 9);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1100001.00, '2024-01-04 12:00:00', 9);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 10);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 10);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 10);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 10);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-01-01 12:00:00', 10);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (41.00, '2024-01-01 12:00:00', 10);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 10);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 10);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (2.00, '2024-02-10 12:01:00', 11);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 11);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-03 12:00:00', 11);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-04 12:00:00', 11);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-05 12:00:00', 11);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 11);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-02-01 12:00:00', 12);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 12);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (90.00, '2024-03-01 12:00:00', 12);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 13);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (2.00, '2024-03-01 12:00:00', 13);
INSERT INTO grubhub.orders (order_amount, created, restaurant_id) VALUES (1.00, '2024-03-01 12:00:00', 14);

