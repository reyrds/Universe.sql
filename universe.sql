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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(20),
    description text NOT NULL,
    constellation_id integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    designation character varying(40) NOT NULL,
    year_discovered numeric(4,0),
    age_in_millions_of_years integer
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
    name character varying(20),
    diameter_in_km integer,
    planet_id integer NOT NULL,
    distance_from_parent_planet integer
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
    name character varying(20),
    diameter_in_km integer NOT NULL,
    has_life boolean,
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
    name character varying(20),
    part_of_constellation boolean,
    galaxy_id integer NOT NULL,
    constellation_id integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('Canis Major', 'Canis Major, the Greater Dog, is one of the most prominent constellations in the night sky, containing the brightest star in the night sky, Sirius. It is often depicted as a dog following the hunter Orion.', 1);
INSERT INTO public.constellation VALUES ('Orion', 'Orion is one of the most recognizable constellations, featuring the famous Orion''s Belt formed by three bright stars. It contains several notable celestial objects, including the Orion Nebula and the red supergiant Betelgeuse.', 2);
INSERT INTO public.constellation VALUES ('Lyra', 'Lyra is a small but distinct constellation known for its bright star Vega, one of the brightest stars in the sky. Lyra represents the lyre, a musical instrument played by Orpheus in Greek mythology.', 3);
INSERT INTO public.constellation VALUES ('Ursa Minor', 'Ursa Minor, also known as the Little Bear or the Little Dipper, contains the North Star, Polaris, which marks the direction of the North Pole. It is a useful guide for navigation in the northern hemisphere.', 4);
INSERT INTO public.constellation VALUES ('Taurus', 'Taurus is one of the oldest known constellations, representing a bull in various mythologies. It features the bright orange star Aldebaran, which marks the bull''s eye, and the star cluster known as the Pleiades.', 5);
INSERT INTO public.constellation VALUES ('Aquila', 'Aquila, the Eagle, is a constellation associated with the mythological bird that carried Zeus''s thunderbolts in Greek mythology. It contains the bright star Altair and is often depicted as an eagle flying across the sky.', 6);
INSERT INTO public.constellation VALUES ('Scorpius', 'Scorpius is a prominent constellation in the southern hemisphere, representing a scorpion. It features the red supergiant star Antares, which is one of the brightest stars in the sky and marks the scorpion''s heart.', 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral Galaxy', NULL, 13600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Spiral Galaxy', NULL, 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'Spiral Galaxy', NULL, 5000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Spiral Galaxy', 1773, 400);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Spiral Galaxy', 1781, 9000);
INSERT INTO public.galaxy VALUES (6, 'Sculptor Galaxy', 'Spiral Galaxy', 1783, 11000);
INSERT INTO public.galaxy VALUES (7, 'Cigar Galaxy', 'Irregular Galaxy', 1774, 5000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3476, 3, 384400);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 4, 9377);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 4, 23460);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5262, 5, 1070400);
INSERT INTO public.moon VALUES (5, 'Callisto', 4821, 5, 1882700);
INSERT INTO public.moon VALUES (6, 'Io', 3642, 5, 421800);
INSERT INTO public.moon VALUES (7, 'Europa', 3121, 5, 671100);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, 6, 1221870);
INSERT INTO public.moon VALUES (9, 'Rhea', 1528, 6, 527040);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1468, 6, 3560820);
INSERT INTO public.moon VALUES (11, 'Dione', 1120, 6, 377396);
INSERT INTO public.moon VALUES (12, 'Triton', 2706, 8, 354800);
INSERT INTO public.moon VALUES (13, 'Charon', 1207, 9, 19571);
INSERT INTO public.moon VALUES (14, 'Enceladus', 504, 6, 238037);
INSERT INTO public.moon VALUES (15, 'Mimas', 396, 6, 185520);
INSERT INTO public.moon VALUES (16, 'Hyperion', 270, 6, 1481100);
INSERT INTO public.moon VALUES (17, 'Ariel', 1158, 7, 191240);
INSERT INTO public.moon VALUES (18, 'Umbriel', 1169, 7, 266300);
INSERT INTO public.moon VALUES (19, 'Miranda', 472, 7, 129390);
INSERT INTO public.moon VALUES (20, 'Tethys', 1062, 6, 294660);
INSERT INTO public.moon VALUES (21, 'Titania', 1578, 7, 435910);
INSERT INTO public.moon VALUES (22, 'Oberon', 1523, 7, 583520);
INSERT INTO public.moon VALUES (23, 'Proteus', 420, 8, 117647);
INSERT INTO public.moon VALUES (24, 'Nereid', 340, 8, 551381);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12104, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 12742, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6779, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139822, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 116464, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244, false, 1);
INSERT INTO public.planet VALUES (9, 'M33-Variable A-B', 4879, false, 2);
INSERT INTO public.planet VALUES (10, 'M51-ULX1-B', 6779, false, 3);
INSERT INTO public.planet VALUES (12, 'Betelgeuse-1', 150000, false, 4);
INSERT INTO public.planet VALUES (13, 'Betelgeuse-2', 200000, true, 4);
INSERT INTO public.planet VALUES (14, 'Aldebaran-1', 180000, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, 1, NULL);
INSERT INTO public.star VALUES (2, 'M33-Variable A', false, 3, NULL);
INSERT INTO public.star VALUES (3, 'M51-ULX1', false, 4, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', true, 1, 2);
INSERT INTO public.star VALUES (5, 'Vega', true, 1, 3);
INSERT INTO public.star VALUES (6, 'Polaris', true, 1, 4);
INSERT INTO public.star VALUES (7, 'Aldebaran', true, 1, 5);
INSERT INTO public.star VALUES (8, 'Altair', true, 1, 6);
INSERT INTO public.star VALUES (9, 'Antares', true, 1, 7);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

