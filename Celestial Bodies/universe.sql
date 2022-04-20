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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(30) NOT NULL,
    discovery_year integer NOT NULL,
    absolute_magnitude integer NOT NULL,
    description character varying(10),
    name character varying(30)
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
    moon_name character varying(30) NOT NULL,
    discovery_year integer NOT NULL,
    radius integer NOT NULL,
    bigger_than_earths_moon boolean NOT NULL,
    planet_name character varying(30) NOT NULL,
    name character varying(30)
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
    planet_name character varying(30) NOT NULL,
    discovery_year integer NOT NULL,
    radius integer NOT NULL,
    orbital_speed numeric(10,2),
    bigger_than_earth boolean NOT NULL,
    star_name character varying(30) NOT NULL,
    name character varying(30)
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
-- Name: planetary_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_system (
    planetary_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy character varying(30)
);


ALTER TABLE public.planetary_system OWNER TO freecodecamp;

--
-- Name: planetary_system_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_system_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_system_system_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_system_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_system_system_id_seq OWNED BY public.planetary_system.planetary_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(30) NOT NULL,
    discovery_year integer NOT NULL,
    radius integer NOT NULL,
    description text,
    galaxy_name character varying(30) NOT NULL,
    name character varying(30)
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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planetary_system planetary_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system ALTER COLUMN planetary_system_id SET DEFAULT nextval('public.planetary_system_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 964, -20, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', -1, -21, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 1779, 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'cool galaxy', 2222, 22, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'bright_galaxy', 2000, 50, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'shy_galaxy', 2500, -25, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aaa', 1950, 70, true, 'aaa', NULL);
INSERT INTO public.moon VALUES (3, 'bbb', 1850, 80, false, 'bbb', NULL);
INSERT INTO public.moon VALUES (4, 'ccc', 1850, 80, false, 'ccc', NULL);
INSERT INTO public.moon VALUES (5, 'd', 1, 1, true, 'i', NULL);
INSERT INTO public.moon VALUES (6, 'e', 2, 2, false, 'e', NULL);
INSERT INTO public.moon VALUES (7, 'f', 1, 2, true, 'g', NULL);
INSERT INTO public.moon VALUES (8, 'g', 3, 2, false, 'o', NULL);
INSERT INTO public.moon VALUES (9, 'h', 1, 1, true, 'h', NULL);
INSERT INTO public.moon VALUES (12, 'i', 1, 1, true, 'i', NULL);
INSERT INTO public.moon VALUES (13, 'j', 2, 2, false, 'e', NULL);
INSERT INTO public.moon VALUES (14, 'k', 1, 2, true, 'g', NULL);
INSERT INTO public.moon VALUES (15, 'l', 3, 2, false, 'o', NULL);
INSERT INTO public.moon VALUES (16, 'm', 1, 1, true, 'h', NULL);
INSERT INTO public.moon VALUES (17, 's', 1, 1, true, 'i', NULL);
INSERT INTO public.moon VALUES (18, 'r', 2, 2, false, 'e', NULL);
INSERT INTO public.moon VALUES (19, 'p', 1, 2, true, 'g', NULL);
INSERT INTO public.moon VALUES (20, 'o', 3, 2, false, 'o', NULL);
INSERT INTO public.moon VALUES (21, 'n', 1, 1, true, 'h', NULL);
INSERT INTO public.moon VALUES (22, 't', 1, 1, true, 'i', NULL);
INSERT INTO public.moon VALUES (23, 'u', 2, 2, false, 'g', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aaa', 1700, 700, 70.00, true, 'aaa', NULL);
INSERT INTO public.planet VALUES (2, 'bbb', 1800, 600, 60.00, false, 'bbb', NULL);
INSERT INTO public.planet VALUES (3, 'ccc', 1500, 600, 80.00, true, 'ccc', NULL);
INSERT INTO public.planet VALUES (10, 'd', 4, 4, 4.00, true, 'aaa', NULL);
INSERT INTO public.planet VALUES (11, 'e', 1, 1, 1.00, true, 'aaa', NULL);
INSERT INTO public.planet VALUES (17, 'f', 4, 4, 4.00, true, 'aaa', NULL);
INSERT INTO public.planet VALUES (18, 'g', 1, 1, 1.00, true, 'aaa', NULL);
INSERT INTO public.planet VALUES (19, 'h', 1, 1, 1.00, false, 'bbb', NULL);
INSERT INTO public.planet VALUES (20, 'i', 2, 2, 2.00, false, 'ccc', NULL);
INSERT INTO public.planet VALUES (21, 'j', 3, 3, 3.00, true, 'shy star', NULL);
INSERT INTO public.planet VALUES (22, 'k', 4, 4, 4.00, true, 'aaa', NULL);
INSERT INTO public.planet VALUES (23, 'l', 1, 1, 1.00, true, 'aaa', NULL);
INSERT INTO public.planet VALUES (24, 'm', 1, 1, 1.00, false, 'bbb', NULL);
INSERT INTO public.planet VALUES (25, 'n', 2, 2, 2.00, false, 'ccc', NULL);
INSERT INTO public.planet VALUES (26, 'o', 3, 3, 3.00, true, 'shy star', NULL);


--
-- Data for Name: planetary_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_system VALUES (1, 'aaa', NULL);
INSERT INTO public.planetary_system VALUES (2, 'bbb', NULL);
INSERT INTO public.planetary_system VALUES (3, 'ccc', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'aaa', 1, 1, 'aaa', 'andromeda', NULL);
INSERT INTO public.star VALUES (2, 'bbb', 2, 2, 'bbb', 'Milky Way', NULL);
INSERT INTO public.star VALUES (3, 'ccc', 3, 3, 'ccc', 'Black Eye', NULL);
INSERT INTO public.star VALUES (4, 'cool star', 2255, 2, 'very cool star', 'cool galaxy', NULL);
INSERT INTO public.star VALUES (5, 'bright star', 2050, 5, 'very bright star', 'bright_galaxy', NULL);
INSERT INTO public.star VALUES (6, 'shy star', 2550, 4, 'very shy star', 'shy_galaxy', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: planetary_system_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_system_system_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (galaxy_name);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (moon_name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet_name);


--
-- Name: planetary_system planetary_system_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_galaxy_key UNIQUE (galaxy);


--
-- Name: planetary_system planetary_system_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_id PRIMARY KEY (planetary_system_id);


--
-- Name: planetary_system planetary_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_name_key UNIQUE (name);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star_name);


--
-- Name: moon moon_nearest_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nearest_planet_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

