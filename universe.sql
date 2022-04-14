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
    name character varying(30) NOT NULL,
    stars_count integer,
    constellation character varying(30) NOT NULL,
    isitcool boolean NOT NULL
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
    planet_id integer,
    color character varying NOT NULL,
    diameter_tkm numeric(10,3) NOT NULL
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
    name character varying(30) NOT NULL,
    star_id integer,
    diameter_tkm numeric(10,3),
    main_species text,
    has_moon boolean,
    specie_id integer NOT NULL
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
-- Name: specie; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.specie (
    specie_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(30) NOT NULL,
    height_cm integer NOT NULL,
    can_swim boolean NOT NULL
);


ALTER TABLE public.specie OWNER TO freecodecamp;

--
-- Name: specie_specimen_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.specie_specimen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.specie_specimen_id_seq OWNER TO freecodecamp;

--
-- Name: specie_specimen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.specie_specimen_id_seq OWNED BY public.specie.specie_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    planets_count integer,
    is_black_giant boolean
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
-- Name: specie specie_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie ALTER COLUMN specie_id SET DEFAULT nextval('public.specie_specimen_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 300, 'Andromeda', true);
INSERT INTO public.galaxy VALUES (2, 'Backward', 300, 'Centaurus', true);
INSERT INTO public.galaxy VALUES (3, 'Butterfly', 600, 'Virgo', true);
INSERT INTO public.galaxy VALUES (4, 'Eye of Sauron', 700, 'Canes Venatici', true);
INSERT INTO public.galaxy VALUES (5, 'Mayalls Object', 153432, 'Ursa Major', true);
INSERT INTO public.galaxy VALUES (6, 'Suflower', 2, 'Canes Venatici', false);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 52102, 'Sagittarius', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 'white', 3.475);
INSERT INTO public.moon VALUES (2, 'Fobos', 4, 'purple-white', 11.267);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'purple-orange', 6.200);
INSERT INTO public.moon VALUES (4, 'Europa', 5, 'orange-white', 1.561);
INSERT INTO public.moon VALUES (5, 'Ganimedes', 5, 'brownish-pinkish', 2.634);
INSERT INTO public.moon VALUES (6, 'Io', 5, 'yellow', 1.822);
INSERT INTO public.moon VALUES (7, 'Kallisto', 5, 'brown-white', 2.410);
INSERT INTO public.moon VALUES (8, 'Himalia', 5, 'grey', 0.085);
INSERT INTO public.moon VALUES (9, 'Karme', 5, 'grey', 0.023);
INSERT INTO public.moon VALUES (10, 'Ananke', 5, 'grey', 0.014);
INSERT INTO public.moon VALUES (11, 'Amaltea', 5, 'greyish', 0.086);
INSERT INTO public.moon VALUES (12, 'Enceladus', 6, 'white-orange', 0.252);
INSERT INTO public.moon VALUES (13, 'Titan', 6, 'yellow', 2.575);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 'grey', 0.198);
INSERT INTO public.moon VALUES (15, 'Tethys', 6, 'grey-white', 1.060);
INSERT INTO public.moon VALUES (16, 'Dioone', 6, 'grey-white', 10.561);
INSERT INTO public.moon VALUES (17, 'Japet', 6, 'white-black', 0.735);
INSERT INTO public.moon VALUES (18, 'Hyperion', 6, 'white-purple', 0.135);
INSERT INTO public.moon VALUES (19, 'Rea', 6, 'white', 0.764);
INSERT INTO public.moon VALUES (20, 'Saturn XI', 6, 'grey-white', 0.058);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 1, 12.104, 'Women', false, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 12.752, 'Homo-sapiens', true, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 6.788, 'Men', true, 4);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 120.660, 'Dogs', true, 6);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 142.800, 'Cats', true, 5);
INSERT INTO public.planet VALUES (7, 'Uran', 1, 51.108, 'Parrots', true, 7);
INSERT INTO public.planet VALUES (8, 'Neptun', 1, 49.530, 'Tasmanian Devils', true, 8);
INSERT INTO public.planet VALUES (9, 'Megania', 2, 149.520, 'Ygurwatha', true, 9);
INSERT INTO public.planet VALUES (10, 'Jtxua', 3, 953.120, 'Xching', true, 10);
INSERT INTO public.planet VALUES (11, 'FloraniaMania', 4, 123432.234, 'Super Aliens', false, 11);
INSERT INTO public.planet VALUES (12, 'Planet of Apes', 5, 99999.999, 'Alpha Apes', true, 12);
INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4.878, 'Mercurans', false, 1);


--
-- Data for Name: specie; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.specie VALUES (2, 'Women', 'multiple', 168, true);
INSERT INTO public.specie VALUES (3, 'Homo-Sapiens', 'cant tell', 175, true);
INSERT INTO public.specie VALUES (1, 'Mercurians', 'grey', 76, false);
INSERT INTO public.specie VALUES (4, 'Men', 'it is a secret', 186, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 7, 8, false);
INSERT INTO public.star VALUES (2, 'Mirach', 1, 1523, false);
INSERT INTO public.star VALUES (3, 'Anuratyn', 2, 1434, false);
INSERT INTO public.star VALUES (4, 'Mieciorytus', 3, 35091, false);
INSERT INTO public.star VALUES (5, 'Alkkanauka', 4, 1543678, false);
INSERT INTO public.star VALUES (6, 'Megatron', 5, 0, true);
INSERT INTO public.star VALUES (7, 'Hapunia', 6, 77777, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: specie_specimen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.specie_specimen_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: specie specie_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_name_key UNIQUE (name);


--
-- Name: specie specie_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_pkey PRIMARY KEY (specie_id);


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
-- Name: specie specie_specie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_specie_id_fkey FOREIGN KEY (specie_id) REFERENCES public.specie(specie_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

