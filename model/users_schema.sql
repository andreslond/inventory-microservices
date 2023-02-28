-- SCHEMA: users

-- DROP SCHEMA IF EXISTS users ;

CREATE SCHEMA IF NOT EXISTS users
    AUTHORIZATION postgres;
	
--------------------------------------------------------------------------
-- Table: users.users

-- DROP TABLE IF EXISTS users.users;

CREATE TABLE IF NOT EXISTS users.users
(
    user_id bigint NOT NULL,
    username character varying(100) COLLATE pg_catalog."default" NOT NULL,
    password character varying(50) COLLATE pg_catalog."default",
    email character varying(100) COLLATE pg_catalog."default",
    blocked boolean DEFAULT 'false',
    CONSTRAINT users_pkey PRIMARY KEY (user_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS users.users
    OWNER to postgres;

--------------------------------------------------------------------------	
-- Table: users.roles

-- DROP TABLE IF EXISTS users.roles;

CREATE TABLE IF NOT EXISTS users.roles
(
    role_id bigint NOT NULL,
    role_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT roles_pkey PRIMARY KEY (role_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS users.roles
    OWNER to postgres;

--------------------------------------------------------------------------
-- Table: users.user_roles

-- DROP TABLE IF EXISTS users.user_roles;

CREATE TABLE IF NOT EXISTS users.user_roles
(
    user_role_id bigint NOT NULL,
    role_id bigint NOT NULL,
    user_id bigint NOT NULL,
    CONSTRAINT user_roles_pkey PRIMARY KEY (user_role_id),
    CONSTRAINT roles_role_id_fkey FOREIGN KEY (role_id)
        REFERENCES users.roles (role_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT users_user_id_fkey FOREIGN KEY (user_id)
        REFERENCES users.users (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS users.user_roles
    OWNER to postgres;