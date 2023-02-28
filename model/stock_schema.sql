--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-02-27 19:03:54

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
-- TOC entry 3352 (class 1262 OID 5)
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
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 3352
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 9 (class 2615 OID 16460)
-- Name: stock; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stock;


ALTER SCHEMA stock OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16461)
-- Name: categories; Type: TABLE; Schema: stock; Owner: postgres
--

CREATE TABLE stock.categories (
    category_id bigint NOT NULL,
    description bit varying(50)[]
);


ALTER TABLE stock.categories OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16468)
-- Name: products; Type: TABLE; Schema: stock; Owner: postgres
--

CREATE TABLE stock.products (
    product_id bigint NOT NULL,
    code character varying(50),
    name character varying(100),
    price numeric(10,0),
    stock integer,
    description character varying(255),
    avaiable boolean,
    category_id bigint
);


ALTER TABLE stock.products OWNER TO postgres;

--
-- TOC entry 3345 (class 0 OID 16461)
-- Dependencies: 224
-- Data for Name: categories; Type: TABLE DATA; Schema: stock; Owner: postgres
--



--
-- TOC entry 3346 (class 0 OID 16468)
-- Dependencies: 225
-- Data for Name: products; Type: TABLE DATA; Schema: stock; Owner: postgres
--



--
-- TOC entry 3199 (class 2606 OID 16467)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: stock; Owner: postgres
--

ALTER TABLE ONLY stock.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 3201 (class 2606 OID 16472)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: stock; Owner: postgres
--

ALTER TABLE ONLY stock.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 3202 (class 2606 OID 16473)
-- Name: products category_id_product_fkey; Type: FK CONSTRAINT; Schema: stock; Owner: postgres
--

ALTER TABLE ONLY stock.products
    ADD CONSTRAINT category_id_product_fkey FOREIGN KEY (category_id) REFERENCES stock.categories(category_id);


-- Completed on 2023-02-27 19:03:55

--
-- PostgreSQL database dump complete
--

