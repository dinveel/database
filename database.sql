--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contract_subcontractor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contract_subcontractor (
    id_subcontractor integer NOT NULL,
    id_contract integer NOT NULL
);


ALTER TABLE public.contract_subcontractor OWNER TO postgres;

--
-- Name: contracts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contracts (
    id_contract integer NOT NULL,
    date_of_begin date NOT NULL,
    date_of_end date NOT NULL,
    work_area text NOT NULL,
    stage_of_work text NOT NULL,
    id_type_of_work integer NOT NULL,
    koef_of_contract double precision NOT NULL
);


ALTER TABLE public.contracts OWNER TO postgres;

--
-- Name: len_obl; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE len_obl (
    area_id_len_obl integer NOT NULL,
    area text NOT NULL
);


ALTER TABLE public.len_obl OWNER TO postgres;

--
-- Name: serial_id_contract_subcontractor; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE serial_id_contract_subcontractor
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.serial_id_contract_subcontractor OWNER TO postgres;

--
-- Name: serial_id_contracts; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE serial_id_contracts
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.serial_id_contracts OWNER TO postgres;

--
-- Name: serial_id_subcontractor; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE serial_id_subcontractor
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.serial_id_subcontractor OWNER TO postgres;

--
-- Name: serial_id_subcontractors_technique_amount; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE serial_id_subcontractors_technique_amount
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.serial_id_subcontractors_technique_amount OWNER TO postgres;

--
-- Name: serial_id_technique; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE serial_id_technique
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.serial_id_technique OWNER TO postgres;

--
-- Name: subcontractors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE subcontractors (
    subcontractor text NOT NULL,
    area_id_len_obl integer NOT NULL,
    dispatcher_telephone text NOT NULL,
    id_subcontractor integer NOT NULL
);


ALTER TABLE public.subcontractors OWNER TO postgres;

--
-- Name: subcontractors_technique_amount; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE subcontractors_technique_amount (
    id_subcontractor integer NOT NULL,
    id_technique integer NOT NULL,
    amount_of_tech integer NOT NULL
);


ALTER TABLE public.subcontractors_technique_amount OWNER TO postgres;

--
-- Name: technique; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE technique (
    id_technique integer NOT NULL,
    technique text NOT NULL,
    fuel_per_hour integer NOT NULL,
    CONSTRAINT technique_fuel_per_hour_ck CHECK ((fuel_per_hour > 0))
);


ALTER TABLE public.technique OWNER TO postgres;

--
-- Name: type_of_work; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE type_of_work (
    id_type_of_work integer NOT NULL,
    type_of_work text NOT NULL
);


ALTER TABLE public.type_of_work OWNER TO postgres;

--
-- Name: type_of_work_tech; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE type_of_work_tech (
    id_type_of_work integer NOT NULL,
    id_technique integer NOT NULL,
    amount_of_tech_is_needed integer NOT NULL
);


ALTER TABLE public.type_of_work_tech OWNER TO postgres;

--
-- Data for Name: contract_subcontractor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contract_subcontractor (id_subcontractor, id_contract) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
1	14
2	15
3	16
4	17
5	18
6	19
7	20
8	21
9	22
10	23
11	24
12	25
13	26
1	27
2	28
3	29
4	30
5	31
6	32
7	33
8	34
9	35
10	36
11	37
12	38
13	39
1	40
2	41
\.


--
-- Data for Name: contracts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contracts (id_contract, date_of_begin, date_of_end, work_area, stage_of_work, id_type_of_work, koef_of_contract) FROM stdin;
1	2017-05-01	2017-05-06	4705	ended	2	1
2	2017-05-06	2017-05-12	4710	ended	5	1
3	2017-05-04	2017-05-16	4716	ended	6	1
4	2017-05-03	2017-05-11	4707	ended	3	1
5	2017-05-11	2017-05-13	4725	ended	1	1
6	2017-05-13	2017-05-18	4706	ended	4	1
7	2017-05-15	2017-05-24	4715	ended	2	1
8	2017-05-21	2017-06-01	4705	ended	5	1
9	2017-06-02	2017-06-06	4705	ended	7	1
10	2017-06-04	2017-06-06	4710	ended	7	1
11	2017-06-01	2017-06-11	4716	ended	6	1
12	2017-06-03	2017-06-18	4707	ended	1	1
13	2017-06-07	2017-06-18	4725	ended	4	1
14	2017-06-13	2017-06-21	4705	ended	2	1
15	2017-06-11	2017-06-21	4710	ended	4	1
16	2017-06-17	2017-06-24	4716	ended	7	1
17	2017-06-21	2017-06-25	4707	ended	1	1
18	2017-06-23	2017-06-25	4725	ended	5	1
19	2017-06-25	2017-07-04	4706	ended	2	1
20	2017-07-01	2017-07-04	4715	ended	1	1
21	2017-07-04	2017-07-10	4705	ended	7	1
22	2017-07-15	2017-07-22	4705	ended	8	1
23	2017-07-01	2017-07-15	4710	ended	1	1
24	2017-07-04	2017-07-11	4716	ended	4	1
25	2017-07-02	2017-07-18	4707	ended	8	1
26	2017-07-07	2017-07-14	4725	ended	6	1
27	2017-07-03	2017-07-23	4705	ended	2	1
28	2017-07-24	2017-08-13	4710	ended	5	1
29	2017-07-27	2017-08-11	4716	ended	1	1
30	2017-08-01	2017-08-05	4707	ended	3	1
31	2017-08-02	2017-08-04	4725	ended	7	1
32	2017-08-08	2017-08-17	4706	ended	6	1
33	2017-08-11	2017-08-14	4715	ended	7	1
34	2017-08-12	2017-08-19	4705	ended	1	1
35	2017-08-20	2017-08-24	4705	ended	7	1
36	2017-08-17	2017-08-27	4710	ended	5	1
37	2017-08-18	2017-08-21	4716	ended	7	1
38	2017-08-13	2017-08-25	4707	ended	1	1
39	2017-08-25	2017-08-29	4725	ended	3	1
40	2017-08-26	2018-08-31	4705	in progress	4	2
41	2017-08-29	2018-09-21	4710	in progress	1	1
\.


