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
    distance_light_years numeric,
    age_million_years integer,
    description text
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
    distance_light_years numeric,
    age_million_years integer,
    is_native boolean,
    planet_id integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_light_years numeric,
    age_million_years integer,
    star_id integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_id_seq OWNED BY public.planet.planet_id;


--
-- Name: space_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mission (
    space_mission_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year integer,
    cost_billions numeric,
    is_manned boolean,
    planet_id integer,
    description text
);


ALTER TABLE public.space_mission OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_mission_space_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_mission_space_mission_id_seq OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_mission_space_mission_id_seq OWNED BY public.space_mission.space_mission_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_light_years numeric,
    age_million_years integer,
    is_dead boolean,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_galaxy_id_seq'::regclass);


--
-- Name: space_mission space_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission ALTER COLUMN space_mission_id SET DEFAULT nextval('public.space_mission_space_mission_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 0, 13600, 'Our home galaxy; a barred spiral galaxy containing Earth and our solar system.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda (M31)', 2.5, 10000, 'The closest large galaxy to us; it is on a collision course with the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud (LMC)', 163000, 13000, 'A bright satellite galaxy orbiting the Milky Way, visible mostly from the Southern Hemisphere.');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy (M104)', 28000000, 13200, 'Named for its distinct hat-like shape, featuring a bright, bulbous core and a dark dust lane.');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy (M51)', 23000000, 12500, 'A classic, stunning spiral galaxy with well-defined arms that is actively interacting with a smaller companion.');
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy (M33)', 2700000, 12000, 'The third-largest member of our Local Group of galaxies, famous for its high rate of star formation.');
INSERT INTO public.galaxy VALUES (7, 'Omega Centauri', 17090, 11500, 'The largest and brightest globular cluster in the Milky Way, widely recognized by astronomers as the stripped core of an ancient dwarf galaxy swallowed by our own.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 0.0000000, 4460, true, 3, 'Earth''s lone natural satellite, formed from debris after a Mars-sized body collided with early Earth.');
INSERT INTO public.moon VALUES (2, 'Phobos', 0.0000241, 4600, false, 4, 'A heavily cratered, potato-shaped moon likely captured by Mars from the nearby asteroid belt.');
INSERT INTO public.moon VALUES (3, 'Deimos', 0.0000241, 4600, false, 4, 'The smaller of Mars'' two moons, which is slowly drifting away from its parent planet into space.');
INSERT INTO public.moon VALUES (4, 'Io', 0.0000823, 4600, true, 5, 'The most volcanically active body in the solar system, covered in hundreds of erupting sulfur volcanoes.');
INSERT INTO public.moon VALUES (5, 'Europa', 0.0000823, 4600, true, 5, 'A smooth, icy world concealing a massive, global liquid water ocean warmed by planetary tidal forces.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 0.0000823, 4600, true, 5, 'The largest moon in the solar system, boasting its own magnetic field and an underground ocean.');
INSERT INTO public.moon VALUES (7, 'Callisto', 0.0000823, 4600, true, 5, 'An ancient, heavily cratered world featuring the oldest and most scarred surface in the solar system.');
INSERT INTO public.moon VALUES (8, 'Amalthea', 0.0000823, 4600, true, 5, 'An irregularly shaped inner moon that radiates more heat than it receives from the Sun.');
INSERT INTO public.moon VALUES (9, 'Himalia', 0.0000823, 4500, false, 5, 'The largest of Jupiter''s irregular moons, captured from an asteroid group early in its history.');
INSERT INTO public.moon VALUES (10, 'Mimas', 0.0001509, 4600, true, 6, 'Famous for its giant Herschel crater, giving it a striking resemblance to the Star Wars Death Star.');
INSERT INTO public.moon VALUES (11, 'Enceladus', 0.0001509, 4600, true, 6, 'A geologically active icy moon that blasts giant plumes of salty water ice into space from its south pole.');
INSERT INTO public.moon VALUES (12, 'Tethys', 0.0001509, 4600, true, 6, 'A highly reflective, ice-dominated world featuring a colossal canyon that spans three-quarters of its circumference.');
INSERT INTO public.moon VALUES (13, 'Dione', 0.0001509, 4600, true, 6, 'A heavily cratered moon marked by spectacular, bright ice cliffs created by ancient tectonic activity.');
INSERT INTO public.moon VALUES (14, 'Rhea', 0.0001509, 4600, true, 6, 'Saturn''s second-largest moon, featuring a highly cratered surface and a very tenuous oxygen atmosphere.');
INSERT INTO public.moon VALUES (15, 'Titan', 0.0001509, 4600, true, 6, 'A massive moon enveloped in a thick atmosphere, featuring lakes and rivers of liquid methane.');
INSERT INTO public.moon VALUES (16, 'Iapetus', 0.0001509, 4600, true, 6, 'A unique two-toned moon with one pitch-black hemisphere and a distinct mountain ridge along its equator.');
INSERT INTO public.moon VALUES (17, 'Phoebe', 0.0001509, 4500, false, 6, 'A dark, backward-orbiting moon captured from the icy outer solar system.');
INSERT INTO public.moon VALUES (18, 'Miranda', 0.0003041, 4600, true, 7, 'Possesses an extreme, patchwork landscape of massive canyons and cliffs, likely shattered and reassembled by impacts.');
INSERT INTO public.moon VALUES (19, 'Ariel', 0.0003041, 4600, true, 7, 'The brightest and youngest-looking moon of Uranus, marked by deep, winding valleys.');
INSERT INTO public.moon VALUES (20, 'Umbriel', 0.0003041, 4600, true, 7, 'The darkest of the large Uranian moons, covered in deep, ancient impact craters.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.0000085, 4600, 1, 'Extreme, sun-scorched rocky planet nearest to the Sun.');
INSERT INTO public.planet VALUES (2, 'Venus', 0.0000043, 4600, 1, 'Rocky world trapped in a crushing, runaway greenhouse effect.');
INSERT INTO public.planet VALUES (3, 'Earth', 0.0000000, 4540, 1, 'Our home planet; the only confirmed haven for life.');
INSERT INTO public.planet VALUES (4, 'Mars', 0.0000241, 4600, 1, 'Rust-colored, frozen desert planet with ancient dry lakebeds.');
INSERT INTO public.planet VALUES (5, 'Jupiter', 0.0000823, 4600, 1, 'Massive gas giant holding more mass than all other planets combined.');
INSERT INTO public.planet VALUES (6, 'Saturn', 0.0001509, 4600, 1, 'Elegant gas giant famous for its massive ring system.');
INSERT INTO public.planet VALUES (7, 'Uranus', 0.0003041, 4600, 1, 'Ice giant spinning completely tilted on its side.');
INSERT INTO public.planet VALUES (8, 'Neptune', 0.0004753, 4600, 1, 'Frigid ice giant home to the fastest winds in the solar system.');
INSERT INTO public.planet VALUES (9, 'Pluto', 0.0006238, 4600, 1, 'Icy dwarf planet featuring a massive, nitrogen-ice heart glacier.');
INSERT INTO public.planet VALUES (10, 'Draugr', 2300.0000000, 3000, 2, 'The closest planet orbiting a dead, rapidly spinning pulsar star.');
INSERT INTO public.planet VALUES (11, 'Poltergeist', 2300.0000000, 3000, 2, 'A rocky planet roughly four times the mass of Earth, continuously blasted by intense pulsar radiation.');
INSERT INTO public.planet VALUES (12, 'Phobetor', 2300.0000000, 3000, 2, 'A massive super-Earth planet orbiting on the outer edge of this extreme, undead stellar system.');
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1e', 40.0000000, 7600, 3, 'An Earth-sized world considered one of the most likely candidates to host liquid water.');
INSERT INTO public.planet VALUES (14, 'Kapteyn b', 12.8300000, 11500, 6, 'Refuted/Controversial. Originally thought to be an ancient, potentially habitable Super-Earth orbiting every 48 days.');
INSERT INTO public.planet VALUES (15, 'Kapteyn c', 12.8300000, 11500, 6, 'Refuted/Controversial. Originally classified as a cold, Neptune-like gas planet with an orbital period of 121 days.');


--
-- Data for Name: space_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mission VALUES (1, 'Mariner 10', 1973, 0.10, false, 1, 'The first spacecraft to visit Mercury, capturing the first close-up images of its cratered surface.');
INSERT INTO public.space_mission VALUES (2, 'MESSENGER', 2004, 0.45, false, 1, 'The first probe to orbit Mercury, mapping the entire planet and discovering water ice hidden inside polar craters.');
INSERT INTO public.space_mission VALUES (3, 'Venera 7', 1970, 0.05, false, 2, 'A Soviet probe that achieved the first successful soft landing on another planet, surviving Venus'' crushingly hot surface for 23 minutes.');
INSERT INTO public.space_mission VALUES (4, 'Magellan', 1989, 0.68, false, 2, 'Mapped 98% of the surface of Venus using synthetic-aperture radar, revealing its widespread volcanic landscapes.');
INSERT INTO public.space_mission VALUES (5, 'Viking 1', 1975, 1.00, false, 4, 'Achieved the first successful long-duration landing on Mars, transmitting iconic panoramas and conducting biological soil experiments.');
INSERT INTO public.space_mission VALUES (6, 'Curiosity', 2011, 2.50, false, 4, 'A car-sized robotic rover that explored Gale Crater and confirmed ancient Mars possessed conditions suitable for microbial life.');
INSERT INTO public.space_mission VALUES (7, 'Galileo', 1989, 1.39, false, 5, 'The first spacecraft to orbit Jupiter, dropping a probe into its stormy atmosphere and discovering subsurface oceans on its moons.');
INSERT INTO public.space_mission VALUES (8, 'Juno', 2011, 1.10, false, 5, 'Currently orbiting Jupiter to peer deep beneath its dense cloud deck, measuring its core mass and intense magnetic fields.');
INSERT INTO public.space_mission VALUES (9, 'Cassini', 1997, 3.26, false, 6, 'A highly successful orbiter that studied Saturn and its rings for 13 years, deploying the Huygens probe onto the surface of Titan.');
INSERT INTO public.space_mission VALUES (10, 'Voyager 2', 1977, 0.86, false, 7, 'The only spacecraft to fly past Uranus, discovering 10 new moons and mapping its unique, heavily tilted magnetic field.');
INSERT INTO public.space_mission VALUES (11, 'New Horizons', 2006, 0.72, false, 9, 'Conducted a historic close flyby of Pluto, revealing its dynamic nitrogen-ice heart glacier and complex atmosphere.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol (The Sun)', 0.0000158, 4600, false, 1, 'Yellow dwarf star hosting eight official planets, including Earth.');
INSERT INTO public.star VALUES (2, 'PSR B1257+12', 2300, 3000, true, 1, 'A rapidly spinning, dead pulsar star hosting three rocky zombie planets.');
INSERT INTO public.star VALUES (3, 'TRAPPIST-1', 40, 7600, false, 1, 'Ultra-cool red dwarf star hosting seven Earth-sized rocky planets.');
INSERT INTO public.star VALUES (4, 'M51-ULS-1', 28000000, 10, false, 5, 'A massive star orbiting a dead stellar remnant, hosting an extragalactic planet.');
INSERT INTO public.star VALUES (5, 'WD 1856+534', 80, 10000, true, 1, 'A dead white dwarf star orbited closely by a giant Jupiter-sized planet.');
INSERT INTO public.star VALUES (6, 'Kapteyn''s Star', 12.8, 11500, false, 7, 'An ancient immigrant star stolen by the Milky Way that hosts two planets.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_id_seq', 20, true);


--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_id_seq', 15, true);


--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mission_space_mission_id_seq', 11, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


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
-- Name: space_mission space_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_name_key UNIQUE (name);


--
-- Name: space_mission space_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_pkey PRIMARY KEY (space_mission_id);


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
-- Name: space_mission space_mission_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

