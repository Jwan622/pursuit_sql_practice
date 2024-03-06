--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Homebrew)
-- Dumped by pg_dump version 14.11 (Homebrew)

-- Started on 2024-03-05 22:11:40 EST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 16465)
-- Name: grubhub; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA grubhub;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 211 (class 1259 OID 16609)
-- Name: orders; Type: TABLE; Schema: grubhub; Owner: -
--

CREATE TABLE grubhub.orders (
    id integer NOT NULL,
    order_amount numeric,
    created timestamp without time zone,
    restaurant_id integer
);


--
-- TOC entry 210 (class 1259 OID 16608)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: grubhub; Owner: -
--

CREATE SEQUENCE grubhub.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 210
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: grubhub; Owner: -
--

ALTER SEQUENCE grubhub.orders_id_seq OWNED BY grubhub.orders.id;


--
-- TOC entry 213 (class 1259 OID 16618)
-- Name: restaurants; Type: TABLE; Schema: grubhub; Owner: -
--

CREATE TABLE grubhub.restaurants (
    id integer NOT NULL,
    name character varying(255),
    country character varying(255)
);


--
-- TOC entry 212 (class 1259 OID 16617)
-- Name: restaurants_id_seq; Type: SEQUENCE; Schema: grubhub; Owner: -
--

CREATE SEQUENCE grubhub.restaurants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 212
-- Name: restaurants_id_seq; Type: SEQUENCE OWNED BY; Schema: grubhub; Owner: -
--

ALTER SEQUENCE grubhub.restaurants_id_seq OWNED BY grubhub.restaurants.id;


--
-- TOC entry 3504 (class 2604 OID 16612)
-- Name: orders id; Type: DEFAULT; Schema: grubhub; Owner: -
--

ALTER TABLE ONLY grubhub.orders ALTER COLUMN id SET DEFAULT nextval('grubhub.orders_id_seq'::regclass);


--
-- TOC entry 3505 (class 2604 OID 16621)
-- Name: restaurants id; Type: DEFAULT; Schema: grubhub; Owner: -
--

ALTER TABLE ONLY grubhub.restaurants ALTER COLUMN id SET DEFAULT nextval('grubhub.restaurants_id_seq'::regclass);


--
-- TOC entry 3650 (class 0 OID 16609)
-- Dependencies: 211
-- Data for Name: orders; Type: TABLE DATA; Schema: grubhub; Owner: -
--

COPY grubhub.orders (id, order_amount, created, restaurant_id) FROM stdin;
1	1.00	2024-01-01 12:00:00	1
2	1.00	2024-01-01 12:00:00	1
3	1.00	2024-01-01 12:00:00	1
4	1.00	2024-01-01 12:00:00	1
5	1.00	2024-01-01 12:00:00	1
6	40.00	2024-01-01 12:00:00	1
7	1.00	2024-02-01 12:00:00	1
8	1.00	2024-02-01 12:00:00	1
9	1.00	2024-02-01 12:00:00	2
10	1.00	2024-02-01 12:00:00	2
11	1.00	2024-02-01 12:00:00	2
12	1.00	2024-02-01 12:00:00	2
13	1.00	2024-02-01 12:00:00	2
14	1.00	2024-02-01 12:00:00	2
15	1.00	2024-02-01 12:00:00	2
16	1.00	2024-02-01 12:00:00	2
17	1.00	2024-02-01 12:00:00	2
18	1.00	2024-02-01 12:00:00	2
19	1.00	2024-02-01 12:00:00	3
20	1.00	2024-02-01 12:00:00	3
21	1.00	2024-02-01 12:00:00	3
22	1.00	2024-02-01 12:00:00	3
23	1.00	2024-02-01 12:00:00	3
24	1.00	2024-03-01 12:00:00	3
25	1.00	2024-03-01 12:00:00	4
26	1.00	2024-03-01 12:00:00	4
27	1.00	2024-03-01 12:00:00	5
28	1.00	2024-01-02 12:00:00	6
29	1.01	2024-01-02 12:00:00	6
30	1100002.00	2024-01-04 12:00:00	6
31	1.00	2024-03-01 12:00:00	7
32	1.00	2024-03-01 12:00:00	7
33	1.00	2024-03-01 12:00:00	7
34	1.00	2024-03-01 12:00:00	8
35	1.00	2024-01-02 12:00:00	8
36	1.01	2024-01-02 12:00:00	9
37	1100001.00	2024-01-04 12:00:00	9
38	1.00	2024-01-01 12:00:00	10
39	1.00	2024-01-01 12:00:00	10
40	1.00	2024-01-01 12:00:00	10
41	1.00	2024-01-01 12:00:00	10
42	1.00	2024-01-01 12:00:00	10
43	41.00	2024-01-01 12:00:00	10
44	1.00	2024-02-01 12:00:00	10
45	1.00	2024-02-01 12:00:00	10
46	2.00	2024-02-10 12:01:00	11
47	1.00	2024-02-01 12:00:00	11
48	1.00	2024-02-03 12:00:00	11
49	1.00	2024-02-04 12:00:00	11
50	1.00	2024-02-05 12:00:00	11
51	1.00	2024-02-01 12:00:00	11
52	1.00	2024-02-01 12:00:00	12
53	1.00	2024-03-01 12:00:00	12
54	90.00	2024-03-01 12:00:00	12
55	1.00	2024-03-01 12:00:00	13
56	2.00	2024-03-01 12:00:00	13
57	1.00	2024-03-01 12:00:00	14
\.


--
-- TOC entry 3652 (class 0 OID 16618)
-- Dependencies: 213
-- Data for Name: restaurants; Type: TABLE DATA; Schema: grubhub; Owner: -
--

COPY grubhub.restaurants (id, name, country) FROM stdin;
1	Olive Garden	USA
2	Chipotle	USA
3	Chipotle	UK
4	Chipotle	Spain
5	McDonalds	UK
6	McDonalds	China
7	Chik-fil-A	Spain
8	Chik-fil-A	USA
9	Taco Bell	Mexico
10	Some taco stand	Mexico
11	Mom_and_Pop_Deli	Canada
12	Chipotle	Canada
13	Taco Bell	Canada
14	nobody eats here	Canada
\.


--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 210
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: grubhub; Owner: -
--

SELECT pg_catalog.setval('grubhub.orders_id_seq', 57, true);


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 212
-- Name: restaurants_id_seq; Type: SEQUENCE SET; Schema: grubhub; Owner: -
--

SELECT pg_catalog.setval('grubhub.restaurants_id_seq', 14, true);


--
-- TOC entry 3507 (class 2606 OID 16616)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: grubhub; Owner: -
--

ALTER TABLE ONLY grubhub.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3509 (class 2606 OID 16625)
-- Name: restaurants restaurants_pkey; Type: CONSTRAINT; Schema: grubhub; Owner: -
--

ALTER TABLE ONLY grubhub.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);


-- Completed on 2024-03-05 22:11:42 EST

--
-- PostgreSQL database dump complete
--

