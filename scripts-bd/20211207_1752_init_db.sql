--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9
-- Dumped by pg_dump version 13.3

-- Started on 2021-12-07 17:49:12

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA IF NOT EXISTS public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 24790)
-- Name: course_content_dones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_content_dones (
    id bigint NOT NULL,
    course_content_id bigint NOT NULL,
    course_student_id bigint NOT NULL,
    date timestamp(0) with time zone NOT NULL,
    rating smallint NOT NULL,
    CONSTRAINT chk_rating CHECK (((rating >= 0) AND (rating <= 5)))
);


ALTER TABLE public.course_content_dones OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24788)
-- Name: course_content_dones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_content_dones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_content_dones_id_seq OWNER TO postgres;

--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 226
-- Name: course_content_dones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_content_dones_id_seq OWNED BY public.course_content_dones.id;


--
-- TOC entry 231 (class 1259 OID 24857)
-- Name: course_content_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_content_files (
    id bigint NOT NULL,
    course_content_id bigint NOT NULL,
    title character varying(40) NOT NULL,
    file_url character varying(200) NOT NULL
);


ALTER TABLE public.course_content_files OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 24855)
-- Name: course_content_files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_content_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_content_files_id_seq OWNER TO postgres;

--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 230
-- Name: course_content_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_content_files_id_seq OWNED BY public.course_content_files.id;


--
-- TOC entry 225 (class 1259 OID 24772)
-- Name: course_contents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_contents (
    id bigint NOT NULL,
    course_module_id bigint NOT NULL,
    title character varying(60) NOT NULL,
    description text,
    video_url character varying(255),
    "order" smallint
);


ALTER TABLE public.course_contents OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24770)
-- Name: course_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_contents_id_seq OWNER TO postgres;

--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 224
-- Name: course_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_contents_id_seq OWNED BY public.course_contents.id;


--
-- TOC entry 221 (class 1259 OID 24735)
-- Name: course_modules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_modules (
    id bigint NOT NULL,
    course_id bigint NOT NULL,
    title character varying(50) NOT NULL,
    starts_at timestamp(0) with time zone
);


ALTER TABLE public.course_modules OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24733)
-- Name: course_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_modules_id_seq OWNER TO postgres;

--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 220
-- Name: course_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_modules_id_seq OWNED BY public.course_modules.id;


--
-- TOC entry 223 (class 1259 OID 24750)
-- Name: course_students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_students (
    id bigint NOT NULL,
    course_id bigint NOT NULL,
    student_id bigint NOT NULL,
    invite_email_sent boolean DEFAULT false NOT NULL,
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE public.course_students OWNER TO postgres;

--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN course_students.student_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.course_students.student_id IS 'FK from users';


--
-- TOC entry 222 (class 1259 OID 24748)
-- Name: course_students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_students_id_seq OWNER TO postgres;

--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 222
-- Name: course_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_students_id_seq OWNED BY public.course_students.id;


--
-- TOC entry 219 (class 1259 OID 24711)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    created_user_id bigint NOT NULL,
    created_at timestamp(0) with time zone NOT NULL,
    title character varying(60) NOT NULL,
    description text NOT NULL,
    header_img_url character varying(200),
    starts_at timestamp(0) with time zone,
    active boolean DEFAULT true NOT NULL,
    deleted boolean DEFAULT false NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24709)
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO postgres;

--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 218
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- TOC entry 213 (class 1259 OID 24645)
-- Name: domain_staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domain_staff (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(0) with time zone NOT NULL
);


ALTER TABLE public.domain_staff OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24643)
-- Name: domain_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domain_staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domain_staff_id_seq OWNER TO postgres;

--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 212
-- Name: domain_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domain_staff_id_seq OWNED BY public.domain_staff.id;


--
-- TOC entry 217 (class 1259 OID 24689)
-- Name: domain_support_messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domain_support_messages (
    id bigint NOT NULL,
    domain_support_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(0) with time zone NOT NULL,
    message text NOT NULL,
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE public.domain_support_messages OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24687)
-- Name: domain_support_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domain_support_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domain_support_messages_id_seq OWNER TO postgres;

--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 216
-- Name: domain_support_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domain_support_messages_id_seq OWNED BY public.domain_support_messages.id;


