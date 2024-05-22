--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses_number integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 415, 3);
INSERT INTO public.games VALUES (2, 8, 3);
INSERT INTO public.games VALUES (3, 719, 4);
INSERT INTO public.games VALUES (4, 519, 4);
INSERT INTO public.games VALUES (5, 874, 3);
INSERT INTO public.games VALUES (6, 222, 3);
INSERT INTO public.games VALUES (7, 833, 3);
INSERT INTO public.games VALUES (8, 784, 5);
INSERT INTO public.games VALUES (9, 148, 5);
INSERT INTO public.games VALUES (10, 559, 6);
INSERT INTO public.games VALUES (11, 4, 6);
INSERT INTO public.games VALUES (12, 13, 5);
INSERT INTO public.games VALUES (13, 729, 5);
INSERT INTO public.games VALUES (14, 672, 5);
INSERT INTO public.games VALUES (15, 358, 7);
INSERT INTO public.games VALUES (16, 623, 7);
INSERT INTO public.games VALUES (17, 972, 8);
INSERT INTO public.games VALUES (18, 900, 8);
INSERT INTO public.games VALUES (19, 168, 7);
INSERT INTO public.games VALUES (20, 407, 7);
INSERT INTO public.games VALUES (21, 827, 7);
INSERT INTO public.games VALUES (22, 358, 9);
INSERT INTO public.games VALUES (23, 82, 9);
INSERT INTO public.games VALUES (24, 929, 10);
INSERT INTO public.games VALUES (25, 454, 10);
INSERT INTO public.games VALUES (26, 522, 9);
INSERT INTO public.games VALUES (27, 3, 9);
INSERT INTO public.games VALUES (28, 147, 9);
INSERT INTO public.games VALUES (29, 226, 11);
INSERT INTO public.games VALUES (30, 500, 11);
INSERT INTO public.games VALUES (31, 670, 12);
INSERT INTO public.games VALUES (32, 594, 12);
INSERT INTO public.games VALUES (33, 549, 11);
INSERT INTO public.games VALUES (34, 123, 11);
INSERT INTO public.games VALUES (35, 606, 11);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Santosh');
INSERT INTO public.users VALUES (2, 'Santosh');
INSERT INTO public.users VALUES (3, 'user_1716403719857');
INSERT INTO public.users VALUES (4, 'user_1716403719856');
INSERT INTO public.users VALUES (5, 'user_1716403984798');
INSERT INTO public.users VALUES (6, 'user_1716403984797');
INSERT INTO public.users VALUES (7, 'user_1716404508724');
INSERT INTO public.users VALUES (8, 'user_1716404508723');
INSERT INTO public.users VALUES (9, 'user_1716404538221');
INSERT INTO public.users VALUES (10, 'user_1716404538220');
INSERT INTO public.users VALUES (11, 'user_1716404589189');
INSERT INTO public.users VALUES (12, 'user_1716404589188');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

