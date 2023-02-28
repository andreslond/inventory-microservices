--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-02-27 19:13:35

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
-- TOC entry 3359 (class 1262 OID 5)
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
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 3359
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 7 (class 2615 OID 16398)
-- Name: users; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA users;


ALTER SCHEMA users OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16412)
-- Name: roles; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.roles (
    role_id bigint NOT NULL,
    role_name character varying(50) NOT NULL
);


ALTER TABLE users.roles OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16417)
-- Name: user_roles; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.user_roles (
    user_role_id bigint NOT NULL,
    role_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE users.user_roles OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16406)
-- Name: users; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.users (
    user_id bigint NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(50),
    email character varying(100),
    blocked boolean DEFAULT false
);


ALTER TABLE users.users OWNER TO postgres;

--
-- TOC entry 3352 (class 0 OID 16412)
-- Dependencies: 220
-- Data for Name: roles; Type: TABLE DATA; Schema: users; Owner: postgres
--



--
-- TOC entry 3353 (class 0 OID 16417)
-- Dependencies: 221
-- Data for Name: user_roles; Type: TABLE DATA; Schema: users; Owner: postgres
--



--
-- TOC entry 3351 (class 0 OID 16406)
-- Dependencies: 219
-- Data for Name: users; Type: TABLE DATA; Schema: users; Owner: postgres
--



--
-- TOC entry 3204 (class 2606 OID 16416)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);


--
-- TOC entry 3206 (class 2606 OID 16421)
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_role_id);


--
-- TOC entry 3202 (class 2606 OID 16411)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3207 (class 2606 OID 16427)
-- Name: user_roles roles_role_id_fkey; Type: FK CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.user_roles
    ADD CONSTRAINT roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES users.roles(role_id);


--
-- TOC entry 3208 (class 2606 OID 16422)
-- Name: user_roles users_user_id_fkey; Type: FK CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.user_roles
    ADD CONSTRAINT users_user_id_fkey FOREIGN KEY (user_id) REFERENCES users.users(user_id);


-- Completed on 2023-02-27 19:13:36

--
-- PostgreSQL database dump complete
--