--
-- TOC entry 215 (class 1259 OID 24665)
-- Name: domain_supports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domain_supports (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    user_id bigint NOT NULL,
    title character varying(60) NOT NULL,
    description text NOT NULL,
    status character varying(255) DEFAULT 'OPEN'::character varying NOT NULL,
    rating smallint,
    rating_comment text,
    created_at timestamp(0) with time zone NOT NULL,
    updated_at timestamp(0) with time zone NOT NULL,
    CONSTRAINT chk_rating CHECK (((rating >= 0) AND (rating <= 5))),
    CONSTRAINT domain_supports_status_check CHECK (((status)::text = ANY ((ARRAY['OPEN'::character varying, 'VIEWED'::character varying, 'CLOSED'::character varying])::text[])))
);


ALTER TABLE public.domain_supports OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24663)
-- Name: domain_supports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domain_supports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domain_supports_id_seq OWNER TO postgres;

--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 214
-- Name: domain_supports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domain_supports_id_seq OWNED BY public.domain_supports.id;


--
-- TOC entry 235 (class 1259 OID 24893)
-- Name: domain_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domain_users (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    domain_id bigint NOT NULL,
    created_at timestamp(0) with time zone NOT NULL
);


ALTER TABLE public.domain_users OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 24891)
-- Name: domain_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domain_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domain_users_id_seq OWNER TO postgres;

--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 234
-- Name: domain_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domain_users_id_seq OWNED BY public.domain_users.id;


--
-- TOC entry 211 (class 1259 OID 24629)
-- Name: domains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domains (
    id bigint NOT NULL,
    owner_id bigint NOT NULL,
    domain_name character varying(60) NOT NULL,
    created_at timestamp(0) with time zone NOT NULL,
    active boolean DEFAULT true NOT NULL,
    bg_login_url character varying(200)
);


ALTER TABLE public.domains OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24627)
-- Name: domains_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domains_id_seq OWNER TO postgres;

--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 210
-- Name: domains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domains_id_seq OWNED BY public.domains.id;


--
-- TOC entry 233 (class 1259 OID 24876)
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    date timestamp(0) with time zone NOT NULL,
    message text NOT NULL,
    is_read boolean DEFAULT false NOT NULL
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 24874)
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO postgres;

--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 232
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- TOC entry 207 (class 1259 OID 24598)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    role_key character varying(35) NOT NULL,
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24596)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 206
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 229 (class 1259 OID 24811)
-- Name: timelines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timelines (
    id bigint NOT NULL,
    course_content_id bigint,
    course_id bigint,
    domain_id bigint,
    user_id bigint NOT NULL,
    comment text NOT NULL,
    date timestamp(0) with time zone NOT NULL,
    reply_timeline_id bigint,
    is_staff boolean DEFAULT false NOT NULL,
    edited boolean DEFAULT false NOT NULL,
    disabled boolean DEFAULT false NOT NULL,
    disabled_user_id bigint,
    disabled_date timestamp(0) with time zone,
    CONSTRAINT chk_content_course_domain CHECK ((((course_content_id IS NOT NULL) AND (course_id IS NULL) AND (domain_id IS NULL)) OR ((course_content_id IS NULL) AND (course_id IS NOT NULL) AND (domain_id IS NULL)) OR ((course_content_id IS NULL) AND (course_id IS NULL) AND (domain_id IS NOT NULL)))),
    CONSTRAINT chk_self_reply CHECK ((reply_timeline_id <> id))
);


ALTER TABLE public.timelines OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 24913)
-- Name: timelines_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timelines_files (
    id bigint NOT NULL,
    timeline_id bigint NOT NULL,
    file_url character varying(200) NOT NULL,
    file_type character varying(255) NOT NULL,
    CONSTRAINT timelines_files_file_type_check CHECK (((file_type)::text = ANY ((ARRAY['IMAGE'::character varying, 'VIDEO'::character varying])::text[])))
);


ALTER TABLE public.timelines_files OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 24911)
-- Name: timelines_files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timelines_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timelines_files_id_seq OWNER TO postgres;

--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 236
-- Name: timelines_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timelines_files_id_seq OWNED BY public.timelines_files.id;


--
-- TOC entry 228 (class 1259 OID 24809)
-- Name: timelines_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timelines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timelines_id_seq OWNER TO postgres;

--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 228
-- Name: timelines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timelines_id_seq OWNED BY public.timelines.id;


--
-- TOC entry 209 (class 1259 OID 24609)
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_roles (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.user_roles OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24607)
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_id_seq OWNER TO postgres;

--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 208
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;


