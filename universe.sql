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
    name character varying(30),
    alive boolean NOT NULL,
    age integer NOT NULL,
    key integer NOT NULL
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
    name character varying(40),
    age integer,
    weight integer,
    key integer NOT NULL
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
-- Name: people; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.people (
    people_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    weight integer NOT NULL,
    key integer
);


ALTER TABLE public.people OWNER TO freecodecamp;

--
-- Name: people_people_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.people_people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_people_id_seq OWNER TO freecodecamp;

--
-- Name: people_people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.people_people_id_seq OWNED BY public.people.people_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    alive boolean,
    des text,
    key integer NOT NULL,
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
    name character varying(40),
    alive boolean NOT NULL,
    age numeric(4,1),
    key integer NOT NULL,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: people people_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people ALTER COLUMN people_id SET DEFAULT nextval('public.people_people_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, NULL, true, 1, 2);
INSERT INTO public.galaxy VALUES (2, NULL, true, 11, 12);
INSERT INTO public.galaxy VALUES (3, NULL, false, 10, 10);
INSERT INTO public.galaxy VALUES (4, NULL, true, 18, 9);
INSERT INTO public.galaxy VALUES (5, NULL, true, 89, 89);
INSERT INTO public.galaxy VALUES (6, NULL, true, 18, 238);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 22);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 23);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 24);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 25);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 26);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 27);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 28);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 29);
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, 30);
INSERT INTO public.moon VALUES (22, NULL, NULL, NULL, 31);
INSERT INTO public.moon VALUES (23, NULL, NULL, NULL, 32);
INSERT INTO public.moon VALUES (24, NULL, 10, 100, 10000);
INSERT INTO public.moon VALUES (25, NULL, 100, 1000, 100000);
INSERT INTO public.moon VALUES (27, NULL, 100, 1000, 1000000);
INSERT INTO public.moon VALUES (28, NULL, 100, 1000, 10000000);


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.people VALUES (1, NULL, 10, 20, NULL);
INSERT INTO public.people VALUES (2, NULL, 10, 20, NULL);
INSERT INTO public.people VALUES (3, NULL, 10, 20, NULL);
INSERT INTO public.people VALUES (4, NULL, 10, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, 14, NULL);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, 15, NULL);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, 16, NULL);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, 17, NULL);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, 18, NULL);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, 19, NULL);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, 20, NULL);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, 21, NULL);
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, 22, NULL);
INSERT INTO public.planet VALUES (14, NULL, NULL, NULL, 23, NULL);
INSERT INTO public.planet VALUES (15, NULL, true, NULL, 192, NULL);
INSERT INTO public.planet VALUES (16, NULL, true, NULL, 1932, NULL);
INSERT INTO public.planet VALUES (17, NULL, true, NULL, 19332, NULL);
INSERT INTO public.planet VALUES (18, NULL, true, NULL, 193332, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, true, NULL, 10, NULL);
INSERT INTO public.star VALUES (2, NULL, true, NULL, 11, NULL);
INSERT INTO public.star VALUES (3, NULL, false, NULL, 111, NULL);
INSERT INTO public.star VALUES (4, NULL, true, NULL, 112, NULL);
INSERT INTO public.star VALUES (5, NULL, true, NULL, 123, NULL);
INSERT INTO public.star VALUES (6, NULL, true, NULL, 90, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: people_people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.people_people_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_key_key UNIQUE (key);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_key_key UNIQUE (key);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: people people_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_key_key UNIQUE (key);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (people_id);


--
-- Name: planet planet_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_key_key UNIQUE (key);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_key_key UNIQUE (key);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

