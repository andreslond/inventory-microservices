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