--
-- Data for Name: len_obl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY len_obl (area_id_len_obl, area) FROM stdin;
4710	Luzhskiy
4705	Gatchinskiy/Volosovskiy
4716	Tosnenskiy
4707	Kingiseppskiy/Slantsevskiy
4725	Lomonosovskiy
4706	Kirovskiy
4715	Tikhvinskiy
\.


--
-- Name: serial_id_contract_subcontractor; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serial_id_contract_subcontractor', 1, false);


--
-- Name: serial_id_contracts; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serial_id_contracts', 1, false);


--
-- Name: serial_id_subcontractor; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serial_id_subcontractor', 14, true);


--
-- Name: serial_id_subcontractors_technique_amount; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serial_id_subcontractors_technique_amount', 1, false);


--
-- Name: serial_id_technique; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serial_id_technique', 12, true);


--
-- Data for Name: subcontractors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY subcontractors (subcontractor, area_id_len_obl, dispatcher_telephone, id_subcontractor) FROM stdin;
OOO"Vega"	4705	89215557383	1
OOO"Altair"	4710	89215554221	2
OOO"Cvadra"	4716	89215551171	3
OOO"Simplex"	4707	89215558348	4
OOO"Gradact"	4725	89215557291	5
OOO"Grazda"	4706	89215557711	6
OOO"Fistkens"	4715	89215557253	7
OOO"Assatan"	4705	89215559234	8
OOO"Astra"	4705	89215552753	9
OOO"Sizd"	4710	89215556668	10
OOO"Spetsstroy"	4716	89215553929	11
OOO"Akasha"	4707	89215554823	12
OOO"Dorozhnik"	4725	89215552239	13
OOO"Mashstroi"	4716	89215553331	14
\.


--
-- Data for Name: subcontractors_technique_amount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY subcontractors_technique_amount (id_subcontractor, id_technique, amount_of_tech) FROM stdin;
1	1	1
1	2	2
1	3	6
1	4	1
1	5	1
1	6	2
1	7	1
1	8	4
1	9	2
1	10	2
1	11	1
1	12	3
2	1	1
2	2	1
2	3	4
2	4	1
2	5	1
2	6	1
2	7	0
2	8	0
2	9	2
2	10	2
2	11	1
2	12	3
3	1	0
3	2	0
3	3	5
3	4	0
3	5	1
3	6	1
3	7	0
3	8	0
3	9	1
3	10	2
3	11	0
3	12	2
4	1	1
4	2	2
4	3	6
4	4	1
4	5	2
4	6	3
4	7	1
4	8	6
4	9	3
4	10	5
4	11	2
4	12	4
5	1	1
5	2	2
5	3	4
5	4	1
5	5	1
5	6	2
5	7	0
5	8	0
5	9	1
5	10	3
5	11	0
5	12	2
6	1	1
6	2	2
6	3	6
6	4	1
6	5	2
6	6	3
6	7	1
6	8	4
6	9	2
6	10	4
6	11	2
6	12	4
7	1	1
7	2	2
7	3	6
7	4	1
7	5	2
7	6	3
7	7	1
7	8	0
7	9	2
7	10	4
7	11	1
7	12	3
8	1	1
8	2	0
8	3	3
8	4	1
8	5	1
8	6	1
8	7	0
8	8	0
8	9	1
8	10	2
8	11	0
8	12	1
9	1	0
9	2	0
9	3	4
9	4	0
9	5	2
9	6	2
9	7	0
9	8	0
9	9	1
9	10	3
9	11	0
9	12	2
10	1	1
10	2	1
10	3	5
10	4	1
10	5	2
10	6	3
10	7	1
10	8	0
10	9	2
10	10	4
10	11	1
10	12	3
11	1	1
11	2	1
11	3	6
11	4	1
11	5	1
11	6	2
11	7	1
11	8	0
11	9	2
11	10	4
11	11	1
11	12	3
12	1	1
12	2	2
12	3	5
12	4	1
12	5	2
12	6	2
12	7	0
12	8	0
12	9	2
12	10	4
12	11	1
12	12	3
13	1	1
13	2	1
13	3	4
13	4	1
13	5	1
13	6	2
13	7	1
13	8	4
13	9	2
13	10	2
13	11	1
13	12	1
\.


