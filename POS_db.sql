PGDMP                         {            postgres    15.2    15.2     
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     ?   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false                      0    16412    roles 
   TABLE DATA           2   COPY users.roles (role_id, role_name) FROM stdin;
    users          postgres    false    217   ?                 0    16417 
   user_roles 
   TABLE DATA           C   COPY users.user_roles (user_role_id, role_id, user_id) FROM stdin;
    users          postgres    false    218   ?                 0    16406    users 
   TABLE DATA           K   COPY users.users (user_id, username, password, email, blocked) FROM stdin;
    users          postgres    false    216   ?             x?????? ? ?            x?????? ? ?            x?????? ? ?     