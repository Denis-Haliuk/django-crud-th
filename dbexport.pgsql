--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO crud21;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO crud21;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO crud21;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO crud21;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO crud21;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO crud21;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO crud21;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO crud21;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO crud21;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO crud21;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO crud21;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO crud21;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO crud21;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO crud21;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO crud21;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO crud21;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO crud21;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO crud21;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO crud21;

--
-- Name: register_groups; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.register_groups (
    id integer NOT NULL,
    nazvanie character varying(100) NOT NULL,
    kurs integer NOT NULL,
    forma character varying(7) NOT NULL,
    n_specialnosty_id integer NOT NULL
);


ALTER TABLE public.register_groups OWNER TO crud21;

--
-- Name: register_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.register_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_groups_id_seq OWNER TO crud21;

--
-- Name: register_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.register_groups_id_seq OWNED BY public.register_groups.id;


--
-- Name: register_itog; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.register_itog (
    id integer NOT NULL,
    otsenka integer NOT NULL,
    n_predmeta_id integer NOT NULL,
    n_prepod_id integer NOT NULL,
    n_stud_id integer NOT NULL
);


ALTER TABLE public.register_itog OWNER TO crud21;

--
-- Name: register_itog_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.register_itog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_itog_id_seq OWNER TO crud21;

--
-- Name: register_itog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.register_itog_id_seq OWNED BY public.register_itog.id;


--
-- Name: register_predmety; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.register_predmety (
    id integer NOT NULL,
    nazv_predmeta character varying(100) NOT NULL,
    specialnost_id integer NOT NULL
);


ALTER TABLE public.register_predmety OWNER TO crud21;

--
-- Name: register_predmety_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.register_predmety_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_predmety_id_seq OWNER TO crud21;

--
-- Name: register_predmety_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.register_predmety_id_seq OWNED BY public.register_predmety.id;


--
-- Name: register_prepod; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.register_prepod (
    id integer NOT NULL,
    familiya character varying(100) NOT NULL,
    imya character varying(100) NOT NULL,
    otchestvo character varying(100) NOT NULL,
    category character varying(100) NOT NULL,
    data_rozhd date NOT NULL,
    sex character varying(3) NOT NULL
);


ALTER TABLE public.register_prepod OWNER TO crud21;

--
-- Name: register_prepod_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.register_prepod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_prepod_id_seq OWNER TO crud21;

--
-- Name: register_prepod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.register_prepod_id_seq OWNED BY public.register_prepod.id;


--
-- Name: register_specialnost; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.register_specialnost (
    id integer NOT NULL,
    abbreviatura character varying(100) NOT NULL,
    n_specialnosty character varying(5) NOT NULL,
    polnoe_nazv character varying(100) NOT NULL
);


ALTER TABLE public.register_specialnost OWNER TO crud21;

--
-- Name: register_specialnost_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.register_specialnost_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_specialnost_id_seq OWNER TO crud21;

--
-- Name: register_specialnost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.register_specialnost_id_seq OWNED BY public.register_specialnost.id;


--
-- Name: register_spisok_stud; Type: TABLE; Schema: public; Owner: crud21
--

CREATE TABLE public.register_spisok_stud (
    id integer NOT NULL,
    familiya character varying(100) NOT NULL,
    imya character varying(100) NOT NULL,
    otchestvo character varying(100) NOT NULL,
    sex character varying(3) NOT NULL,
    vpo boolean NOT NULL,
    sirota boolean NOT NULL,
    invalid boolean NOT NULL,
    ato boolean NOT NULL,
    chernobil boolean NOT NULL,
    maloobespech boolean NOT NULL,
    budget boolean NOT NULL,
    data_rozhdeniya date NOT NULL,
    city character varying(100) NOT NULL,
    street character varying(100) NOT NULL,
    n_tel character varying(13) NOT NULL,
    inn character varying(100) NOT NULL,
    pasport character varying(100) NOT NULL,
    id_stan character varying(20) NOT NULL,
    n_group_id integer NOT NULL
);


ALTER TABLE public.register_spisok_stud OWNER TO crud21;

--
-- Name: register_spisok_stud_id_seq; Type: SEQUENCE; Schema: public; Owner: crud21
--

CREATE SEQUENCE public.register_spisok_stud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_spisok_stud_id_seq OWNER TO crud21;

--
-- Name: register_spisok_stud_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crud21
--

ALTER SEQUENCE public.register_spisok_stud_id_seq OWNED BY public.register_spisok_stud.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: register_groups id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_groups ALTER COLUMN id SET DEFAULT nextval('public.register_groups_id_seq'::regclass);


--
-- Name: register_itog id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_itog ALTER COLUMN id SET DEFAULT nextval('public.register_itog_id_seq'::regclass);


--
-- Name: register_predmety id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_predmety ALTER COLUMN id SET DEFAULT nextval('public.register_predmety_id_seq'::regclass);


