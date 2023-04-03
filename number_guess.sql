--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(255) NOT NULL
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
-- Name: won_user_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.won_user_games (
    game_id integer NOT NULL,
    user_id integer,
    guess_count integer NOT NULL
);


ALTER TABLE public.won_user_games OWNER TO freecodecamp;

--
-- Name: won_user_games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.won_user_games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.won_user_games_game_id_seq OWNER TO freecodecamp;

--
-- Name: won_user_games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.won_user_games_game_id_seq OWNED BY public.won_user_games.game_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: won_user_games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games ALTER COLUMN game_id SET DEFAULT nextval('public.won_user_games_game_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'abhisek');
INSERT INTO public.users VALUES (2, 'user_1680495032269');
INSERT INTO public.users VALUES (3, 'user_1680495032268');
INSERT INTO public.users VALUES (4, 'user_1680495190329');
INSERT INTO public.users VALUES (5, 'user_1680495190328');
INSERT INTO public.users VALUES (6, 'user_1680495317208');
INSERT INTO public.users VALUES (7, 'user_1680495317207');
INSERT INTO public.users VALUES (8, 'user_1680495322844');
INSERT INTO public.users VALUES (9, 'user_1680495322843');
INSERT INTO public.users VALUES (10, 'user_1680495463732');
INSERT INTO public.users VALUES (11, 'user_1680495463731');
INSERT INTO public.users VALUES (12, 'user_1680495520684');
INSERT INTO public.users VALUES (13, 'user_1680495520683');
INSERT INTO public.users VALUES (14, 'user_1680495551015');
INSERT INTO public.users VALUES (15, 'user_1680495551014');
INSERT INTO public.users VALUES (16, 'user_1680495732860');
INSERT INTO public.users VALUES (17, 'user_1680495732859');
INSERT INTO public.users VALUES (18, 'user_1680495847098');
INSERT INTO public.users VALUES (19, 'user_1680495847097');


--
-- Data for Name: won_user_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.won_user_games VALUES (1, 1, 18);
INSERT INTO public.won_user_games VALUES (2, 2, 596);
INSERT INTO public.won_user_games VALUES (3, 2, 467);
INSERT INTO public.won_user_games VALUES (4, 3, 587);
INSERT INTO public.won_user_games VALUES (5, 3, 863);
INSERT INTO public.won_user_games VALUES (6, 2, 709);
INSERT INTO public.won_user_games VALUES (7, 2, 757);
INSERT INTO public.won_user_games VALUES (8, 2, 254);
INSERT INTO public.won_user_games VALUES (9, 1, 9);
INSERT INTO public.won_user_games VALUES (10, 4, 968);
INSERT INTO public.won_user_games VALUES (11, 4, 215);
INSERT INTO public.won_user_games VALUES (12, 5, 391);
INSERT INTO public.won_user_games VALUES (13, 5, 74);
INSERT INTO public.won_user_games VALUES (14, 4, 1);
INSERT INTO public.won_user_games VALUES (15, 4, 2);
INSERT INTO public.won_user_games VALUES (16, 4, 737);
INSERT INTO public.won_user_games VALUES (17, 1, 13);
INSERT INTO public.won_user_games VALUES (18, 6, 216);
INSERT INTO public.won_user_games VALUES (19, 6, 242);
INSERT INTO public.won_user_games VALUES (20, 7, 521);
INSERT INTO public.won_user_games VALUES (21, 7, 642);
INSERT INTO public.won_user_games VALUES (22, 6, 1);
INSERT INTO public.won_user_games VALUES (23, 6, 93);
INSERT INTO public.won_user_games VALUES (24, 6, 67);
INSERT INTO public.won_user_games VALUES (25, 8, 780);
INSERT INTO public.won_user_games VALUES (26, 8, 580);
INSERT INTO public.won_user_games VALUES (27, 9, 797);
INSERT INTO public.won_user_games VALUES (28, 9, 981);
INSERT INTO public.won_user_games VALUES (29, 8, 50);
INSERT INTO public.won_user_games VALUES (30, 8, 177);
INSERT INTO public.won_user_games VALUES (31, 8, 538);
INSERT INTO public.won_user_games VALUES (32, 10, 440);
INSERT INTO public.won_user_games VALUES (33, 10, 133);
INSERT INTO public.won_user_games VALUES (34, 11, 843);
INSERT INTO public.won_user_games VALUES (35, 11, 738);
INSERT INTO public.won_user_games VALUES (36, 10, 601);
INSERT INTO public.won_user_games VALUES (37, 10, 8);
INSERT INTO public.won_user_games VALUES (38, 10, 828);
INSERT INTO public.won_user_games VALUES (39, 1, 12);
INSERT INTO public.won_user_games VALUES (40, 12, 794);
INSERT INTO public.won_user_games VALUES (41, 12, 829);
INSERT INTO public.won_user_games VALUES (42, 13, 316);
INSERT INTO public.won_user_games VALUES (43, 13, 546);
INSERT INTO public.won_user_games VALUES (44, 12, 803);
INSERT INTO public.won_user_games VALUES (45, 12, 652);
INSERT INTO public.won_user_games VALUES (46, 12, 454);
INSERT INTO public.won_user_games VALUES (47, 14, 347);
INSERT INTO public.won_user_games VALUES (48, 14, 239);
INSERT INTO public.won_user_games VALUES (49, 15, 451);
INSERT INTO public.won_user_games VALUES (50, 15, 667);
INSERT INTO public.won_user_games VALUES (51, 14, 638);
INSERT INTO public.won_user_games VALUES (52, 14, 693);
INSERT INTO public.won_user_games VALUES (53, 14, 448);
INSERT INTO public.won_user_games VALUES (54, 16, 2);
INSERT INTO public.won_user_games VALUES (55, 16, 94);
INSERT INTO public.won_user_games VALUES (56, 17, 117);
INSERT INTO public.won_user_games VALUES (57, 17, 409);
INSERT INTO public.won_user_games VALUES (58, 16, 741);
INSERT INTO public.won_user_games VALUES (59, 16, 106);
INSERT INTO public.won_user_games VALUES (60, 16, 468);
INSERT INTO public.won_user_games VALUES (61, 1, 9);
INSERT INTO public.won_user_games VALUES (62, 18, 451);
INSERT INTO public.won_user_games VALUES (63, 18, 673);
INSERT INTO public.won_user_games VALUES (64, 19, 287);
INSERT INTO public.won_user_games VALUES (65, 19, 372);
INSERT INTO public.won_user_games VALUES (66, 18, 922);
INSERT INTO public.won_user_games VALUES (67, 18, 664);
INSERT INTO public.won_user_games VALUES (68, 18, 987);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


--
-- Name: won_user_games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.won_user_games_game_id_seq', 68, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: won_user_games won_user_games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games
    ADD CONSTRAINT won_user_games_pkey PRIMARY KEY (game_id);


--
-- Name: won_user_games won_user_games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games
    ADD CONSTRAINT won_user_games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

