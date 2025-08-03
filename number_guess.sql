--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer,
    guesses integer
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
-- Name: username; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.username (
    user_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.username OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.username.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: username user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (68, 32, 10);
INSERT INTO public.games VALUES (69, 33, 58);
INSERT INTO public.games VALUES (70, 33, 139);
INSERT INTO public.games VALUES (71, 34, 449);
INSERT INTO public.games VALUES (72, 34, 377);
INSERT INTO public.games VALUES (73, 33, 665);
INSERT INTO public.games VALUES (74, 33, 840);
INSERT INTO public.games VALUES (75, 33, 148);
INSERT INTO public.games VALUES (76, 35, 826);
INSERT INTO public.games VALUES (77, 35, 992);
INSERT INTO public.games VALUES (78, 36, 247);
INSERT INTO public.games VALUES (79, 36, 343);
INSERT INTO public.games VALUES (80, 35, 232);
INSERT INTO public.games VALUES (81, 35, 942);
INSERT INTO public.games VALUES (82, 35, 21);
INSERT INTO public.games VALUES (83, 37, 351);
INSERT INTO public.games VALUES (84, 37, 12);
INSERT INTO public.games VALUES (85, 38, 809);
INSERT INTO public.games VALUES (86, 38, 872);
INSERT INTO public.games VALUES (87, 37, 492);
INSERT INTO public.games VALUES (88, 37, 549);
INSERT INTO public.games VALUES (89, 37, 364);
INSERT INTO public.games VALUES (90, 39, 659);
INSERT INTO public.games VALUES (91, 39, 902);
INSERT INTO public.games VALUES (92, 40, 136);
INSERT INTO public.games VALUES (93, 40, 74);
INSERT INTO public.games VALUES (94, 39, 634);
INSERT INTO public.games VALUES (95, 39, 557);
INSERT INTO public.games VALUES (96, 39, 883);
INSERT INTO public.games VALUES (97, 41, 740);
INSERT INTO public.games VALUES (98, 41, 524);
INSERT INTO public.games VALUES (99, 42, 216);
INSERT INTO public.games VALUES (100, 42, 533);
INSERT INTO public.games VALUES (101, 41, 904);
INSERT INTO public.games VALUES (102, 41, 919);
INSERT INTO public.games VALUES (103, 41, 230);
INSERT INTO public.games VALUES (104, 43, 984);
INSERT INTO public.games VALUES (105, 43, 123);
INSERT INTO public.games VALUES (106, 44, 717);
INSERT INTO public.games VALUES (107, 44, 656);
INSERT INTO public.games VALUES (108, 43, 831);
INSERT INTO public.games VALUES (109, 43, 908);
INSERT INTO public.games VALUES (110, 43, 483);
INSERT INTO public.games VALUES (111, 45, 39);
INSERT INTO public.games VALUES (112, 45, 928);
INSERT INTO public.games VALUES (113, 46, 155);
INSERT INTO public.games VALUES (114, 46, 107);
INSERT INTO public.games VALUES (115, 45, 566);
INSERT INTO public.games VALUES (116, 45, 732);
INSERT INTO public.games VALUES (117, 45, 483);
INSERT INTO public.games VALUES (118, 47, 257);
INSERT INTO public.games VALUES (119, 47, 548);
INSERT INTO public.games VALUES (120, 48, 64);
INSERT INTO public.games VALUES (121, 48, 538);
INSERT INTO public.games VALUES (122, 47, 679);
INSERT INTO public.games VALUES (123, 47, 402);
INSERT INTO public.games VALUES (124, 47, 781);
INSERT INTO public.games VALUES (125, 49, 451);
INSERT INTO public.games VALUES (126, 49, 385);
INSERT INTO public.games VALUES (127, 50, 188);
INSERT INTO public.games VALUES (128, 50, 611);
INSERT INTO public.games VALUES (129, 49, 744);
INSERT INTO public.games VALUES (130, 49, 631);
INSERT INTO public.games VALUES (131, 49, 254);
INSERT INTO public.games VALUES (132, 51, 31);
INSERT INTO public.games VALUES (133, 51, 108);
INSERT INTO public.games VALUES (134, 52, 723);
INSERT INTO public.games VALUES (135, 52, 93);
INSERT INTO public.games VALUES (136, 51, 651);
INSERT INTO public.games VALUES (137, 51, 584);
INSERT INTO public.games VALUES (138, 51, 825);
INSERT INTO public.games VALUES (139, 53, 627);
INSERT INTO public.games VALUES (140, 53, 492);
INSERT INTO public.games VALUES (141, 54, 660);
INSERT INTO public.games VALUES (142, 54, 784);
INSERT INTO public.games VALUES (143, 53, 225);
INSERT INTO public.games VALUES (144, 53, 697);
INSERT INTO public.games VALUES (145, 53, 193);
INSERT INTO public.games VALUES (146, 55, 687);
INSERT INTO public.games VALUES (147, 55, 403);
INSERT INTO public.games VALUES (148, 56, 273);
INSERT INTO public.games VALUES (149, 56, 738);
INSERT INTO public.games VALUES (150, 55, 63);
INSERT INTO public.games VALUES (151, 55, 709);
INSERT INTO public.games VALUES (152, 55, 345);
INSERT INTO public.games VALUES (153, 57, 421);
INSERT INTO public.games VALUES (154, 57, 541);
INSERT INTO public.games VALUES (155, 58, 505);
INSERT INTO public.games VALUES (156, 58, 960);
INSERT INTO public.games VALUES (157, 57, 474);
INSERT INTO public.games VALUES (158, 57, 8);
INSERT INTO public.games VALUES (159, 57, 783);
INSERT INTO public.games VALUES (160, 59, 485);
INSERT INTO public.games VALUES (161, 59, 263);
INSERT INTO public.games VALUES (162, 60, 922);
INSERT INTO public.games VALUES (163, 60, 558);
INSERT INTO public.games VALUES (164, 59, 734);
INSERT INTO public.games VALUES (165, 59, 503);
INSERT INTO public.games VALUES (166, 59, 926);
INSERT INTO public.games VALUES (167, 61, 412);
INSERT INTO public.games VALUES (168, 61, 788);
INSERT INTO public.games VALUES (169, 62, 808);
INSERT INTO public.games VALUES (170, 62, 484);
INSERT INTO public.games VALUES (171, 61, 524);
INSERT INTO public.games VALUES (172, 61, 572);
INSERT INTO public.games VALUES (173, 61, 673);
INSERT INTO public.games VALUES (174, 63, 521);
INSERT INTO public.games VALUES (175, 63, 36);
INSERT INTO public.games VALUES (176, 64, 179);
INSERT INTO public.games VALUES (177, 64, 364);
INSERT INTO public.games VALUES (178, 63, 734);
INSERT INTO public.games VALUES (179, 63, 44);
INSERT INTO public.games VALUES (180, 63, 927);
INSERT INTO public.games VALUES (181, 65, 309);
INSERT INTO public.games VALUES (182, 65, 833);
INSERT INTO public.games VALUES (183, 66, 480);
INSERT INTO public.games VALUES (184, 66, 254);
INSERT INTO public.games VALUES (185, 65, 973);
INSERT INTO public.games VALUES (186, 65, 753);
INSERT INTO public.games VALUES (187, 65, 181);
INSERT INTO public.games VALUES (188, 67, 812);
INSERT INTO public.games VALUES (189, 67, 11);
INSERT INTO public.games VALUES (190, 68, 582);
INSERT INTO public.games VALUES (191, 68, 203);
INSERT INTO public.games VALUES (192, 67, 376);
INSERT INTO public.games VALUES (193, 67, 175);
INSERT INTO public.games VALUES (194, 67, 294);
INSERT INTO public.games VALUES (195, 32, 8);
INSERT INTO public.games VALUES (196, 69, 775);
INSERT INTO public.games VALUES (197, 69, 896);
INSERT INTO public.games VALUES (198, 70, 252);
INSERT INTO public.games VALUES (199, 70, 791);
INSERT INTO public.games VALUES (200, 69, 208);
INSERT INTO public.games VALUES (201, 69, 680);
INSERT INTO public.games VALUES (202, 69, 602);
INSERT INTO public.games VALUES (203, 71, 916);
INSERT INTO public.games VALUES (204, 71, 252);
INSERT INTO public.games VALUES (205, 72, 180);
INSERT INTO public.games VALUES (206, 72, 98);
INSERT INTO public.games VALUES (207, 71, 927);
INSERT INTO public.games VALUES (208, 71, 776);
INSERT INTO public.games VALUES (209, 71, 210);
INSERT INTO public.games VALUES (210, 73, 679);
INSERT INTO public.games VALUES (211, 73, 847);
INSERT INTO public.games VALUES (212, 74, 707);
INSERT INTO public.games VALUES (213, 74, 614);
INSERT INTO public.games VALUES (214, 73, 563);
INSERT INTO public.games VALUES (215, 73, 899);
INSERT INTO public.games VALUES (216, 73, 195);
INSERT INTO public.games VALUES (217, 75, 210);
INSERT INTO public.games VALUES (218, 75, 152);
INSERT INTO public.games VALUES (219, 76, 614);
INSERT INTO public.games VALUES (220, 76, 271);
INSERT INTO public.games VALUES (221, 75, 748);
INSERT INTO public.games VALUES (222, 75, 481);
INSERT INTO public.games VALUES (223, 75, 714);
INSERT INTO public.games VALUES (224, 77, 325);
INSERT INTO public.games VALUES (225, 77, 310);
INSERT INTO public.games VALUES (226, 78, 325);
INSERT INTO public.games VALUES (227, 78, 246);
INSERT INTO public.games VALUES (228, 77, 163);
INSERT INTO public.games VALUES (229, 77, 17);
INSERT INTO public.games VALUES (230, 77, 794);
INSERT INTO public.games VALUES (231, 79, 22);
INSERT INTO public.games VALUES (232, 79, 992);
INSERT INTO public.games VALUES (233, 80, 420);
INSERT INTO public.games VALUES (234, 80, 782);
INSERT INTO public.games VALUES (235, 79, 394);
INSERT INTO public.games VALUES (236, 79, 64);
INSERT INTO public.games VALUES (237, 79, 525);
INSERT INTO public.games VALUES (238, 81, 422);
INSERT INTO public.games VALUES (239, 81, 101);
INSERT INTO public.games VALUES (240, 82, 590);
INSERT INTO public.games VALUES (241, 82, 675);
INSERT INTO public.games VALUES (242, 81, 884);
INSERT INTO public.games VALUES (243, 81, 166);
INSERT INTO public.games VALUES (244, 81, 1000);


--
-- Data for Name: username; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.username VALUES (32, 'Test');
INSERT INTO public.username VALUES (33, 'user_1754215339500');
INSERT INTO public.username VALUES (34, 'user_1754215339499');
INSERT INTO public.username VALUES (35, 'user_1754215383872');
INSERT INTO public.username VALUES (36, 'user_1754215383871');
INSERT INTO public.username VALUES (37, 'user_1754215466206');
INSERT INTO public.username VALUES (38, 'user_1754215466205');
INSERT INTO public.username VALUES (39, 'user_1754215768913');
INSERT INTO public.username VALUES (40, 'user_1754215768912');
INSERT INTO public.username VALUES (41, 'user_1754215816887');
INSERT INTO public.username VALUES (42, 'user_1754215816886');
INSERT INTO public.username VALUES (43, 'user_1754215834373');
INSERT INTO public.username VALUES (44, 'user_1754215834372');
INSERT INTO public.username VALUES (45, 'user_1754215838207');
INSERT INTO public.username VALUES (46, 'user_1754215838206');
INSERT INTO public.username VALUES (47, 'user_1754215840060');
INSERT INTO public.username VALUES (48, 'user_1754215840059');
INSERT INTO public.username VALUES (49, 'user_1754215848792');
INSERT INTO public.username VALUES (50, 'user_1754215848791');
INSERT INTO public.username VALUES (51, 'user_1754215851593');
INSERT INTO public.username VALUES (52, 'user_1754215851592');
INSERT INTO public.username VALUES (53, 'user_1754216055160');
INSERT INTO public.username VALUES (54, 'user_1754216055159');
INSERT INTO public.username VALUES (55, 'user_1754216063558');
INSERT INTO public.username VALUES (56, 'user_1754216063557');
INSERT INTO public.username VALUES (57, 'user_1754216108515');
INSERT INTO public.username VALUES (58, 'user_1754216108514');
INSERT INTO public.username VALUES (59, 'user_1754216112218');
INSERT INTO public.username VALUES (60, 'user_1754216112217');
INSERT INTO public.username VALUES (61, 'user_1754216114653');
INSERT INTO public.username VALUES (62, 'user_1754216114652');
INSERT INTO public.username VALUES (63, 'user_1754216116809');
INSERT INTO public.username VALUES (64, 'user_1754216116808');
INSERT INTO public.username VALUES (65, 'user_1754216175289');
INSERT INTO public.username VALUES (66, 'user_1754216175288');
INSERT INTO public.username VALUES (67, 'user_1754216301040');
INSERT INTO public.username VALUES (68, 'user_1754216301039');
INSERT INTO public.username VALUES (69, 'user_1754216431152');
INSERT INTO public.username VALUES (70, 'user_1754216431150');
INSERT INTO public.username VALUES (71, 'user_1754216440668');
INSERT INTO public.username VALUES (72, 'user_1754216440667');
INSERT INTO public.username VALUES (73, 'user_1754216457398');
INSERT INTO public.username VALUES (74, 'user_1754216457397');
INSERT INTO public.username VALUES (75, 'user_1754216500550');
INSERT INTO public.username VALUES (76, 'user_1754216500549');
INSERT INTO public.username VALUES (77, 'user_1754216506917');
INSERT INTO public.username VALUES (78, 'user_1754216506916');
INSERT INTO public.username VALUES (79, 'user_1754216516744');
INSERT INTO public.username VALUES (80, 'user_1754216516743');
INSERT INTO public.username VALUES (81, 'user_1754216540896');
INSERT INTO public.username VALUES (82, 'user_1754216540895');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 244, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 82, true);


--
-- Name: username username_user_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_user_id_key UNIQUE (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.username(user_id);


--
-- PostgreSQL database dump complete
--

