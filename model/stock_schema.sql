--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-17 17:42:09

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
-- TOC entry 9 (class 2615 OID 16427)
-- Name: stock; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stock;


ALTER SCHEMA stock OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 16428)
-- Name: categories; Type: TABLE; Schema: stock; Owner: postgres
--

CREATE TABLE stock.categories (
    category_id integer NOT NULL,
    description bit varying(50)[]
);


ALTER TABLE stock.categories OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16433)
-- Name: products; Type: TABLE; Schema: stock; Owner: postgres
--

CREATE TABLE stock.products (
    product_id integer NOT NULL,
    code character varying(50),
    name character varying(100),
    price numeric(10,0),
    stock integer,
    description character varying(255),
    avaiable boolean,
    category_id integer
);


ALTER TABLE stock.products OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 16428)
-- Dependencies: 222
-- Data for Name: categories; Type: TABLE DATA; Schema: stock; Owner: postgres
--

COPY stock.categories (category_id, description) FROM stdin;
\.


--
-- TOC entry 3359 (class 0 OID 16433)
-- Dependencies: 223
-- Data for Name: products; Type: TABLE DATA; Schema: stock; Owner: postgres
--

COPY stock.products (product_id, code, name, price, stock, description, avaiable, category_id) FROM stdin;
\.


--
-- TOC entry 3212 (class 2606 OID 16437)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: stock; Owner: postgres
--

ALTER TABLE ONLY stock.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 3214 (class 2606 OID 16439)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: stock; Owner: postgres
--

ALTER TABLE ONLY stock.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 3215 (class 2606 OID 16440)
-- Name: products category_id_product_fkey; Type: FK CONSTRAINT; Schema: stock; Owner: postgres
--

ALTER TABLE ONLY stock.products
    ADD CONSTRAINT category_id_product_fkey FOREIGN KEY (category_id) REFERENCES stock.categories(category_id);


-- Completed on 2023-03-17 17:42:10

--
-- PostgreSQL database dump complete
--