--
-- Name: register_prepod id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_prepod ALTER COLUMN id SET DEFAULT nextval('public.register_prepod_id_seq'::regclass);


--
-- Name: register_specialnost id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_specialnost ALTER COLUMN id SET DEFAULT nextval('public.register_specialnost_id_seq'::regclass);


--
-- Name: register_spisok_stud id; Type: DEFAULT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_spisok_stud ALTER COLUMN id SET DEFAULT nextval('public.register_spisok_stud_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add specialnost	7	add_specialnost
26	Can change specialnost	7	change_specialnost
27	Can delete specialnost	7	delete_specialnost
28	Can view specialnost	7	view_specialnost
29	Can add groups	8	add_groups
30	Can change groups	8	change_groups
31	Can delete groups	8	delete_groups
32	Can view groups	8	view_groups
33	Can add spisok_stud	9	add_spisok_stud
34	Can change spisok_stud	9	change_spisok_stud
35	Can delete spisok_stud	9	delete_spisok_stud
36	Can view spisok_stud	9	view_spisok_stud
37	Can add predmety	10	add_predmety
38	Can change predmety	10	change_predmety
39	Can delete predmety	10	delete_predmety
40	Can view predmety	10	view_predmety
41	Can add prepod	11	add_prepod
42	Can change prepod	11	change_prepod
43	Can delete prepod	11	delete_prepod
44	Can view prepod	11	view_prepod
45	Can add itog	12	add_itog
46	Can change itog	12	change_itog
47	Can delete itog	12	delete_itog
48	Can view itog	12	view_itog
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$216000$r9goYLUpEAXW$nUUr2beiApjsTX1HOca0g5yZng5jaoH4LChtm4bvBlI=	2021-06-06 23:17:40.549731+03	t	crud21				t	t	2021-05-24 00:22:43.862786+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-05-24 00:28:28.622374+03	1	veritas38	3		4	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	register	specialnost
8	register	groups
9	register	spisok_stud
10	register	predmety
11	register	prepod
12	register	itog
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-05-15 01:38:45.268639+03
2	auth	0001_initial	2021-05-15 01:38:45.674298+03
3	admin	0001_initial	2021-05-15 01:38:46.294491+03
4	admin	0002_logentry_remove_auto_add	2021-05-15 01:38:46.408531+03
5	admin	0003_logentry_add_action_flag_choices	2021-05-15 01:38:46.423285+03
6	contenttypes	0002_remove_content_type_name	2021-05-15 01:38:46.452584+03
7	auth	0002_alter_permission_name_max_length	2021-05-15 01:38:46.473787+03
8	auth	0003_alter_user_email_max_length	2021-05-15 01:38:46.503451+03
9	auth	0004_alter_user_username_opts	2021-05-15 01:38:46.51407+03
10	auth	0005_alter_user_last_login_null	2021-05-15 01:38:46.523781+03
11	auth	0006_require_contenttypes_0002	2021-05-15 01:38:46.534018+03
12	auth	0007_alter_validators_add_error_messages	2021-05-15 01:38:46.550886+03
13	auth	0008_alter_user_username_max_length	2021-05-15 01:38:46.636269+03
14	auth	0009_alter_user_last_name_max_length	2021-05-15 01:38:46.655489+03
15	auth	0010_alter_group_name_max_length	2021-05-15 01:38:46.665316+03
16	auth	0011_update_proxy_permissions	2021-05-15 01:38:46.682339+03
17	auth	0012_alter_user_first_name_max_length	2021-05-15 01:38:46.703574+03
18	register	0001_initial	2021-05-15 01:38:47.079125+03
19	sessions	0001_initial	2021-05-24 00:27:44.429585+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
x7w8k8dqmlskdrs6e8s7czyb11r2fxh3	.eJxVjDsOwjAQBe_iGlmw_lPS5wzWetfGAeRIcVIh7k4ipYD2zcx7i4jrUuPa8xxHFlcB4vS7JaRnbjvgB7b7JGlqyzwmuSvyoF0OE-fX7XD_Dir2utWl5GzP5DwY5clTMEGFoH2xpCEpb1g7UsCYSmCrkC_gjLJpU3SGwOLzBeFyN6E:1lkwrr:F8y_fQXiurCdeBGfxsTqb6InwaxAiwrEW6ba5PFNJdc	2021-06-07 01:46:43.549967+03
q3qp43x6poy0833e65pbt5yopw8ym0nd	.eJxVjDsOwjAQBe_iGlmw_lPS5wzWetfGAeRIcVIh7k4ipYD2zcx7i4jrUuPa8xxHFlcB4vS7JaRnbjvgB7b7JGlqyzwmuSvyoF0OE-fX7XD_Dir2utWl5GzP5DwY5clTMEGFoH2xpCEpb1g7UsCYSmCrkC_gjLJpU3SGwOLzBeFyN6E:1llsMR:CV21K8NRG5jm_xZcltRTh3dX_fWU4DEo4POVgLmaW8U	2021-06-09 15:10:07.688078+03
y7yc1aa1jc0aa4ax2hhr8qkwiu9jlw8g	.eJxVjDsOwjAQBe_iGlmw_lPS5wzWetfGAeRIcVIh7k4ipYD2zcx7i4jrUuPa8xxHFlcB4vS7JaRnbjvgB7b7JGlqyzwmuSvyoF0OE-fX7XD_Dir2utWl5GzP5DwY5clTMEGFoH2xpCEpb1g7UsCYSmCrkC_gjLJpU3SGwOLzBeFyN6E:1lmSGL:VHTuacodl5M5B9AsHUfDZ-4vm1m1lvhtL7Ejf9bpFL0	2021-06-11 05:30:13.288544+03
xzpfzg4381q20ks3e5pph5vvqf6lz7qp	.eJxVjDsOwjAQBe_iGlmw_lPS5wzWetfGAeRIcVIh7k4ipYD2zcx7i4jrUuPa8xxHFlcB4vS7JaRnbjvgB7b7JGlqyzwmuSvyoF0OE-fX7XD_Dir2utWl5GzP5DwY5clTMEGFoH2xpCEpb1g7UsCYSmCrkC_gjLJpU3SGwOLzBeFyN6E:1loMiN:sQcKs8KNBWOFalCduErQPtE5AzjZ2fU5S65kgrNOtSI	2021-06-16 11:59:03.067521+03
0e89xf6t97hpig86eqxsewrihbvcehgs	.eJxVjDsOwjAQBe_iGlmw_lPS5wzWetfGAeRIcVIh7k4ipYD2zcx7i4jrUuPa8xxHFlcB4vS7JaRnbjvgB7b7JGlqyzwmuSvyoF0OE-fX7XD_Dir2utWl5GzP5DwY5clTMEGFoH2xpCEpb1g7UsCYSmCrkC_gjLJpU3SGwOLzBeFyN6E:1lpzDI:ryy7EuIgA327LKU3HSxbqeEZlrai-VygnzLAihDv3Mg	2021-06-20 23:17:40.558653+03
\.


--
-- Data for Name: register_groups; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.register_groups (id, nazvanie, kurs, forma, n_specialnosty_id) FROM stdin;
1	ІПЗ-20	1	Денна	1
2	ЕП-20	1	Денна	2
3	ОВ-20	1	Денна	3
4	ТОМ-20	1	Денна	4
5	ТОР-20	1	Денна	5
6	ЗВ-20	1	Денна	6
\.


--
-- Data for Name: register_itog; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.register_itog (id, otsenka, n_predmeta_id, n_prepod_id, n_stud_id) FROM stdin;
1	3	2	1	1
2	3	4	2	6
3	3	3	2	10
\.


--
-- Data for Name: register_predmety; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.register_predmety (id, nazv_predmeta, specialnost_id) FROM stdin;
1	Офісні додатки	1
2	Дискретна математика	1
3	Об'єктно-орієнтоване програмування	1
4	Бази даних	1
\.


--
-- Data for Name: register_prepod; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.register_prepod (id, familiya, imya, otchestvo, category, data_rozhd, sex) FROM stdin;
1	Багач	Сергій	Григорович	Майстер виробничого навчання II категорії	1980-06-04	Чол
2	Павлова	Марина	Олександрівна	Майстер виробничого навчання II категорії	1999-12-16	Жін
4	Гаріб	Марина	Юріївна	Майстер виробничого навчання II категорії	1980-04-16	Жін
\.


--
-- Data for Name: register_specialnost; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.register_specialnost (id, abbreviatura, n_specialnosty, polnoe_nazv) FROM stdin;
1	ІПЗ	121	Інженерія програмного забезпечення
2	ЕП	051	Економіка
3	ОВ	131	Обслуговування верстатів з ПУ та РТК
4	ТОМ	133	Технологія обробки матеріалів на верстатах і автоматичних лініях
5	ТОР	131	Технічне обслуговування і ремонт устаткування підприємств машинобудування
6	ЗВ	131	Зварювальне виробництво
\.


--
-- Data for Name: register_spisok_stud; Type: TABLE DATA; Schema: public; Owner: crud21
--

COPY public.register_spisok_stud (id, familiya, imya, otchestvo, sex, vpo, sirota, invalid, ato, chernobil, maloobespech, budget, data_rozhdeniya, city, street, n_tel, inn, pasport, id_stan, n_group_id) FROM stdin;
1	Барханський	Павло	Миколайович	Чол	f	f	f	f	f	f	f	2004-12-28	Дружківка	Енгельса, 120-109	380000000000	3834803171	12345	Навчається	1
2	Воронов	Володимир	Іванович	Чол	f	f	f	f	f	f	f	2005-07-05	с.Вільне, Добропільського р-ну	Вишнева, 45	380000000000	3853702138	12345	Навчається	1
3	Гайворонський	Євгеній	Андрійович	Чол	f	f	f	f	f	f	f	2004-11-06	Дружківка	Степна, 73	380000000000	3829602379	12345	Навчається	1
4	Глазирін	Ярослав	Валерійович	Чол	f	f	f	f	f	f	f	2005-02-08	Ол.-Дружківка	Папаніна, 7- 6	380000000000	3839006556	12345	Навчається	1
6	Єршов	Роман	Сергійович	Чол	f	f	f	f	f	f	f	2003-10-12	Дружківка	Космонавтів, 7-15	380000000000	3790501337	12345	Навчається	1
7	Коваленко	Марія	Володимирівна	Жін	f	f	f	f	f	f	f	2005-06-21	Дружківка	Самарська, 1- 2	380000000000	3852301926	12345	Навчається	1
8	Колонцев	Станіслав	Віталійович	Чол	f	f	f	f	f	f	f	2005-01-16	Дружківка	О.Тихого,249-а	380000000000	3836700739	12345	Навчається	1
9	Костанянц	Арам	Аракелович	Чол	f	f	f	f	f	f	f	2004-11-28	Дружківка	Покровська, 99-6	380000000000	3831804995	12345	Навчається	1
10	Матвєєв	Єгор	Володимирович	Чол	f	f	f	f	f	f	f	2005-03-08	Ол.-Дружківка	Партизанська, 118	380000000000	3841801175	12345	Навчається	1
11	Носачов	Максим	Олександрович	Чол	f	f	f	f	f	f	f	2005-01-04	Ол.-Дружківка	Лівобережна,140	380000000000	3835508876	12345	Навчається	1
12	Пархоменко	Аліна	Сергіївна	Жін	f	f	f	f	f	f	f	2005-04-16	Дружківка	Машинобудівників, 31-14	380000000000	3845701987	12345	Навчається	1
13	Пильцин	Микита	Миколайович	Чол	f	f	f	f	f	f	f	2005-05-27	Дружківка	Космонавтів, 2-29	380000000000	3849800136	12345	Навчається	1
14	Плєтньов	Кирило	Олексійович	Чол	f	f	f	f	f	f	f	2005-03-09	Дружківка	Чайковського, 6-9	380000000000	3841903177	12345	Навчається	1
15	Прохоренко	Соф`я	Геннадіївна	Жін	f	f	f	f	f	f	f	2005-09-12	Дружківка	Демченко М., 15	380000000000	3860600905	12345	Навчається	1
16	Тимощенко	Сергій	Сергійович	Чол	f	f	f	f	f	f	f	2004-12-16	Дружківка	Космонавтів, 21-57	380000000000	3833603796	12345	Навчається	1
17	Фень	Олена	Сергіївна	Жін	f	f	f	f	f	f	f	2005-04-05	Дружківка	Волгоградська, 41	380000000000	3844603363	12345	Навчається	1
18	Хащенков	Владислав	Віталійович	Чол	f	f	f	f	f	f	f	2003-07-05	Дружківка	П.Комуни,77-50	380000000000	3780600639	12345	Навчається	1
19	Целиковський	Даніїл	Олегович	Чол	f	f	f	f	f	f	f	2004-09-21	Дружківка	Енгельса, 120-36	380000000000	3825001352	12345	Навчається	1
20	Черкас	Олена	Михайлівна	Жін	f	f	f	f	f	f	f	2004-03-04	Дружківка	Козацька, 62-10	380000000000	3804900887	12345	Навчається	1
5	Дуник	Вадим	Олександрович	Чол	f	f	f	f	f	f	f	2005-08-03	Дружківка	Космонавтів, 42-125	+383800000000	3856601234	12345	Навчається	1
22	Бондар	Влада	Дмитрівна	Жін	f	f	f	f	f	f	f	2005-08-10	Дружківка	Космонавтів, 63-41	380000000000	3857301822	12345	Навчається	2
23	Бондарєва	Дар`я	Сергіївна	Жін	f	f	f	f	f	f	f	2005-02-22	Дружківка	Південна, 76	380000000000	3840405209	12345	Навчається	2
24	Вахтін	Антон	Сергійович	Чол	f	f	f	f	f	f	f	2005-05-05	Дружківка	Гребенюка, 46	380000000000	3847601014	12345	Навчається	2
25	Зубаль	Владислав	Олександрович	Чол	f	f	f	f	f	f	f	2004-10-01	Дружківка	Горбатова, 10-1	380000000000	3826001619	12345	Навчається	2
26	Корсун	Лідія	Петрівна	Жін	f	f	f	f	f	f	f	2005-05-14	Дружківка	Козацька 62-2	380000000000	3848500189	12345	Навчається	2
27	Кіршин	Анатолій	Сергійович	Чол	f	f	f	f	f	f	f	2001-05-13	Дружківка	П.Комуни 81-134	380000000000	3702301890	12345	Навчається	2
28	Ладник	Ганна	Сергіївна	Жін	f	f	f	f	f	f	f	2005-05-18	Дружківка	А.Козацька, 62-72	380000000000	3848901849	12345	Навчається	2
29	Мороз	Аліна	Євгеніївна	Жін	f	f	f	f	f	f	f	2005-01-13	Дружківка	Свободи, 39	380000000000	3836400966	12345	Навчається	2
30	Мушка	Анжеліка	Артемівна	Жін	f	f	f	f	f	f	f	2004-10-08	Дружківка	Козака Дружка, 147	380000000000	3826701128	12345	Навчається	2
31	Савостіна	Дар`я	Олегівна	Жін	f	f	f	f	f	f	f	2005-06-23	Дружківка	Космонавтів, 7-50	380000000000	3852503605	12345	Навчається	2
33	Юрлова	Яна	Денисівна	Жін	f	f	f	f	f	f	f	2005-07-20	Дружківка	Львівська, 4	380000000000	3855204924	12345	Навчається	2
34	Яковченко	Олександра	Олександрівна	Жін	f	f	f	f	f	f	f	2004-10-09	Костянтинівка	Донська, 9	380000000000	3826803785	12345	Навчається	2
35	Балицький	Кирило	Едуардович	Чол	f	f	f	f	f	f	f	2005-06-30	Дружківка	Злагоди, 20-28	380000000000	3853203759	12345	Навчається	3
36	Глот	Олександр 	Андрійович	Чол	f	f	f	f	f	f	f	2004-09-26	Дружківка	Космонавтів, 51-205	380000000000	3825500936	12345	Навчається	3
37	Грибініченко	Даниїл	Олегович	Чол	f	f	f	f	f	f	f	2004-11-27	Дружківка	Козацька, 56-21	380000000000	3831706497	12345	Навчається	3
38	Жидєєв	Олександр	Романович	Чол	f	f	f	f	f	f	f	2005-10-04	Дружківка	П.Комуни, 54-103	380000000000	3862801176	12345	Навчається	3
39	Зєнов	Артем	Артурович	Чол	f	f	f	f	f	f	f	2005-07-12	Дружківка	Соборна,15-63	380000000000	3854401955	12345	Навчається	3
41	Зякун	Данило	Валерійович	Чол	f	f	f	f	f	f	f	2004-09-24	Дружківка	Гаврилівська, 2-17	380000000000	3825301190	12345	Навчається	3
42	Клєщ	Денис	Сергійович	Чол	f	f	f	f	f	f	f	2005-07-19	Дружківка	А.Коваленка, 10	380000000000	3855102599	12345	Навчається	3
43	Котляренко	Владислав	Петрович	Чол	f	f	f	f	f	f	f	2004-12-22	Дружківка	Машинобудівників, 60-107	380000000000	3834201417	12345	Навчається	3
44	Маковська	Дарія	Сергіївна	Жін	f	f	f	f	f	f	f	2005-05-24	Дружківка	Космонавтів, 54-169	380000000000	3849201467	12345	Навчається	3
45	Луценко	Михайло	Володимирович	Чол	f	f	f	f	f	f	f	2004-09-30	Дружківка	Козацька, 95-67	380000000000	3825901191	12345	Навчається	3
46	Полуненко	Кирило	Ігорович	Чол	f	f	f	f	f	f	f	2005-06-06	Дружківка	Космонавтів, 53-124	380000000000	3850800092	12345	Навчається	3
47	Сімоненко	Данило	Андрійович	Чол	f	f	f	f	f	f	f	2004-08-04	Костянтинівка	бульвар Космонавтів, 4	380000000000	3820209058	12345	Навчається	3
48	Сова	Євгеній	Андрійович	Чол	f	f	f	f	f	f	f	2005-01-04	Дружківка	Космонавтів, 53-172	380000000000	3835501392	12345	Навчається	3
49	Теряєв	Артур	Євгенович	Чол	f	f	f	f	f	f	f	2004-11-17	Дружківка	П.Комуни, 81-36	380000000000	3830700730	12345	Навчається	3
50	Тимошик	Андрій	Олександрович	Чол	f	f	f	f	f	f	f	2004-12-13	Ол.-Дружківка	Лівобережна,49	380000000000	3833301376	12345	Навчається	3
51	Чечета	Єгор	Дмитрович	Чол	f	f	f	f	f	f	f	2004-10-08	Дружківка	Козацька, 58-5	380000000000	3826702273	12345	Навчається	3
52	Якименко 	Андрій	Андрійович	Чол	f	f	f	f	f	f	f	2005-02-26	Дружківка	Солідарності,49-21	380000000000	3840800635	12345	Навчається	3
53	Аракелян	Давид	Владиславович	Чол	f	f	f	f	f	f	f	2005-02-07	Дружківка	Космонавтів, 10-9	380000000000	3838900099	12345	Навчається	4
54	Баранник	Тетяна	Олександрівна	Жін	f	f	f	f	f	f	f	2005-06-30	Дружківка	 с.Гірник, вул.Механізаторів, 5	380000000000	3853203720	12345	Навчається	4
55	Бирловський	Артем	Дмитрович	Чол	f	f	f	f	f	f	f	2005-08-01	Дружківка	вул.Соборна,10-58	380000000000	3856400097	12345	Навчається	4
56	Голуб	Артур	Дмитрович	Чол	f	f	f	f	f	f	f	2005-04-23	Дружківка	вул.Солідарності, 55-9	380000000000	3846400770	12345	Навчається	4
57	Гусаченко	Даніїл	Олександрович	Чол	f	f	f	f	f	f	f	2004-07-16	Дружківка	 вул.Машинобудівників, 60-36	380000000000	3818303314	12345	Навчається	4
58	Діменков	Ігор	Олександрович	Чол	f	f	f	f	f	f	f	2005-03-01	Дружківка	вул.Зубарева, 16	380000000000	3841102753	12345	Навчається	4
59	Коломієць	Даніїл	Вікторович	Чол	f	f	f	f	f	f	f	2005-07-19	Дружківка	вул.Благовіщенська, 13	380000000000	3855102073	12345	Навчається	4
60	Лотоцька	Софія	Віталіївна	Жін	f	f	f	f	f	f	f	2005-04-02	Дружківка	вул.Театральна, 47	380000000000	3844302269	12345	Навчається	4
61	Митянська	Вероніка	Вадимівна	Жін	f	f	f	f	f	f	f	2005-04-19	Дружківка	вул.Енгельса, 112-39	380000000000	3846002124	12345	Навчається	4
62	Московченко	Володимир	Олександрович	Чол	f	f	f	f	f	f	f	2004-12-25	Дружківка	вул.Сільська, 3	380000000000	3834502253	12345	Навчається	4
63	Стрельцов	Кирило	Олексійович	Чол	f	f	f	f	f	f	f	2004-12-27	с.Райське	вул.Купріна, 94	380000000000	3834701134	12345	Навчається	4
64	Філатов	Микита	Валерійович	Чол	f	f	f	f	f	f	f	2004-01-08	Дружківка	вул.Поштова, 47	380000000000	3799300931	12345	Навчається	4
65	Хвастівець	Артем	Антонович	Чол	f	f	f	f	f	f	f	2004-12-10	Дружківка	вул.Дружби, 81-52	380000000000	3833001516	12345	Навчається	4
66	Шаповалова	Юлія	Сергіївна	Жін	f	f	f	f	f	f	f	2005-04-20	Дружківка	вул.Залізнична, 59	380000000000	3846101667	12345	Навчається	4
67	Яненко	Єгор	Сергійович	Чол	f	f	f	f	f	f	f	2005-05-16	Дружківка	вул.Енгельса, 77-22	380000000000	3848701097	12345	Навчається	4
68	Абашин	Дмитро	Романович	Чол	f	f	f	f	f	f	f	2005-05-23	Костянтинівка	вул.А.Калмикова, 11	380000000000	3849400891	12345	Навчається	5
69	Бочаров	Владислав	Олександрович	Чол	f	f	f	f	f	f	f	2005-03-25	Дружківка	вул.Свободи, 15	380000000000	3843500639	12345	Навчається	5
70	Гуменний	Денис	Анатолійович	Чол	f	f	f	f	f	f	f	2005-04-04	Дружківка	вул.Коваленка, 55	380000000000	3844500510	12345	Навчається	5
71	Дмитрієв	Кирило	Ігорович	Чол	f	f	f	f	f	f	f	2005-02-09	м.Курахове	Мар`їнський р-н, 2-я нагорна,25	380000000000	3839101437	12345	Навчається	5
72	Зубченко	Кирило	Павлович	Чол	f	f	f	f	f	f	f	2004-12-17	Дружківка	вул.Космонавтів, 59-40	380000000000	3833701031	12345	Навчається	5
73	Киселевич	Артем	Володимирович	Чол	f	f	f	f	f	f	f	2004-01-29	Дружківка	смт.Новогригорівка, вул.Клименка, 6А	380000000000	3801401198	12345	Навчається	5
74	Шебанов	Микита	Вікторович	Чол	f	f	f	f	f	f	f	2004-03-01	м.Торецьк	смт.Північне, вул.Шосейна, 47	380000000000	3804604899	12345	Навчається	5
75	Якименко 	Дмитро	Анатолійович	Чол	f	f	f	f	f	f	f	2004-12-22	м.Добропілля	вул.Черняховського, 68	380000000000	3834201054	12345	Навчається	5
76	Алтиченко	Даніїл	Віталійович	Чол	f	f	f	f	f	f	f	2005-04-16	м.Дружківка	м. Костянтинівка  54-138	380000000000	3845700994	12345	Навчається	6
21	Андреєва	Катерина	Андріївна	Жін	f	f	f	f	f	f	f	2005-01-18	Дружківка	П.Комуни, 79-54	380000000000	3836904386	12345	Навчається	2
32	Сапожкова	Ірина	Олександрівна	Жін	f	f	f	f	f	f	f	2005-07-07	Дружківка	пров.Виноградний,16	380000000000	3853900845	12345	Навчається	2
40	Зубарєв	Нікіта	Олександрович	Чол	f	f	f	f	f	f	f	2005-04-30	Дружківка	вул.Саксаганського, 2	383800000000	3847101776	12345	Навчається	3
77	Андріюк	Олександр	Сергійович	Чол	f	f	f	f	f	f	f	2005-03-01	с.Райське	 вул.Донецька 100	380000000000	3841101695	12345	Навчається	6
78	Божко	Максим	Дмитрович	Чол	f	f	f	f	f	f	f	2004-03-18	Покровський р-н	 м.Гродівка  вул.Шкільна	380000000000	3842800794	12345	Навчається	6
89	Сєніков	Данило	Олександрович	Чол	f	f	f	f	f	f	f	2004-11-04	м.Дружківка	вул.Кринична	380000000000	3829401079	12345	Навчається	6
80	Бужилов	Олександр	Олександрович	Чол	f	f	f	f	f	f	f	2005-01-13	м.Дружківка	с.Миколайпілля  вул.Остапчука	380000000000	3836400551	12345	Навчається	6
90	Ситник	Євгеній	Едуардович	Чол	f	f	f	f	f	f	f	2004-08-04	м.Дружківка	вул.Львівська 32	380000000000	3820201172	12345	Навчається	6
91	Соловей	Кирило	Віталійович	Чол	f	f	f	f	f	f	f	2005-03-31	м.Дружківка	вул.Народна 19	380000000000	3844102056	12345	Навчається	6
92	Сухарєв	Валерій	Андрійович	Чол	f	f	f	f	f	f	f	2005-02-27	м.Дружківка	вул.Ювілейна 4	380000000000	3840900932	12345	Навчається	6
93	Тупальський	Данило	Валерійович	Чол	f	f	f	f	f	f	f	2005-06-10	м.Дружківка	вул.Шефська 73	380000000000	3851200954	12345	Навчається	6
94	Філоненко	Давід	Олегович	Чол	f	f	f	f	f	f	f	2005-07-26	м.Дружківка	вул.Чернігівська  4-33	380000000000	3855801233	12345	Навчається	6
95	Шевченко	Максим	Сергійович	Чол	f	f	f	f	f	f	f	2005-08-28	Ол.-Дружківка	вул.О.Тихого 15	380000000000	3859103170	12345	Навчається	6
79	Бондаренко	Денис	Сергійович	Чол	f	f	f	f	f	f	f	2005-08-27	м.Дружківка	вул.Саратівська 2	380000000000	3859003071	12345	Навчається	6
81	Гончаров	Іван	Володимирович	Чол	f	f	f	f	f	f	f	2005-08-23	м.Дружківка	вул.Космонавтів  30-106	380000000000	3858602451	12345	Навчається	6
82	Дєєв	Олександр	Дмитрович	Чол	f	f	f	f	f	f	f	2005-06-21	м.Дружківка	вул.Космонавтів  12-1	380000000000	3852301639	12345	Навчається	6
83	Єна	Костянтин	Юрійович	Чол	f	f	f	f	f	f	f	2005-08-25	м.Дружківка	вул.Костіна 10	380000000000	3858800555	12345	Навчається	6
84	Кармазін	Максим	Андрійович	Чол	f	f	f	f	f	f	f	2005-06-09	м.Дружківка	вул.Грибоєдова 33	380000000000	3851100879	12345	Навчається	6
85	Курицький	Костянтин	Олексійович	Чол	f	f	f	f	f	f	f	2005-01-25	м.Дружківка	вул.Чайковського  10-39	380000000000	3837604576	12345	Навчається	6
86	Малій	Кирило	Дмитрович	Чол	f	f	f	f	f	f	f	2005-01-13	Ол.-Дружківка	вул.Седова  1-31	380000000000	3836404078	12345	Навчається	6
87	Молозін	Владислав	Анатолійович	Чол	f	f	f	f	f	f	f	2005-03-11	м.Дружківка	вул.Вознесенська 40	380000000000	3842102739	12345	Навчається	6
88	Райков	Даниїл	Рашитович	Чол	f	f	f	f	f	f	f	2004-07-19	м.Дружківка	вул.Миру  2-1	380000000000	3818612814	12345	Навчається	6
96	Семчишак	Олександр	Михайлович	Чол	f	f	f	f	f	f	f	2005-01-19	Ол.-Дружківка	вул.Каштанова 67	380000000000	3837007970	12345	Навчається	6
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: register_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.register_groups_id_seq', 6, true);


--
-- Name: register_itog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.register_itog_id_seq', 3, true);


--
-- Name: register_predmety_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.register_predmety_id_seq', 4, true);


--
-- Name: register_prepod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.register_prepod_id_seq', 4, true);


--
-- Name: register_specialnost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.register_specialnost_id_seq', 6, true);


--
-- Name: register_spisok_stud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crud21
--

SELECT pg_catalog.setval('public.register_spisok_stud_id_seq', 96, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: register_groups register_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_groups
    ADD CONSTRAINT register_groups_pkey PRIMARY KEY (id);


--
-- Name: register_itog register_itog_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_itog
    ADD CONSTRAINT register_itog_pkey PRIMARY KEY (id);


--
-- Name: register_predmety register_predmety_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_predmety
    ADD CONSTRAINT register_predmety_pkey PRIMARY KEY (id);


--
-- Name: register_prepod register_prepod_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_prepod
    ADD CONSTRAINT register_prepod_pkey PRIMARY KEY (id);


--
-- Name: register_specialnost register_specialnost_abbreviatura_key; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_specialnost
    ADD CONSTRAINT register_specialnost_abbreviatura_key UNIQUE (abbreviatura);


--
-- Name: register_specialnost register_specialnost_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_specialnost
    ADD CONSTRAINT register_specialnost_pkey PRIMARY KEY (id);


--
-- Name: register_spisok_stud register_spisok_stud_pkey; Type: CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_spisok_stud
    ADD CONSTRAINT register_spisok_stud_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: register_groups_n_specialnosty_id_f604de63; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX register_groups_n_specialnosty_id_f604de63 ON public.register_groups USING btree (n_specialnosty_id);


--
-- Name: register_itog_n_predmeta_id_b716ff23; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX register_itog_n_predmeta_id_b716ff23 ON public.register_itog USING btree (n_predmeta_id);


--
-- Name: register_itog_n_prepod_id_fbeaf8cf; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX register_itog_n_prepod_id_fbeaf8cf ON public.register_itog USING btree (n_prepod_id);


--
-- Name: register_itog_n_stud_id_c6c461e7; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX register_itog_n_stud_id_c6c461e7 ON public.register_itog USING btree (n_stud_id);


--
-- Name: register_predmety_specialnost_id_a888ee14; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX register_predmety_specialnost_id_a888ee14 ON public.register_predmety USING btree (specialnost_id);


--
-- Name: register_specialnost_abbreviatura_3f4bdd64_like; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX register_specialnost_abbreviatura_3f4bdd64_like ON public.register_specialnost USING btree (abbreviatura varchar_pattern_ops);


--
-- Name: register_spisok_stud_n_group_id_907debab; Type: INDEX; Schema: public; Owner: crud21
--

CREATE INDEX register_spisok_stud_n_group_id_907debab ON public.register_spisok_stud USING btree (n_group_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_groups register_groups_n_specialnosty_id_f604de63_fk_register_; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_groups
    ADD CONSTRAINT register_groups_n_specialnosty_id_f604de63_fk_register_ FOREIGN KEY (n_specialnosty_id) REFERENCES public.register_specialnost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_itog register_itog_n_predmeta_id_b716ff23_fk_register_predmety_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_itog
    ADD CONSTRAINT register_itog_n_predmeta_id_b716ff23_fk_register_predmety_id FOREIGN KEY (n_predmeta_id) REFERENCES public.register_predmety(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_itog register_itog_n_prepod_id_fbeaf8cf_fk_register_prepod_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_itog
    ADD CONSTRAINT register_itog_n_prepod_id_fbeaf8cf_fk_register_prepod_id FOREIGN KEY (n_prepod_id) REFERENCES public.register_prepod(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_itog register_itog_n_stud_id_c6c461e7_fk_register_spisok_stud_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_itog
    ADD CONSTRAINT register_itog_n_stud_id_c6c461e7_fk_register_spisok_stud_id FOREIGN KEY (n_stud_id) REFERENCES public.register_spisok_stud(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_predmety register_predmety_specialnost_id_a888ee14_fk_register_; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_predmety
    ADD CONSTRAINT register_predmety_specialnost_id_a888ee14_fk_register_ FOREIGN KEY (specialnost_id) REFERENCES public.register_specialnost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_spisok_stud register_spisok_stud_n_group_id_907debab_fk_register_groups_id; Type: FK CONSTRAINT; Schema: public; Owner: crud21
--

ALTER TABLE ONLY public.register_spisok_stud
    ADD CONSTRAINT register_spisok_stud_n_group_id_907debab_fk_register_groups_id FOREIGN KEY (n_group_id) REFERENCES public.register_groups(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

