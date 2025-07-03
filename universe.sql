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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_million_year integer,
    diameter integer,
    description text,
    has_life boolean,
    distance_earth numeric(4,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_million_year integer,
    diameter integer,
    description text,
    has_life boolean,
    planet_id integer,
    distance_earth numeric(4,1)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_mon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_million_year integer,
    diameter integer,
    distance_earth numeric(2,1),
    description text,
    has_life boolean
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_other_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_other_id_seq OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_other_id_seq OWNED BY public.other.other_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_million_year integer,
    diameter integer,
    description text,
    has_life boolean,
    star_id integer,
    distance_earth numeric(4,1)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_million_year integer,
    diameter integer,
    description text,
    has_life boolean,
    galaxy_id integer,
    distance_earth numeric(4,1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mon_id_seq'::regclass);


--
-- Name: other other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other ALTER COLUMN other_id SET DEFAULT nextval('public.other_other_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Voie Lactée', 13600, 100000, 'Notre galaxie, contenant notre systéme solaire, est une galaxie spirale barrée.', true, 0.0);
INSERT INTO public.galaxy VALUES (2, 'Andromède', 10000, 220000, 'La galaxie spirale la plus proche de la Voie Lactée, en route pour une collision future avec elle.', false, 2.5);
INSERT INTO public.galaxy VALUES (3, 'Galaxie du Triangle', 7000, 50000, 'Une galaxie spirale, membre du Groupe local, qui comprend également la Voie Lactée et Andromède.', false, 2.7);
INSERT INTO public.galaxy VALUES (4, 'Galaxie du Tourbillon', 10000, 75000, 'Une galaxie spirale célèbre pour sa structure en spirale bien définie et son interaction avec une galaxie compagne.', false, 23.0);
INSERT INTO public.galaxy VALUES (5, 'Galaxie du Sombrero', 11000, 50000, 'Une galaxie spirale vue par la tranche, connue pour son bulbe central proéminent et son disque de poussière.', false, 28.0);
INSERT INTO public.galaxy VALUES (6, 'Galaxie d Andromède II', 10000, 3000, 'Une galaxie naine sphéroïdale, satellite de la galaxie d Andromède.', false, 2.2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 4530, 3474, 'The only natural satellite of Earth, influencing tides and stabilizing Earth s axial tilt.', NULL, 1, 0.0);
INSERT INTO public.moon VALUES (2, '(Hypothetical) Terra Secunda', 4500, 1200, 'A hypothetical second moon of Earth, possibly captured from asteroid belt.', NULL, 1, 0.0);
INSERT INTO public.moon VALUES (3, 'Phobos', 4500, 22, 'The larger and closer of Mars two moons, expected to crash into Mars or break apart in the future.', false, 2, 0.0);
INSERT INTO public.moon VALUES (4, 'Deimos', 4500, 12, 'The smaller and outer moon of Mars, with a more stable orbit compared to Phobos.', false, 2, 0.0);
INSERT INTO public.moon VALUES (5, 'Mirach Alpha', 1950, 3000, 'A hypothetical large moon with a dense atmosphere, orbiting Mirach Prime.', false, 3, 200.0);
INSERT INTO public.moon VALUES (6, 'Mirach Beta', 1900, 1500, 'A smaller hypothetical moon with icy geysers, also orbiting Mirach Prime.', false, 3, 200.0);
INSERT INTO public.moon VALUES (7, 'Mirach Gamma', 1850, 1000, 'A rocky hypothetical moon with ancient lava flows.', false, 4, 200.0);
INSERT INTO public.moon VALUES (8, 'Mirach Delta', 800, 1000, 'A smaller barren moon with a surface covered in craters.', false, 4, 200.0);
INSERT INTO public.moon VALUES (9, 'HD Alpha Prime', 9900, 4000, 'A hypothetical moon with a thick, methane-rich atmosphere.', false, 5, 2.7);
INSERT INTO public.moon VALUES (10, 'HD Alpha Secundus', 9800, 2000, 'A smaller moon with a rocky core and icy surface.', false, 5, 2.7);
INSERT INTO public.moon VALUES (11, 'HD Beta Prime', 9400, 1500, 'A hypothetical moon with a thin atmosphere and ancient riverbeds.', false, 6, 2.7);
INSERT INTO public.moon VALUES (12, 'HD Beta Secundus', 9300, 1000, 'A smaller, airless moon with a heavily cratered surface.', false, 6, 2.7);
INSERT INTO public.moon VALUES (13, 'M51 Alpha', 9, 1000, 'A hypothetical moon with a molten surface due to tidal forces.', false, 7, 23.0);
INSERT INTO public.moon VALUES (14, 'M51 Beta', 8, 800, 'A smaller moon with a fractured, icy surface.', false, 7, 23.0);
INSERT INTO public.moon VALUES (15, 'M51 Gamma', 14, 600, 'A small, dense moon with a metallic core.', false, 8, 23.0);
INSERT INTO public.moon VALUES (16, 'M51 Delta', 13, 500, 'An even smaller moon with a porous, icy structure.', false, 8, 23.0);
INSERT INTO public.moon VALUES (17, 'Messier Prime Alpha', 9900, 3500, 'A large hypothetical moon with a  thick, toxic atmosphere.', false, 9, 28.0);
INSERT INTO public.moon VALUES (18, 'Messier Prime Beta', 9800, 1800, 'A smaller moon with a rocky surface and ancient lava plains.', false, 9, 28.0);
INSERT INTO public.moon VALUES (19, 'Messier Secundus Alpha', 9400, 1200, 'A hypothetical moon with a thin atmosphere and frozen lakes.', false, 10, 28.0);
INSERT INTO public.moon VALUES (20, 'Messier Secundus Beta', 9300, 900, 'A smaller, barren moon with a surface covered in dust.', false, 10, 28.0);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'test1', 1, 1, 1.0, 'test', true);
INSERT INTO public.other VALUES (2, 'test2', 1, 1, 1.0, 'test', true);
INSERT INTO public.other VALUES (3, 'test3', 1, 1, 1.0, 'test', true);
INSERT INTO public.other VALUES (4, 'test4', 1, 1, 1.0, 'test', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4543, 12742, 'Our home planet, known for its diverse ecosystems and abundant water.', true, 1, 0.0);
INSERT INTO public.planet VALUES (2, 'Mars', 4503, 6779, 'Known as the Red Planet, Mars has the largest volcano and valley in the solar system.', false, 1, 0.5);
INSERT INTO public.planet VALUES (3, 'Mirach Prime', 200, 14000, 'A hypothetical gas giant orbiting the red giant star Mirach.', false, 2, 200.0);
INSERT INTO public.planet VALUES (4, 'Mirach Secundus', 1900, 10000, 'A hypothetical terrestrial planet with extreme temperature variations.', false, 2, 200.0);
INSERT INTO public.planet VALUES (5, 'HD 14982 Alpha', 10000, 13000, 'A hypothetical ice giant with a system of moons.', false, 3, 2.7);
INSERT INTO public.planet VALUES (6, 'HD 14982 Beta', 9500, 9500, 'A hypothetical rocky planet with a dense atmosphere.', false, 3, 2.7);
INSERT INTO public.planet VALUES (7, 'M51-ULS-1a', 10, 12000, 'A hypothetical planet orbiting a neutron star, with extreme radiation levels.', false, 4, 23.0);
INSERT INTO public.planet VALUES (8, 'M51-ULS-1b', 15, 8000, 'A hypothetical small, dense planet with a metallic core.', false, 4, 23.0);
INSERT INTO public.planet VALUES (9, 'Messier 104 Prime', 10000, 11000, 'A hypothetical planet with a thick, toxic atmosphere.', false, 5, 28.0);
INSERT INTO public.planet VALUES (10, 'Messier 104 Secundus', 9500, 7000, 'A hypothetical barren, rocky planet with no atmosphere.', false, 5, 28.0);
INSERT INTO public.planet VALUES (11, 'PA-99-N2 Alpha', 6000, 10000, 'A hypothetical planet with vast oceans of liquid methane.', false, 6, 2.2);
INSERT INTO public.planet VALUES (12, 'PA-99-N2 Beta', 5500, 6000, 'A hypothetical small, icy planet with subsurface oceans.', false, 6, 2.2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SOL(The Sun)', 4600, 1, 'The start at the center of our Solar Systeme, essential for life on Earth.', false, 1, 0.0);
INSERT INTO public.star VALUES (2, 'Mirach', 2000, 70, 'A red giant star located in the Andrimeda constellation.', false, 2, 200.0);
INSERT INTO public.star VALUES (3, 'HD 14982', 10000, 3, 'A hot, blue star in the Triangulum galaxy region.', false, 3, 2.7);
INSERT INTO public.star VALUES (4, 'M51-ULS-1', 10, 20, 'A bright X-ray source, likely a black hole or neutron star, in the Whirlpool Galaxy.', false, 4, 23.0);
INSERT INTO public.star VALUES (5, 'Messier 104', 10000, 1, 'A star in the Sombrero Galaxy, known for its luminosity.', false, 5, 28.0);
INSERT INTO public.star VALUES (6, 'Andromeda Star (PA-99-N2)', 10000, 1, 'A variable star in the Andromeda II dwarf galaxy.', false, 6, 2.2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_mon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mon_id_seq', 20, true);


--
-- Name: other_other_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_other_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other other_other_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_other_id_key UNIQUE (other_id);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

