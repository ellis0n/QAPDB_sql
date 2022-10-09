--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-10-09 13:25:25

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

--
-- TOC entry 5 (class 2615 OID 16509)
-- Name: qap1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA qap1;


ALTER SCHEMA qap1 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 16510)
-- Name: aircraft; Type: TABLE; Schema: qap1; Owner: postgres
--

CREATE TABLE qap1.aircraft (
    id bigint NOT NULL,
    type character(5)
);


ALTER TABLE qap1.aircraft OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16596)
-- Name: aircraft_passengers; Type: TABLE; Schema: qap1; Owner: postgres
--

CREATE TABLE qap1.aircraft_passengers (
    id bigint NOT NULL,
    aircraft_id bigint,
    passenger_id bigint
);


ALTER TABLE qap1.aircraft_passengers OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16572)
-- Name: airport_aircraft; Type: TABLE; Schema: qap1; Owner: postgres
--

CREATE TABLE qap1.airport_aircraft (
    id bigint NOT NULL,
    airport_id bigint,
    aircraft_id bigint
);


ALTER TABLE qap1.airport_aircraft OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16517)
-- Name: airports; Type: TABLE; Schema: qap1; Owner: postgres
--

CREATE TABLE qap1.airports (
    id bigint NOT NULL,
    "airportName" character(50),
    code character(3),
    city_id bigint
);


ALTER TABLE qap1.airports OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16522)
-- Name: cities; Type: TABLE; Schema: qap1; Owner: postgres
--

CREATE TABLE qap1.cities (
    id bigint NOT NULL,
    "cityName" character(20),
    state character(2),
    pop bigint
);


ALTER TABLE qap1.cities OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16529)
-- Name: passengers; Type: TABLE; Schema: qap1; Owner: postgres
--

CREATE TABLE qap1.passengers (
    id bigint NOT NULL,
    name character(255),
    city_id bigint
);


ALTER TABLE qap1.passengers OWNER TO postgres;

--
-- TOC entry 3341 (class 0 OID 16510)
-- Dependencies: 210
-- Data for Name: aircraft; Type: TABLE DATA; Schema: qap1; Owner: postgres
--

INSERT INTO qap1.aircraft (id, type) VALUES (1, '737  ');
INSERT INTO qap1.aircraft (id, type) VALUES (2, 'A330 ');
INSERT INTO qap1.aircraft (id, type) VALUES (3, 'Prop ');
INSERT INTO qap1.aircraft (id, type) VALUES (4, '727  ');
INSERT INTO qap1.aircraft (id, type) VALUES (5, 'B45  ');


--
-- TOC entry 3346 (class 0 OID 16596)
-- Dependencies: 215
-- Data for Name: aircraft_passengers; Type: TABLE DATA; Schema: qap1; Owner: postgres
--

INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (1, 1, 1);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (2, 1, 4);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (3, 1, 2);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (4, 2, 19);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (5, 2, 12);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (6, 2, 6);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (7, 3, 9);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (8, 3, 20);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (9, 3, 11);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (10, 4, 3);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (11, 4, 5);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (12, 4, 7);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (13, 5, 13);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (14, 5, 2);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (15, 5, 20);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (16, 1, 14);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (17, 2, 8);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (18, 3, 18);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (19, 4, 15);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (20, 5, 10);
INSERT INTO qap1.aircraft_passengers (id, aircraft_id, passenger_id) VALUES (21, 1, 18);


--
-- TOC entry 3345 (class 0 OID 16572)
-- Dependencies: 214
-- Data for Name: airport_aircraft; Type: TABLE DATA; Schema: qap1; Owner: postgres
--

INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (1, 1, 1);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (2, 1, 2);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (3, 1, 3);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (4, 2, 4);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (5, 2, 5);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (6, 2, 3);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (7, 3, 3);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (8, 3, 2);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (9, 3, 5);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (10, 4, 5);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (11, 4, 4);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (12, 4, 3);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (13, 5, 2);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (14, 5, 1);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (15, 5, 3);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (16, 1, 4);
INSERT INTO qap1.airport_aircraft (id, airport_id, aircraft_id) VALUES (17, 1, 5);


--
-- TOC entry 3342 (class 0 OID 16517)
-- Dependencies: 211
-- Data for Name: airports; Type: TABLE DATA; Schema: qap1; Owner: postgres
--

INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (1, 'La Guardia                                        ', 'LGA', 1);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (2, 'John F Kennedy                                    ', 'JFK', 1);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (3, 'Los Angeles International                         ', 'LAX', 2);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (4, 'Hollywood Burbank                                 ', 'BUR', 2);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (5, 'OHare International                               ', 'ORD', 3);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (6, 'George Bush Intercontinental                      ', 'IAH', 4);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (7, 'Sky Harbor International                          ', 'PHX', 5);


--
-- TOC entry 3343 (class 0 OID 16522)
-- Dependencies: 212
-- Data for Name: cities; Type: TABLE DATA; Schema: qap1; Owner: postgres
--

INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (1, 'New York            ', 'NY', 23000000);
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (2, 'Los Angeles         ', 'LA', 3849297);
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (3, 'Chicago             ', 'IL', 2696555);
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (4, 'Houston             ', 'TX', 2288250);
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (5, 'Pheonix             ', 'AR', 1624569);


--
-- TOC entry 3344 (class 0 OID 16529)
-- Dependencies: 213
-- Data for Name: passengers; Type: TABLE DATA; Schema: qap1; Owner: postgres
--

INSERT INTO qap1.passengers (id, name, city_id) VALUES (1, 'Jennifer Reach                                                                                                                                                                                                                                                 ', 1);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (2, 'Danny Villa                                                                                                                                                                                                                                                    ', 2);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (3, 'Johnson Online                                                                                                                                                                                                                                                 ', 5);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (4, 'Randall Randallson                                                                                                                                                                                                                                             ', 2);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (5, 'Boris Borssison                                                                                                                                                                                                                                                ', 2);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (6, 'Greg Greggson                                                                                                                                                                                                                                                  ', 5);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (7, 'Fred Redderfred                                                                                                                                                                                                                                                ', 3);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (8, 'Caroline Roliner                                                                                                                                                                                                                                               ', 3);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (9, 'Neil Hutchingsputch                                                                                                                                                                                                                                            ', 2);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (10, 'Mickey Splickticket                                                                                                                                                                                                                                            ', 1);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (11, 'Renata Ratata                                                                                                                                                                                                                                                  ', 1);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (12, 'Dirgible Jones                                                                                                                                                                                                                                                 ', 1);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (13, 'Foment Revoluciona                                                                                                                                                                                                                                             ', 3);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (14, 'Kingly Kingster                                                                                                                                                                                                                                                ', 5);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (15, 'Damascus Steel                                                                                                                                                                                                                                                 ', 4);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (16, 'Frank Water                                                                                                                                                                                                                                                    ', 4);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (17, 'Sanferd Sons                                                                                                                                                                                                                                                   ', 3);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (18, 'Big Bonesy                                                                                                                                                                                                                                                     ', 3);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (19, 'Captain Corgi                                                                                                                                                                                                                                                  ', 5);
INSERT INTO qap1.passengers (id, name, city_id) VALUES (20, 'Fordella Distorpia                                                                                                                                                                                                                                             ', 4);


--
-- TOC entry 3195 (class 2606 OID 16600)
-- Name: aircraft_passengers aircraft_passengers_pkey; Type: CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.aircraft_passengers
    ADD CONSTRAINT aircraft_passengers_pkey PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 16516)
-- Name: aircraft aircraft_pkey; Type: CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 16576)
-- Name: airport_aircraft airport_aircraft_pkey; Type: CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.airport_aircraft
    ADD CONSTRAINT airport_aircraft_pkey PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 16521)
-- Name: airports airports_pkey; Type: CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);


--
-- TOC entry 3189 (class 2606 OID 16528)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3191 (class 2606 OID 16535)
-- Name: passengers passengers_pkey; Type: CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 16582)
-- Name: airport_aircraft aircraft_fk; Type: FK CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.airport_aircraft
    ADD CONSTRAINT aircraft_fk FOREIGN KEY (aircraft_id) REFERENCES qap1.aircraft(id);


--
-- TOC entry 3200 (class 2606 OID 16601)
-- Name: aircraft_passengers aircraft_fk; Type: FK CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.aircraft_passengers
    ADD CONSTRAINT aircraft_fk FOREIGN KEY (aircraft_id) REFERENCES qap1.aircraft(id);


--
-- TOC entry 3199 (class 2606 OID 16591)
-- Name: airport_aircraft airport_fk; Type: FK CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.airport_aircraft
    ADD CONSTRAINT airport_fk FOREIGN KEY (airport_id) REFERENCES qap1.airports(id) NOT VALID;


--
-- TOC entry 3196 (class 2606 OID 16536)
-- Name: airports city_fk; Type: FK CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.airports
    ADD CONSTRAINT city_fk FOREIGN KEY (city_id) REFERENCES qap1.cities(id) NOT VALID;


--
-- TOC entry 3197 (class 2606 OID 16561)
-- Name: passengers city_fk; Type: FK CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.passengers
    ADD CONSTRAINT city_fk FOREIGN KEY (city_id) REFERENCES qap1.cities(id) NOT VALID;


--
-- TOC entry 3201 (class 2606 OID 16606)
-- Name: aircraft_passengers passenger_fk; Type: FK CONSTRAINT; Schema: qap1; Owner: postgres
--

ALTER TABLE ONLY qap1.aircraft_passengers
    ADD CONSTRAINT passenger_fk FOREIGN KEY (passenger_id) REFERENCES qap1.passengers(id);


-- Completed on 2022-10-09 13:25:25

--
-- PostgreSQL database dump complete
--