--
-- TOC entry 205 (class 1259 OID 24586)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(150) NOT NULL,
    first_name character varying(60) NOT NULL,
    last_name character varying(60) NOT NULL,
    password character varying(100) NOT NULL,
    ddd_phone smallint,
    phone character varying(15),
    ddd_cellphone smallint,
    cellphone character varying(15),
    confirmed boolean DEFAULT false NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp(0) with time zone NOT NULL,
    picture_url character varying(200),
    city character varying(100),
    about text,
    social_url character varying(200),
    remember_token character varying(100),
    recover_password_token character varying(100)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24584)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 204
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2912 (class 2604 OID 24793)
-- Name: course_content_dones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_dones ALTER COLUMN id SET DEFAULT nextval('public.course_content_dones_id_seq'::regclass);


--
-- TOC entry 2920 (class 2604 OID 24860)
-- Name: course_content_files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_files ALTER COLUMN id SET DEFAULT nextval('public.course_content_files_id_seq'::regclass);


--
-- TOC entry 2911 (class 2604 OID 24775)
-- Name: course_contents id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_contents ALTER COLUMN id SET DEFAULT nextval('public.course_contents_id_seq'::regclass);


--
-- TOC entry 2907 (class 2604 OID 24738)
-- Name: course_modules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_modules ALTER COLUMN id SET DEFAULT nextval('public.course_modules_id_seq'::regclass);


--
-- TOC entry 2908 (class 2604 OID 24753)
-- Name: course_students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_students ALTER COLUMN id SET DEFAULT nextval('public.course_students_id_seq'::regclass);


