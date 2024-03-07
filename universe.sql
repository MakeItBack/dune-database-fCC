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
    name character varying NOT NULL,
    size text NOT NULL,
    has_life boolean NOT NULL,
    num_stars integer NOT NULL,
    age numeric(3,1)
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
-- Name: house; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.house (
    house_id integer NOT NULL,
    name character varying NOT NULL,
    leader character varying NOT NULL,
    planet_id integer
);


ALTER TABLE public.house OWNER TO freecodecamp;

--
-- Name: house_house_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.house_house_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.house_house_id_seq OWNER TO freecodecamp;

--
-- Name: house_house_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.house_house_id_seq OWNED BY public.house.house_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    diameter numeric NOT NULL,
    is_inhabitable boolean NOT NULL,
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
    type character varying NOT NULL,
    radius numeric NOT NULL,
    has_moons boolean NOT NULL,
    star_id integer
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
    name character varying NOT NULL,
    type character varying NOT NULL,
    age integer NOT NULL,
    has_planets boolean NOT NULL,
    galaxy_id integer
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
-- Name: house house_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house ALTER COLUMN house_id SET DEFAULT nextval('public.house_house_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Large', true, 200, 13.5);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Massive', false, 400, 10.2);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Medium', false, 100, 8.9);
INSERT INTO public.galaxy VALUES (5, 'Centaurus', 'Large', true, 150, 12.7);
INSERT INTO public.galaxy VALUES (6, 'Orion', 'Gigantic', true, 300, 14.3);
INSERT INTO public.galaxy VALUES (7, 'Pegasus', 'Small', false, 50, 9.6);


--
-- Data for Name: house; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.house VALUES (1, 'House Atreides', 'Duke Leto Atreides', 2);
INSERT INTO public.house VALUES (2, 'House Harkonnen', 'Baron Vladimir Harkonnen', 3);
INSERT INTO public.house VALUES (3, 'House Corino', 'Emperor Shaddam IV', 6);
INSERT INTO public.house VALUES (4, 'House Richese', 'Unknown', 5);
INSERT INTO public.house VALUES (5, 'House Vernius', 'Earl Domenic Vernius', 8);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'First Moon', 'Rocky', 3474, false, 1);
INSERT INTO public.moon VALUES (3, 'Muad-dib', 'Rocky', 2943, false, 1);
INSERT INTO public.moon VALUES (4, 'Caladan Moon', 'Rocky', 3895, false, 2);
INSERT INTO public.moon VALUES (5, 'Caladan Second Moon', 'Rocky', 3421, false, 2);
INSERT INTO public.moon VALUES (6, 'Giedi Prime Moon', 'Rocky', 3894, false, 3);
INSERT INTO public.moon VALUES (7, 'Giedi Prime Second Moon', 'Rocky', 3832, false, 3);
INSERT INTO public.moon VALUES (8, 'Giedi Prime Third Moon', 'Rocky', 3471, false, 3);
INSERT INTO public.moon VALUES (9, 'Salusa Secundus Moon', 'Rocky', 3893, false, 4);
INSERT INTO public.moon VALUES (10, 'Richese Moon', 'Rocky', 3894, false, 5);
INSERT INTO public.moon VALUES (11, 'Richese Second Moon', 'Rocky', 3832, false, 5);
INSERT INTO public.moon VALUES (12, 'Richese Third Moon', 'Rocky', 3471, false, 5);
INSERT INTO public.moon VALUES (13, 'Kaitain Moon', 'Rocky', 3893, false, 6);
INSERT INTO public.moon VALUES (14, 'Kaitain Second Moon', 'Rocky', 2981, false, 6);
INSERT INTO public.moon VALUES (15, 'Poritrin Moon', 'Rocky', 4200, false, 7);
INSERT INTO public.moon VALUES (16, 'Poritrin Second Moon', 'Rocky', 2001, false, 7);
INSERT INTO public.moon VALUES (17, 'Ix Moon', 'Rocky', 1800, false, 8);
INSERT INTO public.moon VALUES (18, 'Wallach IV Moon', 'Rocky', 5111, false, 9);
INSERT INTO public.moon VALUES (19, 'Tleilax Moon', 'Rocky', 823, false, 13);
INSERT INTO public.moon VALUES (20, 'Corrin Moon', 'Rocky', 3333, false, 11);
INSERT INTO public.moon VALUES (21, 'Buxxell Moon', 'Rocky', 1234, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Arrakis', 'Desert', 6371, true, 1);
INSERT INTO public.planet VALUES (2, 'Caladan', 'Oceanic', 12742, true, 6);
INSERT INTO public.planet VALUES (3, 'Giedi Prime', 'Desert', 13051, true, 2);
INSERT INTO public.planet VALUES (4, 'Salusa Secundus', 'Desert', 8378, true, 5);
INSERT INTO public.planet VALUES (5, 'Richese', 'Oceanic', 7918, true, 2);
INSERT INTO public.planet VALUES (6, 'Kaitain', 'Oceanic', 12104, true, 1);
INSERT INTO public.planet VALUES (7, 'Poritrin', 'Oceanic', 8850, true, 6);
INSERT INTO public.planet VALUES (8, 'Ix', 'Desert', 11862, true, 1);
INSERT INTO public.planet VALUES (9, 'Wallach IX', 'Desert', 10624, true, 4);
INSERT INTO public.planet VALUES (10, 'Buzzell', 'Oceanic', 14392, true, 5);
INSERT INTO public.planet VALUES (11, 'Corrin', 'Desert', 9982, true, 3);
INSERT INTO public.planet VALUES (13, 'Tleilax', 'Oceanic', 14522, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'G-Type', 5, true, 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'G-Type', 6, true, 5);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 'K-Type', 6, true, 5);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'M-Type', 8, true, 6);
INSERT INTO public.star VALUES (5, 'Vega', 'A-Type', 0, true, 6);
INSERT INTO public.star VALUES (6, 'Serius', 'A-Type', 3, true, 2);
INSERT INTO public.star VALUES (7, 'Thalim', 'A-Type', 3, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: house_house_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.house_house_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: house house_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house
    ADD CONSTRAINT house_pkey PRIMARY KEY (house_id);


--
-- Name: house house_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house
    ADD CONSTRAINT house_planet_id_key UNIQUE (planet_id);


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
-- Name: house house_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house
    ADD CONSTRAINT house_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

