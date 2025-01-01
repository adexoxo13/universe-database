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
-- Name: assign; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.assign (
    assign_id integer NOT NULL,
    found_in date NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.assign OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    has_planets integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    it_weights_in_kg numeric NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    has_starts integer,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    exist_in_galaxy character varying(30),
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: assign; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.assign VALUES (1, '1756-12-09', 'Asebe', 6);
INSERT INTO public.assign VALUES (2, '1834-01-11', 'Beze', 4);
INSERT INTO public.assign VALUES (3, '1923-04-06', 'Elianna', 5);
INSERT INTO public.assign VALUES (4, '1267-07-02', 'Aden', 2);
INSERT INTO public.assign VALUES (5, '1965-04-12', 'Ermias', 1);
INSERT INTO public.assign VALUES (6, '1992-04-01', 'Haymanote', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 10, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10100, 1, NULL);
INSERT INTO public.galaxy VALUES (3, 'Traingulum', 9500, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 12700, 7, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 13300, 4, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 67940, 12, NULL);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel', 50046, 8, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4895983, NULL, 1);
INSERT INTO public.moon VALUES (12, 'Umbriel', 4573645, NULL, 2);
INSERT INTO public.moon VALUES (11, 'Oberon', 30382847, NULL, 3);
INSERT INTO public.moon VALUES (10, 'Triton', 455760, NULL, 2);
INSERT INTO public.moon VALUES (13, 'Ariel', 324967, NULL, 4);
INSERT INTO public.moon VALUES (15, 'Dione', 786923, NULL, 1);
INSERT INTO public.moon VALUES (16, 'Rhea', 564537, NULL, 10);
INSERT INTO public.moon VALUES (17, 'Tethys', 776583, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Iapetus', 343445, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Mimas', 545463, NULL, 9);
INSERT INTO public.moon VALUES (19, 'Chaeron', 894763, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 10837957, NULL, 11);
INSERT INTO public.moon VALUES (8, 'Deimos', 687390, NULL, 8);
INSERT INTO public.moon VALUES (7, 'Photos', 456560, NULL, 10);
INSERT INTO public.moon VALUES (6, 'Callisto', 34567, NULL, 12);
INSERT INTO public.moon VALUES (5, 'Ganymede', 564898, NULL, 11);
INSERT INTO public.moon VALUES (4, 'Io', 489302, NULL, 9);
INSERT INTO public.moon VALUES (3, 'Titan', 123344, NULL, 7);
INSERT INTO public.moon VALUES (2, 'Europa', 30284, NULL, 8);
INSERT INTO public.moon VALUES (14, 'Miranda', 6078574, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 4500, 1, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, true, 4500, 1, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, true, 4600, 1, NULL, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', false, true, 4600, 1, NULL, 4);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, true, 4600, 1, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Neptune', false, true, 4600, 1, NULL, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 4600, 1, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Pluto', false, true, 4600, 0, NULL, 6);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', false, true, 6000, 1, NULL, 12);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', false, true, 5000, 1, NULL, 8);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', false, true, 7000, 1, NULL, 9);
INSERT INTO public.planet VALUES (12, 'Theia', false, true, 4500, 0, NULL, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Betelgeuse', NULL, NULL, 1);
INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Rigel', NULL, NULL, 2);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, NULL, 3);
INSERT INTO public.star VALUES (10, 'Antares', NULL, NULL, 3);
INSERT INTO public.star VALUES (7, 'Vega', NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', NULL, NULL, 4);
INSERT INTO public.star VALUES (11, 'Deneb', NULL, NULL, 4);
INSERT INTO public.star VALUES (9, 'Polaris', NULL, NULL, 5);
INSERT INTO public.star VALUES (8, 'Alpha Centuari B', NULL, NULL, 6);
INSERT INTO public.star VALUES (12, 'Altair', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Alpha Centuari A', NULL, NULL, 6);


--
-- Name: assign assign_assign_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.assign
    ADD CONSTRAINT assign_assign_id_key UNIQUE (assign_id);


--
-- Name: assign assign_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.assign
    ADD CONSTRAINT assign_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: assign assign_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.assign
    ADD CONSTRAINT assign_pkey PRIMARY KEY (assign_id);


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