--
-- TOC entry 2905 (class 2604 OID 24714)
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- TOC entry 2897 (class 2604 OID 24648)
-- Name: domain_staff id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_staff ALTER COLUMN id SET DEFAULT nextval('public.domain_staff_id_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 24692)
-- Name: domain_support_messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_support_messages ALTER COLUMN id SET DEFAULT nextval('public.domain_support_messages_id_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 24668)
-- Name: domain_supports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_supports ALTER COLUMN id SET DEFAULT nextval('public.domain_supports_id_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 24896)
-- Name: domain_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_users ALTER COLUMN id SET DEFAULT nextval('public.domain_users_id_seq'::regclass);


--
-- TOC entry 2895 (class 2604 OID 24632)
-- Name: domains id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domains ALTER COLUMN id SET DEFAULT nextval('public.domains_id_seq'::regclass);


--
-- TOC entry 2921 (class 2604 OID 24879)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- TOC entry 2892 (class 2604 OID 24601)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 2914 (class 2604 OID 24814)
-- Name: timelines id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines ALTER COLUMN id SET DEFAULT nextval('public.timelines_id_seq'::regclass);


--
-- TOC entry 2924 (class 2604 OID 24916)
-- Name: timelines_files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines_files ALTER COLUMN id SET DEFAULT nextval('public.timelines_files_id_seq'::regclass);


--
-- TOC entry 2894 (class 2604 OID 24612)
-- Name: user_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);


--
-- TOC entry 2889 (class 2604 OID 24589)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2969 (class 2606 OID 24795)
-- Name: course_content_dones course_content_dones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_dones
    ADD CONSTRAINT course_content_dones_pkey PRIMARY KEY (id);


--
-- TOC entry 2975 (class 2606 OID 24862)
-- Name: course_content_files course_content_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_files
    ADD CONSTRAINT course_content_files_pkey PRIMARY KEY (id);


--
-- TOC entry 2965 (class 2606 OID 24780)
-- Name: course_contents course_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_contents
    ADD CONSTRAINT course_contents_pkey PRIMARY KEY (id);


--
-- TOC entry 2957 (class 2606 OID 24740)
-- Name: course_modules course_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_modules
    ADD CONSTRAINT course_modules_pkey PRIMARY KEY (id);


--
-- TOC entry 2961 (class 2606 OID 24757)
-- Name: course_students course_students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_students
    ADD CONSTRAINT course_students_pkey PRIMARY KEY (id);


--
-- TOC entry 2953 (class 2606 OID 24720)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- TOC entry 2945 (class 2606 OID 24650)
-- Name: domain_staff domain_staff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_staff
    ADD CONSTRAINT domain_staff_pkey PRIMARY KEY (id);


--
-- TOC entry 2951 (class 2606 OID 24698)
-- Name: domain_support_messages domain_support_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_support_messages
    ADD CONSTRAINT domain_support_messages_pkey PRIMARY KEY (id);


--
-- TOC entry 2949 (class 2606 OID 24675)
-- Name: domain_supports domain_supports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_supports
    ADD CONSTRAINT domain_supports_pkey PRIMARY KEY (id);


--
-- TOC entry 2981 (class 2606 OID 24898)
-- Name: domain_users domain_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_users
    ADD CONSTRAINT domain_users_pkey PRIMARY KEY (id);


--
-- TOC entry 2941 (class 2606 OID 24642)
-- Name: domains domains_domain_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domains
    ADD CONSTRAINT domains_domain_name_unique UNIQUE (domain_name);


--
-- TOC entry 2943 (class 2606 OID 24635)
-- Name: domains domains_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domains
    ADD CONSTRAINT domains_pkey PRIMARY KEY (id);


--
-- TOC entry 2979 (class 2606 OID 24885)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 2933 (class 2606 OID 24604)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2935 (class 2606 OID 24606)
-- Name: roles roles_role_key_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_key_unique UNIQUE (role_key);


--
-- TOC entry 2985 (class 2606 OID 24919)
-- Name: timelines_files timelines_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines_files
    ADD CONSTRAINT timelines_files_pkey PRIMARY KEY (id);


--
-- TOC entry 2973 (class 2606 OID 24822)
-- Name: timelines timelines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines
    ADD CONSTRAINT timelines_pkey PRIMARY KEY (id);


--
-- TOC entry 2971 (class 2606 OID 24797)
-- Name: course_content_dones uk_course_content_dones_content_student; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_dones
    ADD CONSTRAINT uk_course_content_dones_content_student UNIQUE (course_content_id, course_student_id);


--
-- TOC entry 2977 (class 2606 OID 24864)
-- Name: course_content_files uk_course_content_files_content_title; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_files
    ADD CONSTRAINT uk_course_content_files_content_title UNIQUE (course_content_id, title);


--
-- TOC entry 2967 (class 2606 OID 24782)
-- Name: course_contents uk_course_contents_module_title; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_contents
    ADD CONSTRAINT uk_course_contents_module_title UNIQUE (course_module_id, title);


--
-- TOC entry 2959 (class 2606 OID 24742)
-- Name: course_modules uk_course_modules_course_title; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_modules
    ADD CONSTRAINT uk_course_modules_course_title UNIQUE (course_id, title);


--
-- TOC entry 2963 (class 2606 OID 24759)
-- Name: course_students uk_course_students_course_student_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_students
    ADD CONSTRAINT uk_course_students_course_student_id UNIQUE (course_id, student_id);


--
-- TOC entry 2955 (class 2606 OID 24722)
-- Name: courses uk_courses_domain_title; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT uk_courses_domain_title UNIQUE (domain_id, title);


--
-- TOC entry 2947 (class 2606 OID 24652)
-- Name: domain_staff uk_domain_staff_domain_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_staff
    ADD CONSTRAINT uk_domain_staff_domain_user UNIQUE (domain_id, user_id);


--
-- TOC entry 2983 (class 2606 OID 24900)
-- Name: domain_users uk_domain_users_domain_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_users
    ADD CONSTRAINT uk_domain_users_domain_user UNIQUE (user_id, domain_id);


--
-- TOC entry 2937 (class 2606 OID 24616)
-- Name: user_roles uk_user_roles_user_role; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT uk_user_roles_user_role UNIQUE (user_id, role_id);


--
-- TOC entry 2939 (class 2606 OID 24614)
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2929 (class 2606 OID 24595)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 2931 (class 2606 OID 24593)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3001 (class 2606 OID 24798)
-- Name: course_content_dones fk_course_content_dones_content_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_dones
    ADD CONSTRAINT fk_course_content_dones_content_id FOREIGN KEY (course_content_id) REFERENCES public.course_contents(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3002 (class 2606 OID 24803)
-- Name: course_content_dones fk_course_content_dones_studnet_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_dones
    ADD CONSTRAINT fk_course_content_dones_studnet_id FOREIGN KEY (course_student_id) REFERENCES public.course_students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3009 (class 2606 OID 24865)
-- Name: course_content_files fk_course_content_files_content_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_content_files
    ADD CONSTRAINT fk_course_content_files_content_id FOREIGN KEY (course_content_id) REFERENCES public.course_contents(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3000 (class 2606 OID 24783)
-- Name: course_contents fk_course_contents_module_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_contents
    ADD CONSTRAINT fk_course_contents_module_id FOREIGN KEY (course_module_id) REFERENCES public.course_modules(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2997 (class 2606 OID 24743)
-- Name: course_modules fk_course_modules_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_modules
    ADD CONSTRAINT fk_course_modules_course_id FOREIGN KEY (course_id) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2998 (class 2606 OID 24760)
-- Name: course_students fk_course_students_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_students
    ADD CONSTRAINT fk_course_students_course_id FOREIGN KEY (course_id) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2999 (class 2606 OID 24765)
-- Name: course_students fk_course_students_student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_students
    ADD CONSTRAINT fk_course_students_student_id FOREIGN KEY (student_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2996 (class 2606 OID 24728)
-- Name: courses fk_courses_created_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT fk_courses_created_user_id FOREIGN KEY (created_user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2995 (class 2606 OID 24723)
-- Name: courses fk_courses_domain_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT fk_courses_domain_id FOREIGN KEY (domain_id) REFERENCES public.domains(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2989 (class 2606 OID 24653)
-- Name: domain_staff fk_domain_staff_domains; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_staff
    ADD CONSTRAINT fk_domain_staff_domains FOREIGN KEY (domain_id) REFERENCES public.domains(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2990 (class 2606 OID 24658)
-- Name: domain_staff fk_domain_staff_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_staff
    ADD CONSTRAINT fk_domain_staff_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2993 (class 2606 OID 24699)
-- Name: domain_support_messages fk_domain_support_messages_domain_support; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_support_messages
    ADD CONSTRAINT fk_domain_support_messages_domain_support FOREIGN KEY (domain_support_id) REFERENCES public.domain_supports(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2994 (class 2606 OID 24704)
-- Name: domain_support_messages fk_domain_support_messages_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_support_messages
    ADD CONSTRAINT fk_domain_support_messages_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2991 (class 2606 OID 24676)
-- Name: domain_supports fk_domain_supports_domain_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_supports
    ADD CONSTRAINT fk_domain_supports_domain_id FOREIGN KEY (domain_id) REFERENCES public.domains(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2992 (class 2606 OID 24681)
-- Name: domain_supports fk_domain_supports_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_supports
    ADD CONSTRAINT fk_domain_supports_user_id FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3012 (class 2606 OID 24906)
-- Name: domain_users fk_domain_users_domains; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_users
    ADD CONSTRAINT fk_domain_users_domains FOREIGN KEY (domain_id) REFERENCES public.domains(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3011 (class 2606 OID 24901)
-- Name: domain_users fk_domain_users_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domain_users
    ADD CONSTRAINT fk_domain_users_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2988 (class 2606 OID 24636)
-- Name: domains fk_domains_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domains
    ADD CONSTRAINT fk_domains_user FOREIGN KEY (owner_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3010 (class 2606 OID 24886)
-- Name: notifications fk_notifications_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_notifications_user_id FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3003 (class 2606 OID 24823)
-- Name: timelines fk_timelines_content_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines
    ADD CONSTRAINT fk_timelines_content_id FOREIGN KEY (course_content_id) REFERENCES public.course_contents(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3004 (class 2606 OID 24828)
-- Name: timelines fk_timelines_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines
    ADD CONSTRAINT fk_timelines_course_id FOREIGN KEY (course_id) REFERENCES public.courses(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3008 (class 2606 OID 24848)
-- Name: timelines fk_timelines_disabled_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines
    ADD CONSTRAINT fk_timelines_disabled_user_id FOREIGN KEY (disabled_user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3005 (class 2606 OID 24833)
-- Name: timelines fk_timelines_domain_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines
    ADD CONSTRAINT fk_timelines_domain_id FOREIGN KEY (domain_id) REFERENCES public.domains(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3013 (class 2606 OID 24920)
-- Name: timelines_files fk_timelines_files_timeline_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines_files
    ADD CONSTRAINT fk_timelines_files_timeline_id FOREIGN KEY (timeline_id) REFERENCES public.timelines(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3007 (class 2606 OID 24843)
-- Name: timelines fk_timelines_reply; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines
    ADD CONSTRAINT fk_timelines_reply FOREIGN KEY (reply_timeline_id) REFERENCES public.timelines(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3006 (class 2606 OID 24838)
-- Name: timelines fk_timelines_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timelines
    ADD CONSTRAINT fk_timelines_user_id FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2987 (class 2606 OID 24622)
-- Name: user_roles fk_user_roles_role; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fk_user_roles_role FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2986 (class 2606 OID 24617)
-- Name: user_roles fk_user_roles_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fk_user_roles_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2021-12-07 17:49:13

--
-- PostgreSQL database dump complete
--