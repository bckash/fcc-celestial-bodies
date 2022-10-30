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
-- Name: ancient_chineese_constelations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ancient_chineese_constelations (
    ancient_chineese_constelations_id integer NOT NULL,
    name character varying NOT NULL,
    no_of_stars integer NOT NULL
);


ALTER TABLE public.ancient_chineese_constelations OWNER TO freecodecamp;

--
-- Name: ancient_chineese_constelations_acc_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ancient_chineese_constelations_acc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ancient_chineese_constelations_acc_id_seq OWNER TO freecodecamp;

--
-- Name: ancient_chineese_constelations_acc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ancient_chineese_constelations_acc_id_seq OWNED BY public.ancient_chineese_constelations.ancient_chineese_constelations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    naked_eye_visible boolean,
    constelation text,
    name_origin text
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
    name character varying NOT NULL,
    discovery_year integer,
    discovered_by text NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    stellar_system text NOT NULL,
    confirmed boolean,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    hd_catalogue integer,
    distance_ly numeric,
    constelation text
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
-- Name: ancient_chineese_constelations ancient_chineese_constelations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ancient_chineese_constelations ALTER COLUMN ancient_chineese_constelations_id SET DEFAULT nextval('public.ancient_chineese_constelations_acc_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: ancient_chineese_constelations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ancient_chineese_constelations VALUES (1, 'Crane', 12);
INSERT INTO public.ancient_chineese_constelations VALUES (2, 'Peacock', 11);
INSERT INTO public.ancient_chineese_constelations VALUES (3, 'Persia', 11);
INSERT INTO public.ancient_chineese_constelations VALUES (4, 'Firebird', 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'Sagittarius', 'from the area of the sky');
INSERT INTO public.galaxy VALUES (2, 'Centaurus A', true, 'Centaurus', '');
INSERT INTO public.galaxy VALUES (3, 'Wolf-Lundmark-Melotte', false, 'Cetus', 'after Astronomers');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', false, 'Virgo', 'after its appearance');
INSERT INTO public.galaxy VALUES (6, 'Malin 1', false, 'Coma Berenices', 'after David Malin');
INSERT INTO public.galaxy VALUES (4, 'Trianglum Galaxy', false, 'Triangulum', 'after its location');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0, '(Prehistoric)', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 'Hall', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 'Hall', 4);
INSERT INTO public.moon VALUES (4, 'Io', 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 1892, 'Bernard', 5);
INSERT INTO public.moon VALUES (9, 'Mimas', 1789, 'Hershel', 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 1789, 'Hershel', 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 1684, 'Casini', 6);
INSERT INTO public.moon VALUES (12, 'Dione', 1684, 'Casini', 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 1684, 'Casini', 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 1671, 'Casini', 6);
INSERT INTO public.moon VALUES (15, 'Ariel', 1851, 'Lassell', 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 1851, 'Lassell', 7);
INSERT INTO public.moon VALUES (17, 'Titania', 1787, 'Hershel', 7);
INSERT INTO public.moon VALUES (18, 'Triton', 1846, 'Lassell', 8);
INSERT INTO public.moon VALUES (19, 'Nereid', 1949, 'Kuiper', 8);
INSERT INTO public.moon VALUES (20, 'Naiad', 1989, 'Terrile', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Solar', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Solar', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Solar', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Solar', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Solar', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Solar', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Solar', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Solar', true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri', 'Alpha Centauri', true, 2);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri A', 'Alpha Centauri', false, 2);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri B', 'Alpha Centauri', false, 2);
INSERT INTO public.planet VALUES (12, 'YZ Ceti B', 'YZ Ceti', true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 0, 'Sagittarius');
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 128620, 4.36, 'Centaurus');
INSERT INTO public.star VALUES (3, 'YZ Ceti', 0, 11.74, 'Cetus');
INSERT INTO public.star VALUES (5, '14 Tri', 15656, 391, 'Triangulum');
INSERT INTO public.star VALUES (6, 'ET Vir', 123934, 542, 'Virgo');
INSERT INTO public.star VALUES (7, '31 Com', 111812, 307, 'Coma Berenices');


--
-- Name: ancient_chineese_constelations_acc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ancient_chineese_constelations_acc_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: ancient_chineese_constelations ancient_chineese_constelations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ancient_chineese_constelations
    ADD CONSTRAINT ancient_chineese_constelations_name_key UNIQUE (name);


--
-- Name: ancient_chineese_constelations ancient_chineese_constelations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ancient_chineese_constelations
    ADD CONSTRAINT ancient_chineese_constelations_pkey PRIMARY KEY (ancient_chineese_constelations_id);


--
-- Name: galaxy galaxy_constelation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constelation_key UNIQUE (constelation);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: star star_constelation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constelation_fkey FOREIGN KEY (constelation) REFERENCES public.galaxy(constelation);


--
-- PostgreSQL database dump complete
--

