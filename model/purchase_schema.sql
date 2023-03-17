--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-17 17:40:52

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
-- TOC entry 7 (class 2615 OID 16398)
-- Name: purchase; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA purchase;


ALTER SCHEMA purchase OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 228 (class 1259 OID 16477)
-- Name: payment_receipt; Type: TABLE; Schema: purchase; Owner: postgres
--

CREATE TABLE purchase.payment_receipt (
    payment_receipt_id integer NOT NULL,
    type character varying(50)
);


ALTER TABLE purchase.payment_receipt OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16482)
-- Name: purchase_detail; Type: TABLE; Schema: purchase; Owner: postgres
--

CREATE TABLE purchase.purchase_detail (
    purchase_detail_id integer NOT NULL,
    amount integer,
    price numeric(16,0),
    purchase_id integer,
    product_id integer
);


ALTER TABLE purchase.purchase_detail OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16472)
-- Name: purchases; Type: TABLE; Schema: purchase; Owner: postgres
--

CREATE TABLE purchase.purchases (
    purchase_id integer NOT NULL,
    purchase_date integer,
    total numeric(16,0),
    tax numeric(2,2),
    canceled boolean,
    payment_receipt_id integer NOT NULL,
    supplier_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE purchase.purchases OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16502)
-- Name: suppliers; Type: TABLE; Schema: purchase; Owner: postgres
--

CREATE TABLE purchase.suppliers (
    supplier_id integer NOT NULL,
    name character varying(100) NOT NULL,
    id_card character varying(100),
    address character varying(255),
    phone character varying(50),
    email character varying(100)
);


ALTER TABLE purchase.suppliers OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 16477)
-- Dependencies: 228
-- Data for Name: payment_receipt; Type: TABLE DATA; Schema: purchase; Owner: postgres
--

COPY purchase.payment_receipt (payment_receipt_id, type) FROM stdin;
\.


--
-- TOC entry 3369 (class 0 OID 16482)
-- Dependencies: 229
-- Data for Name: purchase_detail; Type: TABLE DATA; Schema: purchase; Owner: postgres
--

COPY purchase.purchase_detail (purchase_detail_id, amount, price, purchase_id, product_id) FROM stdin;
\.


--
-- TOC entry 3367 (class 0 OID 16472)
-- Dependencies: 227
-- Data for Name: purchases; Type: TABLE DATA; Schema: purchase; Owner: postgres
--

COPY purchase.purchases (purchase_id, purchase_date, total, tax, canceled, payment_receipt_id, supplier_id, user_id) FROM stdin;
\.


--
-- TOC entry 3370 (class 0 OID 16502)
-- Dependencies: 230
-- Data for Name: suppliers; Type: TABLE DATA; Schema: purchase; Owner: postgres
--

COPY purchase.suppliers (supplier_id, name, id_card, address, phone, email) FROM stdin;
\.


--
-- TOC entry 3216 (class 2606 OID 16481)
-- Name: payment_receipt payment_receipt_pkey; Type: CONSTRAINT; Schema: purchase; Owner: postgres
--

ALTER TABLE ONLY purchase.payment_receipt
    ADD CONSTRAINT payment_receipt_pkey PRIMARY KEY (payment_receipt_id);


--
-- TOC entry 3218 (class 2606 OID 16486)
-- Name: purchase_detail purchase_detail_pkey; Type: CONSTRAINT; Schema: purchase; Owner: postgres
--

ALTER TABLE ONLY purchase.purchase_detail
    ADD CONSTRAINT purchase_detail_pkey PRIMARY KEY (purchase_detail_id);


--
-- TOC entry 3214 (class 2606 OID 16476)
-- Name: purchases purchases_pkey; Type: CONSTRAINT; Schema: purchase; Owner: postgres
--

ALTER TABLE ONLY purchase.purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (purchase_id);


--
-- TOC entry 3220 (class 2606 OID 16508)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: purchase; Owner: postgres
--

ALTER TABLE ONLY purchase.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);


--
-- TOC entry 3224 (class 2606 OID 16487)
-- Name: purchase_detail purchase_detail_purchase_id_fkey; Type: FK CONSTRAINT; Schema: purchase; Owner: postgres
--

ALTER TABLE ONLY purchase.purchase_detail
    ADD CONSTRAINT purchase_detail_purchase_id_fkey FOREIGN KEY (purchase_id) REFERENCES purchase.purchases(purchase_id);


--
-- TOC entry 3221 (class 2606 OID 16492)
-- Name: purchases purchases_payment_receipt_id_fkey; Type: FK CONSTRAINT; Schema: purchase; Owner: postgres
--

ALTER TABLE ONLY purchase.purchases
    ADD CONSTRAINT purchases_payment_receipt_id_fkey FOREIGN KEY (payment_receipt_id) REFERENCES purchase.payment_receipt(payment_receipt_id) NOT VALID;


--
-- TOC entry 3222 (class 2606 OID 16509)
-- Name: purchases purchases_supplier_id_fkey; Type: FK CONSTRAINT; Schema: purchase; Owner: postgres
--

ALTER TABLE ONLY purchase.purchases
    ADD CONSTRAINT purchases_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES purchase.suppliers(supplier_id) NOT VALID;


--
-- TOC entry 3223 (class 2606 OID 16497)
-- Name: purchases purchases_user_id_fkey; Type: FK CONSTRAINT; Schema: purchase; Owner: postgres
--

ALTER TABLE ONLY purchase.purchases
    ADD CONSTRAINT purchases_user_id_fkey FOREIGN KEY (user_id) REFERENCES users.users(user_id) NOT VALID;


-- Completed on 2023-03-17 17:40:53

--
-- PostgreSQL database dump complete
--