--
-- Data for Name: technique; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY technique (id_technique, technique, fuel_per_hour) FROM stdin;
1	Avtotral	18
2	Bulldozer	8
3	Auto-dumptruck	20
4	Crawler-Excavator	11
5	Wheeled-Excavator	9
6	Construction-Crane	16
7	Hydraulic-Hammer	10
8	Truck-Mixer	16
9	Front-Loader	7
10	Maxillofacial-Loader	5
11	Road-Pusher	23
12	Truck	16
\.


--
-- Data for Name: type_of_work; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY type_of_work (id_type_of_work, type_of_work) FROM stdin;
1	Garbage-Removal
2	Preparing-The-Construction-Site
3	Concreting-Of-The-Site
4	Preparation-Of-The-Roadway
5	Reclamation
6	Dismantling-Of-Building-Structures
7	Civil-Works
8	Excavation
\.


--
-- Data for Name: type_of_work_tech; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY type_of_work_tech (id_type_of_work, id_technique, amount_of_tech_is_needed) FROM stdin;
1	3	2
1	10	1
2	1	1
2	2	1
2	9	1
2	10	1
2	3	6
3	8	2
4	2	2
4	1	1
4	3	4
4	11	1
4	9	2
5	4	1
5	1	1
5	9	1
5	3	4
5	2	1
6	7	1
6	10	2
6	6	1
6	3	4
7	6	1
7	1	1
7	12	2
7	3	2
7	9	1
8	5	1
8	3	4
8	9	1
8	1	1
\.


--
-- Name: contracts_id_contract_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contracts
    ADD CONSTRAINT contracts_id_contract_pk PRIMARY KEY (id_contract);


--
-- Name: len_obl_area_uk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY len_obl
    ADD CONSTRAINT len_obl_area_uk UNIQUE (area);


--
-- Name: len_obl_id_area_id_len_obl_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY len_obl
    ADD CONSTRAINT len_obl_id_area_id_len_obl_pk PRIMARY KEY (area_id_len_obl);


--
-- Name: subcontractor_id_subcontractor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY subcontractors
    ADD CONSTRAINT subcontractor_id_subcontractor_pk PRIMARY KEY (id_subcontractor);


--
-- Name: subcontractors_dispatcher_telephone_uk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY subcontractors
    ADD CONSTRAINT subcontractors_dispatcher_telephone_uk UNIQUE (dispatcher_telephone);


--
-- Name: subcontractors_subcontractor_uk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY subcontractors
    ADD CONSTRAINT subcontractors_subcontractor_uk UNIQUE (subcontractor);


--
-- Name: technique_id_technique_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY technique
    ADD CONSTRAINT technique_id_technique_pk PRIMARY KEY (id_technique);


--
-- Name: type_of_work_id_type_of_work_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY type_of_work
    ADD CONSTRAINT type_of_work_id_type_of_work_pk PRIMARY KEY (id_type_of_work);


--
-- Name: contract_subcontractor_id_contract_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contract_subcontractor
    ADD CONSTRAINT contract_subcontractor_id_contract_fk FOREIGN KEY (id_contract) REFERENCES contracts(id_contract);


--
-- Name: contract_subcontractor_id_subcontractor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contract_subcontractor
    ADD CONSTRAINT contract_subcontractor_id_subcontractor_fk FOREIGN KEY (id_subcontractor) REFERENCES subcontractors(id_subcontractor);


--
-- Name: contracts_id_type_of_work_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contracts
    ADD CONSTRAINT contracts_id_type_of_work_fk FOREIGN KEY (id_type_of_work) REFERENCES type_of_work(id_type_of_work);


--
-- Name: subcontractors_area_id_len_obl_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subcontractors
    ADD CONSTRAINT subcontractors_area_id_len_obl_fk FOREIGN KEY (area_id_len_obl) REFERENCES len_obl(area_id_len_obl);


--
-- Name: subcontractors_id_subcontractor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subcontractors_technique_amount
    ADD CONSTRAINT subcontractors_id_subcontractor_fk FOREIGN KEY (id_subcontractor) REFERENCES subcontractors(id_subcontractor);


--
-- Name: subcontractors_technique_amount_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subcontractors_technique_amount
    ADD CONSTRAINT subcontractors_technique_amount_fk FOREIGN KEY (id_technique) REFERENCES technique(id_technique);


--
-- Name: type_of_work_tech_id_technique_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type_of_work_tech
    ADD CONSTRAINT type_of_work_tech_id_technique_fk FOREIGN KEY (id_technique) REFERENCES technique(id_technique);


--
-- Name: type_of_work_tech_id_type_of_work_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type_of_work_tech
    ADD CONSTRAINT type_of_work_tech_id_type_of_work_fk FOREIGN KEY (id_type_of_work) REFERENCES type_of_work(id_type_of_work);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

