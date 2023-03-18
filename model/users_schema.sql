--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-17 17:42:27

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
-- TOC entry 10 (class 2615 OID 16445)
-- Name: users; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA users;


ALTER SCHEMA users OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16446)
-- Name: roles; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.roles (
    role_id integer NOT NULL,
    role_name character varying(50) NOT NULL
);


ALTER TABLE users.roles OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16449)
-- Name: user_roles; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.user_roles (
    user_role_id integer NOT NULL,
    role_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE users.user_roles OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16452)
-- Name: users; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.users (
    user_id integer NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(50),
    email character varying(100),
    blocked boolean DEFAULT false
);


ALTER TABLE users.users OWNER TO postgres;

--
-- TOC entry 3363 (class 0 OID 16446)
-- Dependencies: 224
-- Data for Name: roles; Type: TABLE DATA; Schema: users; Owner: postgres
--

COPY users.roles (role_id, role_name) FROM stdin;
\.


--
-- TOC entry 3364 (class 0 OID 16449)
-- Dependencies: 225
-- Data for Name: user_roles; Type: TABLE DATA; Schema: users; Owner: postgres
--

COPY users.user_roles (user_role_id, role_id, user_id) FROM stdin;
\.


--
-- TOC entry 3365 (class 0 OID 16452)
-- Dependencies: 226
-- Data for Name: users; Type: TABLE DATA; Schema: users; Owner: postgres
--

COPY users.users (user_id, username, password, email, blocked) FROM stdin;
\.


--
-- TOC entry 3214 (class 2606 OID 16457)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);


--
-- TOC entry 3216 (class 2606 OID 16459)
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_role_id);


--
-- TOC entry 3218 (class 2606 OID 16461)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3219 (class 2606 OID 16462)
-- Name: user_roles roles_role_id_fkey; Type: FK CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.user_roles
    ADD CONSTRAINT roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES users.roles(role_id);


--
-- TOC entry 3220 (class 2606 OID 16467)
-- Name: user_roles users_user_id_fkey; Type: FK CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.user_roles
    ADD CONSTRAINT users_user_id_fkey FOREIGN KEY (user_id) REFERENCES users.users(user_id);


-- Completed on 2023-03-17 17:42:28

--
-- PostgreSQL database dump complete
--

