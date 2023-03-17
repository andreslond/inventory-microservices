--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-17 17:41:45

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
-- TOC entry 8 (class 2615 OID 16399)
-- Name: sales; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sales;


ALTER SCHEMA sales OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID integer)
-- Name: customers; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.customers (
    customer_id integer NOT NULL,
    name character varying(100) NOT NULL,
    id_card character varying(100),
    address character varying(255),
    phone character varying(50),
    email character varying(100)
);


ALTER TABLE sales.customers OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16405)
-- Name: sale_details; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.sale_details (
    sale_detail_id integer NOT NULL,
    amount integer,
    price money,
    sale_id integer,
    product_id integer
);


ALTER TABLE sales.sale_details OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16408)
-- Name: sales; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.sales (
    sale_id integer NOT NULL,
    sale_date date,
    total numeric(16,0),
    tax numeric(1,2),
    canceled boolean,
    payment_receipt_id integer NOT NULL,
    customer_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE sales.sales OWNER TO postgres;

--
-- TOC entry 3362 (class 0 OID integer)
-- Dependencies: 219
-- Data for Name: customers; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.customers (customer_id, name, id_card, address, phone, email) FROM stdin;
\.


--
-- TOC entry 3363 (class 0 OID 16405)
-- Dependencies: 220
-- Data for Name: sale_details; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.sale_details (sale_detail_id, amount, price, sale_id, product_id) FROM stdin;
\.


--
-- TOC entry 3364 (class 0 OID 16408)
-- Dependencies: 221
-- Data for Name: sales; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.sales (sale_id, sale_date, total, tax, canceled, payment_receipt_id, customer_id, user_id) FROM stdin;
\.


--
-- TOC entry 3213 (class 2606 OID 16412)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 3215 (class 2606 OID 16414)
-- Name: sale_details sale_detail_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.sale_details
    ADD CONSTRAINT sale_detail_pkey PRIMARY KEY (sale_detail_id);


--
-- TOC entry 3217 (class 2606 OID 16416)
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);


--
-- TOC entry 3219 (class 2606 OID 16417)
-- Name: sales customer_id_sales_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.sales
    ADD CONSTRAINT customer_id_sales_fkey FOREIGN KEY (customer_id) REFERENCES sales.customers(customer_id) NOT VALID;


--
-- TOC entry 3218 (class 2606 OID 16422)
-- Name: sale_details sale_id_sale_details_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.sale_details
    ADD CONSTRAINT sale_id_sale_details_fkey FOREIGN KEY (sale_id) REFERENCES sales.sales(sale_id);


-- Completed on 2023-03-17 17:41:47

--
-- PostgreSQL database dump complete
--

