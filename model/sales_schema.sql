--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-02-27 18:56:32

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

DROP DATABASE postgres;
--
-- TOC entry 3350 (class 1262 OID 5)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 3350
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 8 (class 2615 OID 16432)
-- Name: sales; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sales;


ALTER SCHEMA sales OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16438)
-- Name: customers; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.customers (
    customer_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    id_card character varying(100),
    address character varying(255),
    phone character varying(50),
    email character varying(100)
);


ALTER TABLE sales.customers OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16445)
-- Name: sale_details; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.sale_details (
    sale_detail_id bigint NOT NULL,
    amount integer,
    price money,
    sale_id bigint,
    product_id bigint
);


ALTER TABLE sales.sale_details OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16433)
-- Name: sales; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.sales (
    sale_id bigint NOT NULL,
    sale_date date,
    total numeric(16,0),
    tax numeric(1,2),
    canceled boolean,
    payment_receipt_id bigint NOT NULL,
    customer_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE sales.sales OWNER TO postgres;

--
-- TOC entry 3343 (class 0 OID 16438)
-- Dependencies: 221
-- Data for Name: customers; Type: TABLE DATA; Schema: sales; Owner: postgres
--



--
-- TOC entry 3344 (class 0 OID 16445)
-- Dependencies: 222
-- Data for Name: sale_details; Type: TABLE DATA; Schema: sales; Owner: postgres
--



--
-- TOC entry 3342 (class 0 OID 16433)
-- Dependencies: 220
-- Data for Name: sales; Type: TABLE DATA; Schema: sales; Owner: postgres
--



--
-- TOC entry 3195 (class 2606 OID 16444)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 3197 (class 2606 OID 16449)
-- Name: sale_details sale_detail_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.sale_details
    ADD CONSTRAINT sale_detail_pkey PRIMARY KEY (sale_detail_id);


--
-- TOC entry 3193 (class 2606 OID 16437)
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);


--
-- TOC entry 3198 (class 2606 OID 16455)
-- Name: sales customer_id_sales_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.sales
    ADD CONSTRAINT customer_id_sales_fkey FOREIGN KEY (customer_id) REFERENCES sales.customers(customer_id) NOT VALID;


--
-- TOC entry 3199 (class 2606 OID 16450)
-- Name: sale_details sale_id_sale_details_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.sale_details
    ADD CONSTRAINT sale_id_sale_details_fkey FOREIGN KEY (sale_id) REFERENCES sales.sales(sale_id);


-- Completed on 2023-02-27 18:56:34

--
-- PostgreSQL database dump complete
--

