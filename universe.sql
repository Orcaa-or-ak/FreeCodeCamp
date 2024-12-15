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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying NOT NULL,
    gravity integer,
    galaxy_id integer NOT NULL,
    wormhole boolean DEFAULT false NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying NOT NULL,
    codename character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    has_water boolean,
    planet_id integer NOT NULL,
    codename text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    amount_of_people numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radius integer,
    color text,
    name character varying NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Cygnus X-1', 200000, 2, false);
INSERT INTO public.blackhole VALUES (2, 'Sagittarius A*', 300000, 2, false);
INSERT INTO public.blackhole VALUES (3, 'M87*', 400000, 3, false);
INSERT INTO public.blackhole VALUES (4, 'TON 618', 500000, 1, false);
INSERT INTO public.blackhole VALUES (5, 'NGC 4889 Black Hole', 450000, 4, false);
INSERT INTO public.blackhole VALUES (6, 'Messier 82 X-1', 350000, 5, true);
INSERT INTO public.blackhole VALUES (7, 'IC 1101 Black Hole', 600000, 6, false);
INSERT INTO public.blackhole VALUES (8, 'NGC 1277 Black Hole', 320000, 7, true);
INSERT INTO public.blackhole VALUES (9, 'Holmberg 15A', 700000, 8, false);
INSERT INTO public.blackhole VALUES (10, 'NGC 1600 Black Hole', 380000, 9, false);
INSERT INTO public.blackhole VALUES (11, 'PKS 0745-191', 420000, 10, false);
INSERT INTO public.blackhole VALUES (12, 'APM 08279+5255', 550000, 11, true);
INSERT INTO public.blackhole VALUES (13, '3C 186', 330000, 12, false);
INSERT INTO public.blackhole VALUES (14, 'NGC 3115 Black Hole', 410000, 13, false);
INSERT INTO public.blackhole VALUES (15, 'Abell 1201 Black Hole', 370000, 14, false);
INSERT INTO public.blackhole VALUES (16, 'XTE J1650-500', 210000, 15, true);
INSERT INTO public.blackhole VALUES (17, 'GRO J1655-40', 190000, 16, false);
INSERT INTO public.blackhole VALUES (18, 'LMC X-3', 220000, 17, true);
INSERT INTO public.blackhole VALUES (19, '4U 1543-47', 240000, 18, false);
INSERT INTO public.blackhole VALUES (20, 'Swift J1644+57', 500000, 19, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 50000, 'Spiral galaxy with vibrant arms', 'Andromeda', 'M31');
INSERT INTO public.galaxy VALUES (2, 22000, 'Barred spiral galaxy', 'Milky Way', 'MW');
INSERT INTO public.galaxy VALUES (3, 75000, 'Elliptical galaxy with massive core', 'Centaurus A', 'NGC 5128');
INSERT INTO public.galaxy VALUES (4, 65000, 'Irregular galaxy', 'Small Magellanic Cloud', 'SMC');
INSERT INTO public.galaxy VALUES (5, 30000, 'Spiral galaxy with a dense nucleus', 'Whirlpool', 'M51');
INSERT INTO public.galaxy VALUES (6, 42000, 'Lenticular galaxy with no distinct arms', 'Sombrero', 'M104');
INSERT INTO public.galaxy VALUES (7, 54000, 'Dwarf elliptical galaxy', 'Leo I', 'LEO1');
INSERT INTO public.galaxy VALUES (8, 71000, 'Ring galaxy with unique structure', 'Cartwheel', 'ESO 350-40');
INSERT INTO public.galaxy VALUES (9, 45000, 'Irregular galaxy', 'Large Magellanic Cloud', 'LMC');
INSERT INTO public.galaxy VALUES (10, 56000, 'Spiral galaxy with dusty regions', 'Triangulum', 'M33');
INSERT INTO public.galaxy VALUES (11, 70000, 'Dwarf spheroidal galaxy', 'Draco', 'DRACO');
INSERT INTO public.galaxy VALUES (12, 48000, 'Spiral galaxy with flocculent arms', 'NGC 2403', 'NGC2403');
INSERT INTO public.galaxy VALUES (13, 62000, 'Starburst galaxy', 'M82', 'Cigar');
INSERT INTO public.galaxy VALUES (14, 55000, 'Barred spiral galaxy', 'NGC 1300', 'NGC1300');
INSERT INTO public.galaxy VALUES (15, 43000, 'Elliptical galaxy with faint halo', 'NGC 4472', 'NGC4472');
INSERT INTO public.galaxy VALUES (16, 67000, 'Spiral galaxy with extended halo', 'NGC 4258', 'NGC4258');
INSERT INTO public.galaxy VALUES (17, 60000, 'Lenticular galaxy', 'NGC 2787', 'NGC2787');
INSERT INTO public.galaxy VALUES (18, 75000, 'Starburst galaxy', 'NGC 4038', 'Antennae');
INSERT INTO public.galaxy VALUES (19, 52000, 'Elliptical galaxy', 'NGC 5127', 'NGC5127');
INSERT INTO public.galaxy VALUES (20, 58000, 'Irregular galaxy', 'IC 1613', 'IC1613');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 1, 'Earth Moon');
INSERT INTO public.moon VALUES (2, 'Phobos', false, 2, 'Mars Moon 1');
INSERT INTO public.moon VALUES (3, 'Deimos', false, 2, 'Mars Moon 2');
INSERT INTO public.moon VALUES (4, 'Europa', true, 3, 'Jupiter Moon 2');
INSERT INTO public.moon VALUES (5, 'Ganymede', true, 3, 'Jupiter Moon 3');
INSERT INTO public.moon VALUES (6, 'Titan', true, 4, 'Saturn Moon 1');
INSERT INTO public.moon VALUES (7, 'Enceladus', true, 4, 'Saturn Moon 2');
INSERT INTO public.moon VALUES (8, 'Callisto', false, 5, 'Jupiter Moon 4');
INSERT INTO public.moon VALUES (9, 'Io', false, 5, 'Jupiter Moon 1');
INSERT INTO public.moon VALUES (10, 'Triton', true, 6, 'Neptune Moon');
INSERT INTO public.moon VALUES (11, 'Charon', false, 7, 'Pluto Moon');
INSERT INTO public.moon VALUES (12, 'Miranda', false, 8, 'Uranus Moon 1');
INSERT INTO public.moon VALUES (13, 'Ariel', false, 8, 'Uranus Moon 2');
INSERT INTO public.moon VALUES (14, 'Oberon', false, 9, 'Uranus Moon 3');
INSERT INTO public.moon VALUES (15, 'Titania', false, 9, 'Uranus Moon 4');
INSERT INTO public.moon VALUES (16, 'Rhea', false, 10, 'Saturn Moon 3');
INSERT INTO public.moon VALUES (17, 'Iapetus', false, 10, 'Saturn Moon 4');
INSERT INTO public.moon VALUES (18, 'Dione', false, 11, 'Saturn Moon 5');
INSERT INTO public.moon VALUES (19, 'Mimas', false, 11, 'Saturn Moon 6');
INSERT INTO public.moon VALUES (20, 'Nereid', false, 12, 'Neptune Moon 2');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 8000000000, false, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 0, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 0, false, 1);
INSERT INTO public.planet VALUES (4, 'Proxima b', 100, false, 2);
INSERT INTO public.planet VALUES (5, 'Kepler-442b', 5000, false, 3);
INSERT INTO public.planet VALUES (6, 'HD 209458b', 0, false, 4);
INSERT INTO public.planet VALUES (7, 'Gliese 581g', 2000, false, 5);
INSERT INTO public.planet VALUES (8, 'TRAPPIST-1d', 400, true, 6);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 10000, false, 7);
INSERT INTO public.planet VALUES (10, '55 Cancri e', 0, false, 8);
INSERT INTO public.planet VALUES (11, 'WASP-12b', 0, false, 9);
INSERT INTO public.planet VALUES (12, 'GJ 1214b', 3000, false, 10);
INSERT INTO public.planet VALUES (13, 'LHS 1140b', 1200, true, 11);
INSERT INTO public.planet VALUES (14, 'TOI-700d', 1500, false, 12);
INSERT INTO public.planet VALUES (15, 'Ross 128 b', 800, false, 13);
INSERT INTO public.planet VALUES (16, 'YZ Ceti b', 200, false, 14);
INSERT INTO public.planet VALUES (17, 'OGLE-2005-BLG-390Lb', 50, false, 15);
INSERT INTO public.planet VALUES (18, 'HD 189733b', 0, false, 16);
INSERT INTO public.planet VALUES (19, 'K2-18b', 500, true, 17);
INSERT INTO public.planet VALUES (20, 'HIP 65426 b', 0, false, 18);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1000000, 'Yellow', 'Sun', 2);
INSERT INTO public.star VALUES (2, 1500000, 'Red', 'Betelgeuse', 2);
INSERT INTO public.star VALUES (3, 1200000, 'Blue', 'Sirius', 2);
INSERT INTO public.star VALUES (4, 2000000, 'White', 'Procyon', 2);
INSERT INTO public.star VALUES (5, 900000, 'Yellow-White', 'Vega', 5);
INSERT INTO public.star VALUES (6, 1800000, 'Red', 'Antares', 4);
INSERT INTO public.star VALUES (7, 1300000, 'Blue-White', 'Rigel', 1);
INSERT INTO public.star VALUES (8, 1700000, 'Red-Orange', 'Aldebaran', 3);
INSERT INTO public.star VALUES (9, 1100000, 'White', 'Deneb', 6);
INSERT INTO public.star VALUES (10, 950000, 'Blue', 'Altair', 2);
INSERT INTO public.star VALUES (11, 1250000, 'Red', 'Arcturus', 7);
INSERT INTO public.star VALUES (12, 1400000, 'Blue-White', 'Spica', 8);
INSERT INTO public.star VALUES (13, 1050000, 'Yellow', 'Pollux', 9);
INSERT INTO public.star VALUES (14, 980000, 'Orange', 'Capella', 10);
INSERT INTO public.star VALUES (15, 1650000, 'Red', 'Mira', 11);
INSERT INTO public.star VALUES (16, 1150000, 'Blue', 'Castor', 12);
INSERT INTO public.star VALUES (17, 970000, 'Yellow', 'Fomalhaut', 13);
INSERT INTO public.star VALUES (18, 1450000, 'Orange-Red', 'Dubhe', 14);
INSERT INTO public.star VALUES (19, 1020000, 'White', 'Regulus', 15);
INSERT INTO public.star VALUES (20, 1580000, 'Blue', 'Bellatrix', 16);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 20, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 20, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 20, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 20, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planetid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planetid_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_starid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_starid_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxyid_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

